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
        protected void Page_Load(object sender, EventArgs e)
        {
            rptItems.DataSource = DanhMucBanAnDAO.LayTatCa();
            rptItems.DataBind();
        }
        public List<ChiTietBan> ListChiTietBan;
        protected void DatBanClick(object sender, EventArgs e)
        {
            //Xử lý khi người đặt bàn
            TextBox t = (sender as Button).Parent.Controls[1] as TextBox;
            HiddenField h = (sender as Button).Parent.Controls[5] as HiddenField;
            int SoLuongBan = int.Parse(t.Text);
            //MONAN m = MonAnDAO.TimMon(int.Parse(h.Value));

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
                int i = 0;
            }
            //Tính tổng tiền            
            /*Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number) + m.Gia.Value * SoLuongMon;
            l.Text = TongTien.ToString("0,000");*/

            //Gán phiếu lại cho session
            Session["ChiTietBans"] = ListChiTietBan;

            bind();

            /*if (TongTien == 0)
                hpHoanTatDatMon.Visible = false;
            else
                hpHoanTatDatMon.Visible = true;*/
        }
        private void bind()
        {
            //GridView2.
            GridView1.DataSource = ListChiTietBan;
            GridView1.DataBind();
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
            TextBox tbSoLuong = GridView1.Rows[e.RowIndex].FindControl("tbSoluong") as TextBox;
            int SoLuongMoi = int.Parse(tbSoLuong.Text);
            ListChiTietBan[e.RowIndex].Soluong = SoLuongMoi;
            GridView1.EditIndex = -1;

            //TinhTongTien();

            bind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Tính tổng tiền
            /*Label l = GridView1.Parent.Controls[3] as Label;
            double TongTien = double.Parse(l.Text, NumberStyles.Number);
            TongTien -= ListChiTietBan[e.RowIndex].MONAN.Gia.Value * ChiTietPhieus[e.RowIndex].SoLuong.Value;
            l.Text = TongTien.ToString("0,000");*/

            ListChiTietBan.RemoveAt(e.RowIndex);
            bind();
            /*
            if (TongTien == 0)
                hpHoanTatDatMon.Visible = false;
            else
                hpHoanTatDatMon.Visible = true;*/
        }
    }

    public class ChiTietBan
    {
        //public int MaDMBanAn;
        public string Ten;
        public int Soluong;
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