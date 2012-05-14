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
            if (!IsPostBack)
            {
                Session["NPass"] = txtNPass.Text;
                Session["NRePass"] = txtNRePass.Text;
            }
            else
            {
                txtNPass.Text = Session["NPass"].ToString();
                txtNRePass.Text= Session["NRePass"].ToString();
            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            if (!txtNRePass.Equals(txtNPass))
            {
                LabelRePass.Text = " Mật khẩu nhập lại không trùng khớp.";
                LabelRePass.DataBind();
            }

        }

        protected void txtNPass_TextChanged(object sender, EventArgs e)
        {
            if (txtNPass.Text.Length < 8)
                LabelNPass.Text = " Mật khẩu phải dài từ 8 -32 ký tự.";
            else
            {
                LabelNPass.Text = "Mật khẩu hợp lệ";
            }
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