using CacLopTrongCSDL;
using KhuLuuTru_TruyXuatDuLieu;
using System.Collections.Generic;

namespace KhuKiemTraKetNoi
{
    public class PhimTheoDoiBLL
    {
        private PhimTheoDoiAccess phim = new PhimTheoDoiAccess();

        public List<PhimTheoDoi> HienThiTatCaPhimTheoDoi(ThanhVien tv)
        {
            return phim.HienThiTatCaPhimTheoDoi(tv);
        }

        public List<PhimTheoDoi> HienThiTatCaPhimTheoDoi_KeCaMATV()
        {
            return phim.HienThiTatCaPhimTheoDoi_KeCaMATV();
        }

        public bool TheoDoiPhim(PhimTheoDoi phimTheoDoi, ThanhVien tv)
        {
            return phim.TheoDoiPhim(phimTheoDoi, tv);
        }

        public bool XoaPhimTheoDoi(int ma, ThanhVien tv)
        {
            return phim.XoaPhimTheoDoi(ma, tv);
        }

        public bool PhimTheoDoi_Search(ThanhVien tv, int ma)
        {
            return phim.PhimTheoDoi_Search(tv, ma);
        }

        public int LayMaTV(ThanhVien thanhVien)
        {
            return phim.LayMaTV(thanhVien);
        }
    }
}