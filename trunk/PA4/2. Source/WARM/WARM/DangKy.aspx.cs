using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WARM
{
    public partial class DangKy : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void txtNPass_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            if (DAO.NguoiDungDAO.KiemTraTenDangNhapTonTai(txtNTen.Text.Trim()))
                LabelNTen.Text = " Tên đăng nhập đã tồn tại.";
            else
                LabelNTen.Text = " Tên đăng nhập có thể sử dụng";
        }

       
    }
}