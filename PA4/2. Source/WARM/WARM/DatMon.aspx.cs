using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data;
using System.Collections;
using System.Globalization;
using System.Drawing;

namespace WARM
{
    public partial class DatMon : System.Web.UI.Page
    {
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
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string req = string.Empty;
                if (Request.QueryString["s"] != null)
                    req = Request.QueryString["s"].ToString();
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
                bind();
                TinhTongTien();
            }
        }        
        private void LoadData(int nResult, List<MONAN> dsMon)
        {
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
            int nResult = int.Parse(ddlSoKetQua.SelectedItem.Value);
            LoadData(nResult, MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, true));
        }

        protected void ddlSoKetQua_SelectedIndexChanged(object sender, EventArgs e)
        {
            PageNumber = 0;
            int nResult = int.Parse(ddlSoKetQua.SelectedItem.Value);
            Session["nResult"] = nResult;
            if (!hpAName.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, true));
            else if (!hpDName.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoTen(maDanhMucMonAn, false));
            else if (!hpAPrice.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, true));
            else if (!hpDPrice.Enabled)
                LoadData(nResult, MonAnDAO.LayDanhSachSapTheoGia(maDanhMucMonAn, false));
            //LoadData(nResult, MonAnDAO.LayDanhSach(maDanhMucMonAn));
        }
        private static List<CHITIETPHIEU> ChiTietPhieus;

        private void bind()
        {
            if (Session["ChiTietPhieu"] != null)
            {
                ChiTietPhieus = (List<CHITIETPHIEU>)Session["ChiTietPhieu"];
            }
            else
            {
                ChiTietPhieus = new List<CHITIETPHIEU>();
                Session["ChiTietPhieu"] = ChiTietPhieus;
            }
            GridView1.DataSource = ChiTietPhieus;
            GridView1.DataBind();
        }
        private void TinhTongTien()
        {
            if (Session["ChiTietPhieu"] != null)
            {
                ChiTietPhieus = (List<CHITIETPHIEU>)Session["ChiTietPhieu"];
            }
            else
            {
                ChiTietPhieus = new List<CHITIETPHIEU>();
                Session["ChiTietPhieu"] = ChiTietPhieus;
            }
            Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = 0;
            foreach (CHITIETPHIEU c in ChiTietPhieus)
            {
                TongTien += c.SoLuong.Value * c.MONAN.Gia.Value;
            }

            if (TongTien == 0)
                hpHoanTatDatMon.Visible = false;
            else
                hpHoanTatDatMon.Visible = true;

            l.Text = TongTien.ToString("0,000");
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView1.EditIndex = e.NewEditIndex;
            bind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox tbSoLuong = GridView1.Rows[e.RowIndex].FindControl("tbSoLuong") as TextBox;
            int SoLuongMoi = int.Parse(tbSoLuong.Text);
            ChiTietPhieus[e.RowIndex].SoLuong = SoLuongMoi;
            GridView1.EditIndex = -1;

            TinhTongTien();

            bind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Tính tổng tiền
            Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number);
            TongTien -= ChiTietPhieus[e.RowIndex].MONAN.Gia.Value * ChiTietPhieus[e.RowIndex].SoLuong.Value;
            l.Text = TongTien.ToString("0,000");

            ChiTietPhieus.RemoveAt(e.RowIndex);
            bind();

            if (TongTien == 0)
                hpHoanTatDatMon.Visible = false;
            else
                hpHoanTatDatMon.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Xử lý khi người đặt món
            TextBox t = (sender as Button).Parent.Controls[3] as TextBox;
            HiddenField h = (sender as Button).Parent.Controls[9] as HiddenField;
            int SoLuongMon = int.Parse(t.Text);
            MONAN m = MonAnDAO.TimMon(int.Parse(h.Value));

            if (Session["ChiTietPhieu"] != null)
            {
                ChiTietPhieus = (List<CHITIETPHIEU>)Session["ChiTietPhieu"];
            }
            else
            {
                ChiTietPhieus = new List<CHITIETPHIEU>();
            }
            //Tăng số lượng nếu đã có
            bool bAddNew = true;
            foreach (CHITIETPHIEU c in ChiTietPhieus)
            {
                if (c.MONAN.TenMonAn == m.TenMonAn)
                {
                    c.SoLuong += SoLuongMon;
                    bAddNew = false;
                    break;
                }

            }
            //Thêm món vào phiếu
            if (bAddNew == true)
                ChiTietPhieus.Add(new CHITIETPHIEU { MONAN = m, SoLuong = SoLuongMon });
            //Tính tổng tiền            
            Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number) + m.Gia.Value * SoLuongMon;
            l.Text = TongTien.ToString("0,000");
            //Gán phiếu lại cho session
            Session["ChiTietPhieu"] = ChiTietPhieus;

            bind();

            if (TongTien == 0)
                hpHoanTatDatMon.Visible = false;
            else
                hpHoanTatDatMon.Visible = true;
        }
        protected void ButtonTang_Click(object sender, EventArgs e)
        {
            TextBox t = (sender as ImageButton).Parent.Controls[3] as TextBox;
            int SoLuong = int.Parse(t.Text);
            if (SoLuong == 99)
                SoLuong = 98;
            t.Text = (SoLuong + 1).ToString();
            

        }
        protected void ButtonGiam_Click(object sender, EventArgs e)
        {
            TextBox t = (sender as ImageButton).Parent.Controls[3] as TextBox;
            int SoLuong = int.Parse(t.Text);
            if (SoLuong < 2)
                SoLuong = 2;
            t.Text = (SoLuong - 1).ToString();
        }
        protected void DatBan_Click(object sender, EventArgs e)
        { 
            Response.Redirect("DatBan.aspx");
        }
    }
}