using coopors.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace coopors.Class
{
    public class InsertUpdate
    {
        public SenseiPortalEntities2 db;
        tblHoltState entity = new tblHoltState();
        int HoltId = 0;
        //ORM.SenseiPortalEntities1 db = new SenseiPortalEntities1();
        public void InsertUpdateHoltState(int userId, int ActiveIndex, string page)
        {
            db = new SenseiPortalEntities2();
            var State = db.tblHoltStates.Where(v => v.UserId == userId && v.PageName == page) != null ? db.tblHoltStates.Where(v => v.UserId == userId && v.PageName == page).FirstOrDefault() : null;
            if (State != null)
            {
                State.PageName = page;
                State.Holt_State = ActiveIndex;

            }
            else
            {
                entity.Holt_State = ActiveIndex;
                entity.PageName = page;
                entity.UserId = userId;
                db.tblHoltStates.Add(entity);
            }


            db.SaveChanges();
            //HoltId = db.tblQuestions.Where(v => v.ChekBoxId == CheKBoxid).FirstOrDefault().Id;
            //entity.Holt_State = HoltId;
            //entity.UserId = userId.ToString();
            //db.tblHoltStates.Add(entity);
            //db.SaveChanges();
        }
        public void DeleteHolt(int UserId, string page)
        {
            db = new SenseiPortalEntities2();
            entity = db.tblHoltStates.Where(v => v.UserId == UserId && v.PageName == page).FirstOrDefault();
            if (entity == null)
                return;
            db.tblHoltStates.Attach(entity);
            db.tblHoltStates.Remove(entity);
            db.SaveChanges();
        }

        public void InsertQuestion(int UserId, string page, string controlId, int answer)
        {
            db = new SenseiPortalEntities2();
            AnswerState answerState = new AnswerState();
            var ans = db.AnswerStates.Where(v => v.UserId == UserId && v.Page == page && v.ControlId == controlId).FirstOrDefault();
            if (ans != null)
            {
                ans.Answer = answer;
            }
            else
            {
                answerState.Answer = answer;
                answerState.Page = page;
                answerState.ControlId = controlId;
                answerState.UserId = UserId;
                db.AnswerStates.Add(answerState);
            }
            db.SaveChanges();
        }
        public void DeleteAnsState(string page,int userId)
        {
            //AnswerState answerState = new AnswerState();
            db = new SenseiPortalEntities2();

          var answerState = db.AnswerStates.Where(v => v.UserId == userId && v.Page == page);
            foreach (AnswerState employee in answerState)
            {
                db.AnswerStates.Remove(employee);
            }
            db.SaveChanges();

        }

        public int SaveDownloads(int userid, string assessmentname, string downloadFile)
        {
            db = new SenseiPortalEntities2();
            UserReport userReport = new UserReport()
            {
                Assessment = assessmentname,
                CreationDate = DateTime.Now,
                ReportFile = downloadFile,
                UserID = userid

            };

            db.UserReports.Add(userReport);

            db.SaveChanges();

            return userReport.id;
        }

        public int UpdateDownloads(int downloadID, string couponCode)
        {
            db = new SenseiPortalEntities2();

            var download = db.UserReports.FirstOrDefault(v => v.id == downloadID);
            if (download != null)
            {
                download.Code = couponCode;
                download.IsActive = true;
            }

            var count = db.SaveChanges();

            return count;

        }

        public bool IsCouponUsed(string code, int userID)
        {
            db = new SenseiPortalEntities2();
            var couponUsed = db.UserReports.Where(v => v.Code.Equals(code) && v.UserID == userID);
            if (couponUsed.Count() > 0)
            {
                return false;
            }

            return true;
        }


    }
}