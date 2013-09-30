using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Change_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    admin_infoBO admin_info = new admin_infoBO();
    AdminLoginBAL adminloginbal = new AdminLoginBAL();
    protected void update_Click(object sender, EventArgs e)
    {
        admin_info.password = oldpwd.Value;
        admin_info.admin_id = Convert.ToInt32(Session["adminUsername"].ToString());

        //if (np.Value != np1.Value)
        //{
        //    Response.Write("New Password are not same");

        //}
        //else 
        if (adminloginbal.adminlogincheck(admin_info) == false)
        {
            Response.Write("<script>alert('Old password not match');</script>");

        }
        else
        {
            admin_info.password = newpwd.Value;
            admin_info.admin_id = Convert.ToInt32(Session["adminUsername"].ToString());

            adminloginbal.changepass(admin_info);
            Response.Write("<script>alert('Password change Successfully');</script>");

        }

    }
    

    
}