using CacLopTrongCSDL;
using KhuLuuTru_TruyXuatDuLieu;
using System.Collections.Generic;

namespace KhuKiemTraKetNoi
{
    public class PhimBLL
    {
        private PhimAccess phim = new PhimAccess();

        public List<Phim> HienThiTatCaPhim()
        {
            return phim.HienThiTatCaPhim();
        }

        public bool ThemPhimMoi(Phim p)
        {
            return phim.ThemPhimMoi(p);
        }

        public bool CapNhapPhim(Phim p)
        {
            return phim.CapNhapPhim(p);
        }

        public bool XoaPhim(int ma, string ten)
        {
            return phim.XoaPhim(ma, ten);
        }

        public Phim HienThiTheoMaPhim(Phim p)
        {
            return phim.HienThiTheoMaPhim(p);
        }

        public List<Phim> TimKiemPhim(string ten)
        {
            return phim.TimKiemPhim(ten);
        }

        public List<Phim> HienThiTheoQuocGia(string quocgia)
        {
            return phim.HienThiTheoQuocGia(quocgia);
        }

        public bool KT_MaPhim(int ma)
        {
            return phim.KT_MaPhim(ma);
        }
    }
}