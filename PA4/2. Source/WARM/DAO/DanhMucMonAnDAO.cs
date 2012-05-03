using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class DanhMucMonAnDAO
    {
        public static List<DANHMUCMONAN> LayTatCa()
        {
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            return db.DANHMUCMONANs.ToList();
        }
    }
}
