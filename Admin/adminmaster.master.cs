using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["adminUsername"] == null)
        //{
        //    Response.Redirect("Default.aspx");

        //}
        date.Text = Convert.ToString(DateTime.Now);

    }
    //protected void Page_UnLoad(object sender, EventArgs e)
    //{
    //    Session.Abandon();
       

    //}
    admin_infoBO admin_info = new admin_infoBO();
    AdminLoginBAL adminloginbal = new AdminLoginBAL();

    protected void changepass_Click(object sender, EventArgs e)
    {
        //admin_info.password = cp.Value;
        //admin_info.admin_id = Convert.ToInt32(Session["adminUsername"].ToString());

        ////if (np.Value != np1.Value)
        ////{
        ////    Response.Write("New Password are not same");

        ////}
        ////else 
        //if (adminloginbal.adminlogincheck(admin_info) == false)
        //{
        //    Response.Write("Old password not match");

        //}
        //else
        //{
        //    admin_info.password = np.Value;
        //    admin_info.admin_id= Convert.ToInt32(Session["adminUsername"].ToString());

        //    adminloginbal.changepass(admin_info);
        //    Response.Write("Password change Successfully");

        //}
    }
}
