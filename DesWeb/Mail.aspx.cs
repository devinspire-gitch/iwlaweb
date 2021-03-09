using System;


using System.Collections.Generic;
using System.Net.Mail;
namespace DesWeb
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MailMessage feedBack = new MailMessage();
           
        feedBack.To.Add("mail@iwla.com");
          
        feedBack.From = new MailAddress(txtEmail.Text);
           
        feedBack.Subject = txtSubject.Text;

            feedBack.Body = "Sender Name: " + txtName.Text + "<br><br>Sender Email: " + txtEmail.Text + "<br><br>" + txtNote.Text + "<br><br>";
            List<Company> reqInfoCompanies = new List<Company>();
            if (Session["reqinfocom"] != null)
            {
                reqInfoCompanies = (List<Company>)Session["reqinfocom"];
                foreach (var company in reqInfoCompanies)
                {
                    feedBack.Body = feedBack.Body + "<br>" + company.Name;
                    feedBack.CC.Add(company.Email);
                }
                
            }
            feedBack.IsBodyHtml = true;
           
        SmtpClient smtp = new SmtpClient();
          
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
          
        smtp.Port = 587;
           
        smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("test@gmail.com", "test");

            //Or your Smtp Email ID and Password
          
            smtp.Send(feedBack);
           
           
        Label1.Text = "Thanks for contacting us";
        }
    }
}