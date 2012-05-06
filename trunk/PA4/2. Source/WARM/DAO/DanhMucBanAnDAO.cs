using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class DanhMucBanAnDAO
    {
        public static List<DANHMUCBANAN> LayTatCa()
        {
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            return db.DANHMUCBANANs.ToList();
        }
    }
}
