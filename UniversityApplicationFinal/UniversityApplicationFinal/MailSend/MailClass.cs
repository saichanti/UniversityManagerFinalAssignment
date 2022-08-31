
using MimeKit;
using System.Net;
using System.Net.Mail;

namespace UniversityApplicationFinal.MailSend
{
    public class MailClass
    {
        public void SendMailMethod(string recieverMail, string url)
        {
            MimeMessage message = new MimeMessage();
            message.From.Add(new MailboxAddress("University Registration", "mosurisaikumar@gmail.com"));
            message.To.Add(MailboxAddress.Parse(recieverMail));

            message.Subject = "!!!Welcome!!!";
            message.Body = new TextPart("html")
            {
                Text = $"<p>Dear {recieverMail}, Thanks for registering with Please login using <a href={url}>Login</a></p>",
            };

            #region private data
            string email = "mosurisaikumar@gmail.com";
            string password = "Lucky@143";
            #endregion

            SmtpClient smtpClient = new SmtpClient();
            try
            {
             
                Console.WriteLine($"!!Thanks dear {recieverMail} for registration with us!!");
                Console.WriteLine($"A 'Welcome Message' is just sent to your registered mail id from '{email}'");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
              
                smtpClient.Dispose();
            }
        }

    }
}
