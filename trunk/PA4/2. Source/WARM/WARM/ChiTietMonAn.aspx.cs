using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data;
using System.Collections;

namespace WARM
{
    public partial class ChiTietMonAn : System.Web.UI.Page
    {
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            //rptPages.ItemCommand += new RepeaterCommandEventHandler(rptPages_ItemCommand);
            if (Session["nResult"] == null)
                Session["nResult"] = 3;
        }
        int req;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            MONAN mon = new MONAN();
            if (!Page.IsPostBack)
            {          
                if (Request.QueryString["id"] != null)
                    req = int.Parse(Request.QueryString["id"]);
                List<MONAN> dsMon = new List<MONAN>();
                mon = MonAnDAO.TimMon(req);
                dsMon.Add(mon);
                PagedDataSource pgitems = new PagedDataSource();
                DataView dv = new DataView();
                pgitems.DataSource = dsMon;
                pgitems.AllowPaging = true;
                pgitems.CurrentPageIndex = PageNumber;
                if (pgitems.PageCount > 1)
                {
                    rptPages.Visible = true;
                    ArrayList pages = new ArrayList();
                    for (int i = 0; i < pgitems.PageCount; i++)
                        pages.Add((i + 1).ToString());
                    rptPages.DataSource = pages;
                    rptPages.DataBind();
                }
                else
                    rptPages.Visible = false;
                rptItems.DataSource = pgitems;
                rptItems.DataBind();
            }
        }
    }
}