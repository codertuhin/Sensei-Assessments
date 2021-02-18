using System;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;


namespace coopors
{

    public class HelperClass
    {

        public static long customerId = -1;
        public static long objectId = -1;
        public static long subgroupId = -1;

        //HelperClass.SMTPServer = objEmailSetting.SMTPServer;
        //HelperClass.SMTPPort = objEmailSetting.SMTPPort;
        //HelperClass.Password = objEmailSetting.Password;
        //HelperClass.DomainUsename = objEmailSetting.DomainUsename;
        //HelperClass.MailId = objEmailSetting.EmailID;
        //HelperClass.FromMailId = objEmailSetting.AlterNateEmailID


        private static string smtpServer = Database.GetValueFromAppSettings("SMTPServer");// "smtp.gmail.com";
        private static int smtpPort = 587;
        private static bool smtpSSL = Convert.ToBoolean(Convert.ToInt16( Database.GetValueFromAppSettings("EnableSsl")));
        private static string smtpEmailAddress = Database.GetValueFromAppSettings("MailServer");
        private static string smtpPassword = Database.GetValueFromAppSettings("MailServerPass");
        public static bool SendMail(string strSubject, string strBody, Attachment data, Boolean IsBodyHtml, string MailId)
        {
            bool returnValue = false;

            try
            {
                //--------------SMTP------------------------------------------------
                ContentType mimeType = new System.Net.Mime.ContentType("text/html");
                MailMessage message = new MailMessage(smtpEmailAddress, MailId);
                //  MailMessage message = new MailMessage("sujit2j8@gmail.com", "sujit2j8@gmail.com");
                message.Subject = strSubject;
                if (data != null)
                {
                    message.Attachments.Add(data);
                }
                AlternateView alternate = AlternateView.CreateAlternateViewFromString(strBody, mimeType);
                message.AlternateViews.Add(alternate);

                SmtpClient smtpClient = new SmtpClient(smtpServer);
                //   SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Credentials = CredentialCache.DefaultNetworkCredentials;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential(smtpEmailAddress, smtpPassword);
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = NetworkCred;
                smtpClient.EnableSsl = smtpSSL;
                // if gmail then                   smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtpClient.Port = Convert.ToInt32(smtpPort);
                smtpClient.Timeout = 20000;
                smtpClient.Send(message);
                returnValue = true;

            }
            catch (Exception ex)
            {
                return returnValue;
            }
            finally
            {

            }
            return returnValue;
        }

        public static bool SendMailcc(string strSubject, string strBody, Attachment data, Boolean IsBodyHtml, string MailId)
        {
            bool returnValue = false;

            try
            {
                //--------------SMTP------------------------------------------------
                ContentType mimeType = new System.Net.Mime.ContentType("text/html");
                MailMessage message = new MailMessage(smtpEmailAddress, MailId);
                message.Subject = strSubject;
                if (data != null)
                {
                    message.Attachments.Add(data);
                }
                AlternateView alternate = AlternateView.CreateAlternateViewFromString(strBody, mimeType);
                message.AlternateViews.Add(alternate);
                //message.CC.Add(new MailAddress("mahmudmia@yahoo.com"));
                message.Bcc.Add(new MailAddress("sujit_cse46@yahoo.com"));

                SmtpClient smtpClient = new SmtpClient(smtpServer);
                //   SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Credentials = CredentialCache.DefaultNetworkCredentials;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential(smtpEmailAddress, smtpPassword);
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = NetworkCred;
                smtpClient.EnableSsl = smtpSSL;
                // if gmail then                   smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtpClient.Port = Convert.ToInt32(smtpPort);
                smtpClient.Timeout = 20000;
                smtpClient.Send(message);
                returnValue = true;

            }
            catch (Exception ex)
            {
                return returnValue;

            }
            finally
            {

            }
            return returnValue;
        }



    }
}


