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
        public List<ChiTietPhieuDatBan> ListCTPhieuDatBan;
        protected void DatBanClick(object sender, EventArgs e)
        {
            int i=new int();
            i = 0;
        }
    }

    public class ChiTietPhieuDatBan
    {
        public int MaDMBanAn;
        public string Ten;
        public int Soluong;
        ChiTietPhieuDatBan()
        {
            MaDMBanAn = 0;
            Ten = "";
            Soluong = 0;
        }
    }
}