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
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}