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

namespace WARM
{
    public partial class DatBan : System.Web.UI.Page
    {
        public static List<CHITIETPHIEU> ChiTietPhieus;
        protected void Page_Load(object sender, EventArgs e)
        {
            rptItems.DataSource = DanhMucBanAnDAO.LayTatCa();
            rptItems.DataBind();           
            if (!Page.IsPostBack)
            {               
                bind();
                bind2();
            }
            if (Session["ChiTietPhieu"] != null)
            {
                //ChiTietPhieus = (List<CHITIETPHIEU>)Session["ChiTietPhieu"];
                TinhTongTien1Ban();
                TinhTongTien();
            }
        }
        //Xu ly phieu dat ban
        public static List<ChiTietBan> ListChiTietBan;
        protected void DatBanClick(object sender, EventArgs e)
        {
            //Xử lý khi người đặt bàn
            TextBox t = (sender as Button).Parent.Controls[1] as TextBox;
            HiddenField h = (sender as Button).Parent.Controls[5] as HiddenField;
            int SoLuongBan = int.Parse(t.Text);
            

            if (Session["ChiTietBans"] != null)
            {
                ListChiTietBan = (List<ChiTietBan>)Session["ChiTietBans"];
            }
            else
            {
                ListChiTietBan = new List<ChiTietBan>();
            }
            //Tăng số lượng nếu đã có
            bool bAddNew = true;
            for( int i=0; i<ListChiTietBan.Count;i++)
                if (ListChiTietBan[i].Ten == h.Value)
                {
                    ListChiTietBan[i].Soluong += SoLuongBan;
                    bAddNew = false;
                    break;
                }
            //Thêm bàn vào phiếu
            try
            {
                if (bAddNew == true)
                    ListChiTietBan.Add(new ChiTietBan(h.Value, SoLuongBan));
            }
            catch (Exception ex)
            {
                //int i = 0;
            }
            TinhTongTien();

            //Gán phiếu lại cho session
            //Session["ChiTietBans"] = ListChiTietBan;
            //Session["TongTien"] = l.Text;
            bind();

            /*if (int.Parse( LabTongTien.Text) == 0)
                hpHoanTatDatBan.Visible = false;
            else
                hpHoanTatDatBan.Visible = true;*/
        }
        private void bind()
        {
            
            GridView1.DataSource = ListChiTietBan;
            GridView1.DataBind();
            Session["ChiTietBans"] = ListChiTietBan;
        }
       
        private void TinhTongTien()
        {
            if (Session["ChiTietBans"] != null)
            {
                ListChiTietBan = (List<ChiTietBan>)Session["ChiTietBans"];
            }
            else
            {
                ListChiTietBan = new List<ChiTietBan>();
                Session["ChiTietBans"] = ListChiTietBan;
            }
            Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = 0;
            int soban=0;
            for (int i = 0; i < ListChiTietBan.Count; i++)
                soban += ListChiTietBan[i].Soluong;
            Label l2 = GridView2.Parent.Controls[1] as Label;
            TongTien = (double) soban * double.Parse(l2.Text);

            if (TongTien == 0)
                hpHoanTatDatBan.Visible = false;
            else
                hpHoanTatDatBan.Visible = true;
            l.Text = TongTien.ToString("0,000");
            //Session["TongTien"] = l.Text;
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
            TextBox temp = GridView1.Rows[e.RowIndex].FindControl("tbSoLuong") as TextBox;
            int SoLuongMoi = int.Parse(temp.Text);
            ListChiTietBan[e.RowIndex].Soluong = SoLuongMoi;
            GridView1.EditIndex = -1;
            TinhTongTien();
            bind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Tính tổng tiền
            Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number);
            Label l2 = GridView2.Parent.Controls[1] as Label;
            TongTien =TongTien - double.Parse(l2.Text) * ChiTietPhieus[e.RowIndex].SoLuong.Value;
            l.Text = TongTien.ToString("0,000");
            Session["TongTien"] = l.Text;
            ListChiTietBan.RemoveAt(e.RowIndex);
            bind();           
            if (TongTien == 0)
                hpHoanTatDatBan.Visible = false;
            else
                hpHoanTatDatBan.Visible = true;
        }

       //xu ly phieu dat mon
        
        private void bind2()
        {
            if (Session["ChiTietPhieu"] != null)
            {
                ChiTietPhieus = (List<CHITIETPHIEU>) Session["ChiTietPhieu"];
            }
            GridView2.DataSource = ChiTietPhieus;
            GridView2.DataBind();
            //Session["ChiTietPhieu"] = ChiTietPhieus;
        }
        private void TinhTongTien1Ban()
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
            Label l = GridView2.Parent.Controls[1] as Label;
            double TongTien = 0;
            foreach (CHITIETPHIEU c in ChiTietPhieus)
            {
                TongTien += c.SoLuong.Value * c.MONAN.Gia.Value;
            }
            l.Text = TongTien.ToString("0,000");
            //Session["TongTien1Ban"] = l.Text;
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            bind2();
        }
        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.GridView2.EditIndex = e.NewEditIndex;
            bind2();
        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox tbSoLuong2 = GridView2.Rows[e.RowIndex].FindControl("tbSoLuong2") as TextBox;
            int SoLuongMoi = int.Parse(tbSoLuong2.Text);
            ChiTietPhieus[e.RowIndex].SoLuong = SoLuongMoi;
            GridView2.EditIndex = -1;
            TinhTongTien1Ban();
            TinhTongTien();
            bind2();
        }
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Tính tổng tiền
            Label l = GridView2.Parent.Controls[1] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number);
            TongTien -= ChiTietPhieus[e.RowIndex].MONAN.Gia.Value * ChiTietPhieus[e.RowIndex].SoLuong.Value;
            l.Text = TongTien.ToString("0,000");
            TinhTongTien();
            //Session["TongTien1Ban"] = l.Text;
            ChiTietPhieus.RemoveAt(e.RowIndex);
            bind2();
        }
    }



    public class ChiTietBan
    {
        //public int MaDMBanAn;
        private string ten;

        public string Ten
        {
            get { return ten; }
            set { ten = value; }
        }
        private int soluong;

        public int Soluong
        {
            get { return soluong; }
            set { soluong = value; }
        }
        public ChiTietBan()
        {
            //MaDMBanAn = 0;
            Ten = "";
            Soluong = 0;
        }
        public ChiTietBan(String t, int s)
        {
            
            Ten = t;
            Soluong = s;
        }
    }
}