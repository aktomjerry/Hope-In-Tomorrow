using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   email_subscriberBAL embal = new email_subscriberBAL();
        email_subscriberBO embol = new email_subscriberBO();

        protected void datatable()
        {

        }
    protected void all_user_change(object sender, EventArgs e)
    {
       
    }

    protected void Bloggers_CheckedChanged(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string abc = GridView1.SelectedRow.Cells[1].Text;
        try
        {

            embol.subscription_id = Convert.ToInt32(abc);
            embal.email_subs_delete(embol);
            Response.Write("<script>alert('Data deleted successfully " + abc+"');</script>");
            DataTable dt = embal.email_subsc();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ee)
        {
            Response.Write("<script>alert('"+ ee.ToString()+"');</script>");
        }
     
    }
    protected void email_subs_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = embal.email_subsc();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch
        {
            throw;
        }

    }
}