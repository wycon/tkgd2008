using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data;
using System.Collections;
using System.Drawing;

namespace WARM
{
    public partial class TimKiem : System.Web.UI.Page
    {
        public string yourvar { get; set; }
        public int nResultVar { get; set; }
        public int maDanhMucMonAn = 4;
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
            nResultVar = 5;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string req = string.Empty;
                if (Request.QueryString["s"] != null)
                    req = Request.QueryString["s"].ToString();
                if (Request.QueryString["q"] != null)
                {
                    yourvar = Request.QueryString["q"].ToString();
                    Session["q"] = yourvar;
                }
                else
                    yourvar = Session["q"].ToString();
                if (req == "aname")
                {
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, true));
                    hpAName.Enabled = false;
                    hpAName.ControlStyle.Font.Bold = true;
                    hpAName.ForeColor = Color.Black;
                    hpDName.Enabled = true;
                    hpAPrice.Enabled = true;
                    hpDPrice.Enabled = true;
                }
                else if (req == "dname")
                {
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, false));
                    hpAName.Enabled = true;
                    hpDName.Enabled = false;
                    hpDName.ControlStyle.Font.Bold = true;
                    hpDName.ForeColor = Color.Black;
                    hpAPrice.Enabled = true;
                    hpDPrice.Enabled = true;
                }
                else if (req == "aprice")
                {
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, true));
                    hpAName.Enabled = true;
                    hpDName.Enabled = true;
                    hpAPrice.Enabled = false;
                    hpAPrice.ControlStyle.Font.Bold = true;
                    hpAPrice.ForeColor = Color.Black;
                    hpDPrice.Enabled = true;
                }
                else if (req == "dprice")
                {
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, false));
                    hpAName.Enabled = true;
                    hpDName.Enabled = true;
                    hpAPrice.Enabled = true;
                    hpDPrice.Enabled = false;
                    hpDPrice.ControlStyle.Font.Bold = true;
                    hpDPrice.ForeColor = Color.Black;
                }
                else
                {
                    LoadData(int.Parse(Session["nResult"].ToString()), MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, true));
                    hpAName.Enabled = false;
                    hpAName.ControlStyle.Font.Bold = true;
                    hpAName.ForeColor = Color.Black;
                    hpDName.Enabled = true;
                    hpAPrice.Enabled = true;
                    hpDPrice.Enabled = true;
                }

                ddlSoKetQua.SelectedValue = Session["nResult"].ToString();
            }
        }
        private void LoadData(int nResult, List<MONAN> dsMon)
        {
            //List<BINHLUAN> dsBl = new List<BINHLUAN>();
            for (int i = 0; i < dsMon.Count; i++)
            {
                dsMon[i].MoTa = dsMon[i].MoTa.Substring(0, 125) + "...";
            }
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
            yourvar = Session["q"].ToString();
            nResultVar = nResult;
            if (!hpAName.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, true));
            else if (!hpDName.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, false));
            else if (!hpAPrice.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, true));
            else if (!hpDPrice.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, false));
        }
    }
}