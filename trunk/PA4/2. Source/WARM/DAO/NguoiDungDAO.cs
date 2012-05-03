using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class NguoiDungDAO
    {
        public static NGUOIDUNG KiemTraThongTinDangNhap(string TenDangNhap, string MatKhau)
        {            
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            foreach (NGUOIDUNG ng in db.NGUOIDUNGs)
            {
                if (ng.TenDangNhap == TenDangNhap && ng.MatKhau == MatKhau)
                    return ng;
            }

            return null;
        }
    }
}
