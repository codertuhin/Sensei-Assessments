using System;
using System.IO;
using System.Linq;
using System.Net.Mail;

namespace coopors
{
    public class Basics
    {
        public static int email_send(string fileName, string subject, string body, string recepientEmail, string ErrorFilePath)
        {
            try
            {


                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.office365.com");
                mail.From = new MailAddress("report@sensei-assessments.com", "Sensei-Assessments Report");

                mail.To.Add("codertuhin@hotmail.com");
                mail.To.Add(recepientEmail);
                //mail.To.Add("info@sensei-wisdom.com");

                //mail.To.Add("prarthana@sensei-international.com");

                mail.Subject = subject;
                mail.Body = body;

                System.Net.Mail.Attachment attachment;
                attachment = new System.Net.Mail.Attachment(fileName);
                mail.Attachments.Add(attachment);

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("report@sensei-assessments.com", "Sensei1@3");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

                return 1;
            }
            catch (Exception ex)
            {
                File.AppendAllText(ErrorFilePath, ex.Message + "\n" + ex.InnerException.Message);

                



                return 0;
            }

        }

    }
}