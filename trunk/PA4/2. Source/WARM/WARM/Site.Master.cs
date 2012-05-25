using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WARM
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string req = string.Empty;
                string action = string.Empty;
                if (Request.QueryString["state"] != null)
                    req = Request.QueryString["state"].ToString();
                if (Request.QueryString["q"] != null)
                    action = Request.QueryString["q"].ToString();
                if (req == "login" || (req != "logout" && Session["user"] != null))
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Session["user"] = "alice";
                }
                else if (req == "logout" || req == "")
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Session["user"] = null;
                }
                if (action == "clearorder")
                { 
                    Session["ChiTietPhieu"] = null;
                    Session["ChiTietBans"] = null;
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/TimKiem.aspx?q=" + textTim.Text);
        }
    }
}
