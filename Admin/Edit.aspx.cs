using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class Admin_Edit : System.Web.UI.Page

{

    email_subscriberBAL embal = new email_subscriberBAL();
    email_subscriberBO embol = new email_subscriberBO();
    protected void Page_Load(object sender, EventArgs e)
    {
    //    try
    //    {
    //        DataTable dt = embal.email_subsc();

    //        s_id_dd.DataSource = dt;
    //        s_id_dd.DataTextField = "subscription_id";
    //        s_id_dd.DataBind();
    //    }
    //    catch
    //    {
    //        throw;
    //    }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        try
        {
            embol.subscription_id = Convert.ToInt32(s_id_dd.Text);
            embol.email_id = email_id.Value;
            embol.name = name.Value;
            embal.email_subs_update(embol);
           detail.Text = "Data Updated Successfully";
        }
        catch (Exception ee)
        {
            //detail.Text = ee.ToString();
        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From =new MailAddress("hitnoreplymail@gmail.com");
            // Recipient e-mail address.
            Msg.To.Add("ykcir.deep@gmail.com");
            Msg.Subject = "Checking dat mail send......";
            Msg.Body = "yup you got the msg....";
            // your remote SMTP server IP.
            //SmtpMail.SmtpServer = "10.20.72.1";
            smtp.Send(Msg);
            Msg = null;
           // Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='SendMail.aspx';}</script>");
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
}