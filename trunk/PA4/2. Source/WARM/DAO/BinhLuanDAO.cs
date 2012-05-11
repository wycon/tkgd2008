using System.Collections.Generic;
using System.Linq;

namespace DAO
{
    public class BinhLuanDAO
    {
        public static List<BINHLUAN> LayDanhSach(int maMonAn)
        {
            List<BINHLUAN> ds = new List<BINHLUAN>();
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            var dsBinhLuan = from q in db.BINHLUANs
                             where q.DaXoa == false && q.MaMonAn == maMonAn
                        select q;
            ds = dsBinhLuan.ToList();

            return ds;
        }

    }
}
