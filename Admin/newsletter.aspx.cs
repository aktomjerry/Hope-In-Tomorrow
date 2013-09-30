using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Admin_newsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {

            //send email
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("ykcir.deep@gmail.com", "Project Allocation System");
            msg.To.Add(new MailAddress("ykcir.deep@hotmail.com"));
           

            //if (newsletter_attachment.PostedFile.ContentLength > 0)
            //{
            //    Attachment attachment = new Attachment(Path.GetFullPath(newsletter_attachment.PostedFile.FileName));
            //    msg.Attachments.Add(attachment);
            //}


            //msg.Subject = txtSubject.Text;
            //msg.Body = Editor1.Content;
            //msg.IsBodyHtml = true;

            //SmtpClient setp = new SmtpClient();
            //setp.Host = "smtp.gmail.com";
            //setp.Port = 587;
            //setp.UseDefaultCredentials = true;
            //setp.Credentials = new NetworkCredential("projectallocationsystem@gmail.com", "*************");

            //setp.EnableSsl = true;

            //setp.Send(msg);

            //lblMessage.Text = "Please Check your mail.";
            //lblMessage.CssClass = "alert alert-success";
        }
        catch (Exception err)
        {
            //lblMessage.Text = "Error: " + err.Message;
            //lblMessage.CssClass = "alert alert-error";
        }
    }
    }
