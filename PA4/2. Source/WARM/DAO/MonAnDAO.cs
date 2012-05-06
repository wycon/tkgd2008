using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class MonAnDAO
    {
        public static MONAN TimMon(int maMon)
        {
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            MONAN mon = new MONAN();
            mon = db.MONANs.Single(r => r.MaMonAn == maMon && r.DaXoa == false);
            return mon;
        }
        public static List<MONAN> LayDanhSach(int maDanhMuc)
        {
            List<MONAN> ds = new List<MONAN>();
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            var dsMon = from q in db.MONANs
                        where q.DaXoa == false && q.MaDMMonAn == maDanhMuc
                        select q;
            ds = dsMon.ToList();

            return ds;
        }
        public static List<MONAN> LayDanhSach(string tenMonAn)
        {
            List<MONAN> ds = new List<MONAN>();
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            var dsMon = from q in db.MONANs
                        where q.DaXoa == false && q.TenMonAn.Contains(tenMonAn)
                        select q;
            ds = dsMon.ToList();

            return ds;
        }
    }
}
