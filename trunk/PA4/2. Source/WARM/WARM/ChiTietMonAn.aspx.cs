using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data;
using System.Collections;
using System.Text;
using System.Drawing;
namespace WARM
{
    public partial class ChiTietMonAn : System.Web.UI.Page
    {
        static int req;
        static bool isClick = false;
        public int yourvar { get; set; }
        static List<BINHLUAN> dsBl = new List<BINHLUAN>();
        protected void Page_Load(object sender, EventArgs e)
        {
            MONAN mon = new MONAN();
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                    req = int.Parse(Request.QueryString["id"]);
                //req = 1;
                List<MONAN> dsMon = new List<MONAN>();
                
                mon = MonAnDAO.TimMon(req);
                dsMon.Add(mon);

                dsBl = BinhLuanDAO.LayDanhSach(req);
                if (isClick == false)
                {
                    dsBl.Reverse();
                    LinkButton1.Enabled = false;
                    LinkButton1.ForeColor = Color.Black;
                    LinkButton1.ControlStyle.Font.Bold = true;
                }
                else
                {
                    LinkButton2.Enabled = false;
                    LinkButton2.ForeColor = Color.Black;
                    LinkButton2.ControlStyle.Font.Bold = true;

                }
                yourvar = dsBl.Count;
                //Response.Write("dem");
                PagedDataSource pgitems = new PagedDataSource();
                PagedDataSource pgitems1 = new PagedDataSource();
                DataView dv = new DataView();
                pgitems.DataSource = dsMon;
                pgitems.AllowPaging = true;
                pgitems1.DataSource = dsBl;
                pgitems1.AllowPaging = true;

                rptItems.DataSource = pgitems;
                rptItems.DataBind();
                rptItems2.DataSource = pgitems1;
                rptItems2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Form["star2"] == null)
                Literal2.Visible = true;
            else
            {
                BINHLUAN bl = new BINHLUAN();
                bl.NguoiBinhLuan = textten.Text;
                bl.DanhGia = int.Parse(Request.Form["star2"]);
                bl.NoiDung = textnoidung.Text;
                bl.DaXoa = false;
                bl.MaMonAn = req;
                bl.ThoiGian = DateTime.Now;
                BinhLuanDAO.ThemLoiBinh(bl);
                isClick = false;
                Response.Redirect("~/ChiTietMonAn.aspx");
            }
        }
        protected void DatMon_Click(object sender, EventArgs e)
        {
            List<CHITIETPHIEU> ChiTietPhieus;
            //Xử lý khi người đặt món
            TextBox t = (sender as Button).Parent.Controls[1] as TextBox;
            HiddenField h = (sender as Button).Parent.Controls[5] as HiddenField;
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

            //Gán phiếu lại cho session
            Session["ChiTietPhieu"] = ChiTietPhieus;            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.Enabled = true;
            LinkButton2.ForeColor = Color.Blue;
            LinkButton2.ControlStyle.Font.Bold = false;
            dsBl.Reverse();
            PagedDataSource pgitems = new PagedDataSource();
            PagedDataSource pgitems1 = new PagedDataSource();
            DataView dv = new DataView();

            pgitems1.DataSource = dsBl;
            pgitems1.AllowPaging = true;

            rptItems2.DataSource = pgitems1;
            rptItems2.DataBind();

            LinkButton1.Enabled = false;
            LinkButton1.ForeColor = Color.Black;
            LinkButton1.ControlStyle.Font.Bold = true;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            isClick = true;
            LinkButton1.Enabled = true;
            LinkButton1.ForeColor = Color.Blue;
            LinkButton1.ControlStyle.Font.Bold = false;
            dsBl.Reverse();
            PagedDataSource pgitems = new PagedDataSource();
            PagedDataSource pgitems1 = new PagedDataSource();
            DataView dv = new DataView();
            pgitems1.DataSource = dsBl;
            pgitems1.AllowPaging = true;

            rptItems2.DataSource = pgitems1;
            rptItems2.DataBind();

            LinkButton2.Enabled = false;
            LinkButton2.ForeColor = Color.Black;
            LinkButton2.ControlStyle.Font.Bold = true;
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
    }
}