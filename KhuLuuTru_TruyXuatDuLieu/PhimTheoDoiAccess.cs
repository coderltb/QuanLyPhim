using CacLopTrongCSDL;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace KhuLuuTru_TruyXuatDuLieu
{
    public class PhimTheoDoiAccess : DatabaseAccess
    {
        public List<PhimTheoDoi> HienThiTatCaPhimTheoDoi(ThanhVien thanhvien)
        {
            int i = LayMaTV(thanhvien);
            List<PhimTheoDoi> phim = new List<PhimTheoDoi>();
            OpenConnected();
            SqlCommand sql = TaoCommand("PhimTheoDoi_Select");
            sql.Parameters.Add("@MaTV", SqlDbType.Int).Value = i;
            SqlDataReader reader = sql.ExecuteReader();
            while (reader.Read())
            {
                PhimTheoDoi phimTheoDoi = new PhimTheoDoi();
                phimTheoDoi.MaPhim = reader.GetInt32(0);
                phimTheoDoi.HinhAnh = reader.GetString(1).Trim();
                phimTheoDoi.TenPhim = reader.GetString(2).Trim();
                phimTheoDoi.SoTap = reader.GetString(3).Trim();
                phim.Add(phimTheoDoi);
            }
            reader.Close();
            return phim;
        }

        public bool PhimTheoDoi_Search(ThanhVien tv, int ma)
        {
            int i = LayMaTV(tv);
            OpenConnected();
            PhimTheoDoi phimTheoDoi = new PhimTheoDoi();
            SqlCommand command = TaoCommand("PhimTheoDoi_Search");
            command.Parameters.Add("@MaTV", SqlDbType.Int).Value = i;
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = ma;
            SqlDataReader reader = command.ExecuteReader();
            bool kq = reader.HasRows;
            reader.Close();
            return kq;
        }

        public List<PhimTheoDoi> HienThiTatCaPhimTheoDoi_KeCaMATV()
        {
            List<PhimTheoDoi> phim = new List<PhimTheoDoi>();
            OpenConnected();
            SqlCommand sql = TaoCommand("PhimTheoDoi_Select_All");
            SqlDataReader reader = sql.ExecuteReader();
            while (reader.Read())
            {
                PhimTheoDoi phimTheoDoi = new PhimTheoDoi();
                phimTheoDoi.MaTV = reader.GetInt32(0);
                phimTheoDoi.MaPhim = reader.GetInt32(1);
                phimTheoDoi.HinhAnh = reader.GetString(2).Trim();
                phimTheoDoi.TenPhim = reader.GetString(3).Trim();
                phimTheoDoi.SoTap = reader.GetString(4).Trim();
                phim.Add(phimTheoDoi);
            }
            reader.Close();
            return phim;
        }

        public int LayMaTV(ThanhVien thanhVien)
        {
            OpenConnected();
            SqlCommand sql = TaoCommand("ThanhVien_Login");
            sql.Parameters.Add("@UserName", SqlDbType.VarChar).Value = thanhVien.UserName.Trim();
            sql.Parameters.Add("@Password", SqlDbType.VarChar).Value = thanhVien.Password.Trim();
            SqlDataReader reader = sql.ExecuteReader();
            if (reader.Read())
            {
                thanhVien.MaTV = reader.GetInt32(0);
                thanhVien.TenTV = reader.GetString(1).Trim();
            }
            reader.Close();
            CloseConnected();
            return thanhVien.MaTV;
        }

        public bool TheoDoiPhim(PhimTheoDoi phimTheoDoi, ThanhVien thanhvien)
        {
            int i = LayMaTV(thanhvien);
            OpenConnected();
            SqlCommand sql = TaoCommand("PhimTheoDoi_Insert");
            sql.Parameters.Add("@MaTV", SqlDbType.Int).Value = i;
            sql.Parameters.Add("@MaPhim", SqlDbType.Int).Value = phimTheoDoi.MaPhim;
            sql.Parameters.Add("@HinhAnh", SqlDbType.VarChar).Value = phimTheoDoi.HinhAnh.Trim();
            sql.Parameters.Add("@TenPhim", SqlDbType.NVarChar).Value = phimTheoDoi.TenPhim.Trim();
            sql.Parameters.Add("@SoTap", SqlDbType.Char).Value = phimTheoDoi.SoTap.Trim();
            int kq = sql.ExecuteNonQuery();
            return kq > 0;
        }

        public List<PhimTheoDoi> HienThiPhimTheoDoi_TheoMaPhim(int maphim)
        {
            List<PhimTheoDoi> phim = new List<PhimTheoDoi>();
            OpenConnected();
            SqlCommand sql = TaoCommand("PhimTheoDoi_Search_MaPhim");
            sql.Parameters.Add("@MaPhim", SqlDbType.Int).Value = maphim;
            SqlDataReader reader = sql.ExecuteReader();
            while (reader.Read())
            {
                PhimTheoDoi phimTheoDoi = new PhimTheoDoi();
                phimTheoDoi.MaTV = reader.GetInt32(0);
                phimTheoDoi.MaPhim = reader.GetInt32(1);
                phimTheoDoi.HinhAnh = reader.GetString(2).Trim();
                phimTheoDoi.TenPhim = reader.GetString(3).Trim();
                phimTheoDoi.SoTap = reader.GetString(4).Trim();
                phim.Add(phimTheoDoi);
            }
            reader.Close();
            return phim;
        }

        public bool XoaPhimTheoDoi(int ma, ThanhVien thanhvien)
        {
            int i = thanhvien.MaTV;
            if (i == 0)
            {
                i = LayMaTV(thanhvien);
            }
            OpenConnected();
            SqlCommand sql = TaoCommand("PhimTheoDoi_Delete");
            sql.Parameters.Add("@MaTV", SqlDbType.Int).Value = i;
            sql.Parameters.Add("@MaPhim", SqlDbType.Int).Value = ma;
            int kq = sql.ExecuteNonQuery();
            return kq > 0;
        }
    }
}