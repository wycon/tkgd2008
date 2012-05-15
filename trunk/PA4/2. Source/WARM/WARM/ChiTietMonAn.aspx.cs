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
        static int req;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            MONAN mon = new MONAN();
            if (!Page.IsPostBack)
            {          
                if (Request.QueryString["id"] != null)
                    req = int.Parse(Request.QueryString["id"]);
                List<MONAN> dsMon = new List<MONAN>();
                List<BINHLUAN> dsBl = new List<BINHLUAN>();
                mon = MonAnDAO.TimMon(req);
                dsMon.Add(mon);
                dsBl = BinhLuanDAO.LayDanhSach(req);
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
            if (textten.Text == "")
                Literal1.Visible = true;
            if(textnoidung.Text == "")
                Literal3.Visible = true;
            if(Request.Form["star2"] == null)
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
                Response.Redirect("~/ChiTietMonAn.aspx");
            }
        }
    }
}