using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    AdminLoginBAL alb = new AdminLoginBAL();
    admin_infoBO admin_info = new admin_infoBO();

   


    protected void login_Click(object sender, EventArgs e)
    {
        
    }
    protected void login(object sender, EventArgs e)
    {
        try
        {
            admin_info.admin_id = Convert.ToInt32(user_name.Value);
            admin_info.password = password.Value;

            if (alb.adminlogincheck(admin_info) == true)
            {
                Session["adminUsername"] = user_name.Value;
                Response.Redirect("Home.aspx", false);
            }
            else
            {
               //msg.Text="Login id or password must be wrong";
               Response.Write("<script>alert('Login id or password must be wrong');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error Occured')</script>");
        }
    }
}