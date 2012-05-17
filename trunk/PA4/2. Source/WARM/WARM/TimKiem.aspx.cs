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
    public partial class TimKiem : System.Web.UI.Page
    {
        public int yourvar { get; set; }

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
            rptPages.ItemCommand += new RepeaterCommandEventHandler(rptPages_ItemCommand);
            if (Session["nResult"] == null)
                Session["nResult"] = 5;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string req = string.Empty;
                if (Request.QueryString["s"] != null)
                    req = Request.QueryString["s"].ToString();
                if(req == "aname")
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoTen(4, true));
                else if (req == "dname")
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoTen(4, false));
                else if (req == "aprice")
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoGia(4, true));
                else if (req == "dprice")
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoGia(4, false));
                else
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSach(4));

                ddlSoKetQua.SelectedValue = Session["nResult"].ToString();
            }
        }
        private void LoadData(int nResult, List<MONAN> dsMon)
        {
            //List<BINHLUAN> dsBl = new List<BINHLUAN>();
            PagedDataSource pgitems = new PagedDataSource();
            DataView dv = new DataView();
            pgitems.DataSource = dsMon;
            pgitems.AllowPaging = true;
            pgitems.PageSize = nResult;
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
        public void rptPages_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            LoadData(int.Parse(ddlSoKetQua.SelectedItem.Value),  MonAnDAO.LayDanhSach(4));
        }

        protected void ddlSoKetQua_SelectedIndexChanged(object sender, EventArgs e)
        {
            PageNumber = 0;
            int nResult = int.Parse(ddlSoKetQua.SelectedItem.Value);
            Session["nResult"] = nResult;
            LoadData(nResult, MonAnDAO.LayDanhSach(4));
        }
    }
}