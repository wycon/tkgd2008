using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO
{
    public class NguoiDungDAO
    {
        /// <summary>
        /// Kiểm tra tên đăng nhập và mật khẩu xem có hợp lệ hay không
        /// </summary>
        /// <param name="TenDangNhap"></param>
        /// <param name="MatKhau"></param>
        /// <returns>Trả về đối tượng NGUOIDUNG nếu hợp lệ, ngược lại trả về null</returns>
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

        /// <summary>
        /// Kiểm tra tên đăng nhập có tồn tại chưa
        /// </summary>
        /// <param name="TenDangNhap"></param>
        /// <returns>Trả về true nếu đã tồn tại, ngược lại trả về false</returns>
        public static bool KiemTraTenDangNhapTonTai(string TenDangNhap)
        {
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            NGUOIDUNG ng = db.NGUOIDUNGs.Single(r => r.TenDangNhap == TenDangNhap);
            if (ng == null)
                return false;
            return true;
        }

        /// <summary>
        /// Thêm thông tin người dùng vào CSDL nếu tên đăng nhập chưa tồn tại
        /// </summary>
        /// <param name="TenDangNhap"></param>
        /// <param name="MatKhau"></param>
        /// <param name="Email"></param>
        /// <param name="DienThoai"></param>
        /// <param name="MaLoaiNguoiDung"></param>
        /// <returns>Trả về đối tượng người dùng nếu thêm thành công, ngược lại trả về null</returns>
        public static NGUOIDUNG TaoNguoiDung(string TenDangNhap, string MatKhau, string Email, string DienThoai, int MaLoaiNguoiDung)
        {
            if (KiemTraTenDangNhapTonTai(TenDangNhap))
                return null;
            
            QLNhaHangDataContext db = new QLNhaHangDataContext();
            NGUOIDUNG ng = new NGUOIDUNG();
            ng.TenDangNhap = TenDangNhap;
            ng.MatKhau = MatKhau;
            ng.Email = Email;
            ng.DienThoai = DienThoai;
            ng.MaLoaiNguoiDung = MaLoaiNguoiDung;
            db.NGUOIDUNGs.InsertOnSubmit(ng);
            
            db.SubmitChanges();

            return ng;
        }
    }
}
