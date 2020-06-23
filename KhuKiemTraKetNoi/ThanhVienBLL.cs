using CacLopTrongCSDL;
using KhuLuuTru_TruyXuatDuLieu;
using System.Collections.Generic;

namespace KhuKiemTraKetNoi
{
    public class ThanhVienBLL
    {
        private ThanhVienAccess thanhvien = new ThanhVienAccess();

        public List<ThanhVien> HienTHiToanBoThanhVien()
        {
            return thanhvien.HienTHiToanBoThanhVien();
        }

        public bool DangKyThanhVien(ThanhVien tv)
        {
            return thanhvien.DangKyThanhVien(tv);
        }

        public ThanhVien DangNhap(ThanhVien tv)
        {
            return thanhvien.DangNhap(tv);
        }

        public bool QuenMatKhau(ThanhVien tv)
        {
            return thanhvien.QuenMatKhau(tv);
        }

        public ThanhVien HienThiThanhVienTheoMa(int ma)
        {
            return thanhvien.HienThiThanhVienTheoMa(ma);
        }

        public bool CapNhapThongTinTK(ThanhVien tv)
        {
            return thanhvien.CapNhapThongTinTK(tv);
        }
    }
}