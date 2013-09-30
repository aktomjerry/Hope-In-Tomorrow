using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    eventsBAL eventbal = new eventsBAL();
    eventsBO eventbo = new eventsBO();
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            eventbo.admin_id = Convert.ToInt32(Session["adminUsername"].ToString());
            eventbo.date_time_of_post = DateTime.Now;
            eventbo.event_desc = event_descp.Text;
            eventbo.event_title = event_title.Value;
            eventbo.event_place = event_place.Value;
            eventbo.event_time = Convert.ToDateTime(event_date.Text + event_time.Value);
            GET_MAX_VALUE abc = new GET_MAX_VALUE();
            eventbo.event_pic = "c:abc";
            eventbo.event_id = abc.getMAX_VALUE("event_id", "events");
            if (eventbal.events_BAL_create(eventbo) >= 1)
                Response.Write("<script>alert('Data inserted Successfully');</script>");
            else
                Response.Write("<script>alert('Data insertion get Failed');</script>");
        }
        catch (Exception ee)
        {
            Response.Write(ee);
        }
    }
}