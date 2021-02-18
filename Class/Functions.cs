using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Threading.Tasks;

namespace coopors.Class
{
    public class Functions
    {
        public static void SendEmail(string subject, string body, string to, string attachedFile = "")
        {

            try

            {
                Task task = new Task(() =>
                {

                    var mail = new MailMessage();
                    var smtpServer = new SmtpClient("relay-hosting.secureserver.net");


                    mail.From = new MailAddress("info@sensei-assessments.com", "Sensei-Assessments");

                    mail.To.Add(to);

                    //mail.Bcc.Add("codertuhin@gmail.com");

                    mail.Body = body;
                    mail.Subject = subject;

                    mail.IsBodyHtml = true;


                    if (!string.IsNullOrEmpty(attachedFile))
                        mail.Attachments.Add(new Attachment(attachedFile));

                    smtpServer.Port = 25;
                    smtpServer.EnableSsl = false;

                    smtpServer.Send(mail);


                });

                task.Start();

            }

            catch (Exception ex)
            {

            }
        }
    }
}