using CacLopTrongCSDL;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace KhuLuuTru_TruyXuatDuLieu
{
    public class PhimAccess : DatabaseAccess
    {
        public List<Phim> HienThiTatCaPhim()
        {
            List<Phim> dsphim = new List<Phim>();
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_Select_All");
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Phim phim = new Phim();
                phim.MaPhim = reader.GetInt32(0);
                phim.TenPhimGoc = reader.GetString(1).Trim();
                phim.TenPhim = reader.GetString(2).Trim();
                phim.HinhAnh = reader.GetString(3).Trim();
                phim.NoiDung = reader.GetString(4).Trim();
                phim.NamPhatSong = reader.GetString(5).Trim();
                phim.QuocGia = reader.GetString(6).Trim();
                phim.TrangThai = reader.GetString(7).Trim();
                phim.ThoiLuong = reader.GetInt32(8);
                phim.TheLoai = reader.GetString(9).Trim();
                dsphim.Add(phim);
            }
            reader.Close();
            return dsphim;
        }

        public Phim HienThiTheoMaPhim(Phim p)
        {
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_HienThiTheoMa");
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = p.MaPhim;
            SqlDataReader reader = command.ExecuteReader();
            Phim phim = new Phim();
            if (reader.Read())
            {
                phim.MaPhim = reader.GetInt32(0);
                phim.TenPhimGoc = reader.GetString(1).Trim();
                phim.TenPhim = reader.GetString(2).Trim();
                phim.HinhAnh = reader.GetString(3).Trim();
                phim.NoiDung = reader.GetString(4).Trim();
                phim.NamPhatSong = reader.GetString(5).Trim();
                phim.QuocGia = reader.GetString(6).Trim();
                phim.TrangThai = reader.GetString(7).Trim();
                phim.ThoiLuong = reader.GetInt32(8);
                phim.TheLoai = reader.GetString(9).Trim();
                phim.DuongDan = reader.GetString(10).Trim();
            }
            reader.Close();
            return phim;
        }

        public bool KT_MaPhim(int ma)
        {
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_HienThiTheoMa");
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = ma;
            SqlDataReader reader = command.ExecuteReader();
            bool kq = reader.HasRows;
            CloseConnected();
            return kq;
        }

        public List<Phim> TimKiemPhim(string ten)
        {
            List<Phim> dsphim = new List<Phim>();
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_Search");
            command.Parameters.Add("@TenPhimGoc", SqlDbType.NVarChar).Value = ten;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Phim p = new Phim();
                p.MaPhim = reader.GetInt32(0);
                p.HinhAnh = reader.GetString(1).Trim();
                p.TenPhimGoc = reader.GetString(2).Trim();
                dsphim.Add(p);
            }
            reader.Close();
            return dsphim;
        }

        public bool ThemPhimMoi(Phim phim)
        {
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_Insert");
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = phim.MaPhim;
            command.Parameters.Add("@TenPhimTV", SqlDbType.NVarChar).Value = phim.TenPhim.Trim();
            command.Parameters.Add("@TenPhimGoc", SqlDbType.NVarChar).Value = phim.TenPhimGoc.Trim();
            command.Parameters.Add("@HinhAnh", SqlDbType.VarChar).Value = phim.HinhAnh.Trim();
            command.Parameters.Add("@NoiDungPhim", SqlDbType.NVarChar).Value = phim.NoiDung.Trim();
            command.Parameters.Add("@NamPhatSong", SqlDbType.Char).Value = phim.NamPhatSong.Trim();
            command.Parameters.Add("@QuocGia", SqlDbType.NVarChar).Value = phim.QuocGia.Trim();
            command.Parameters.Add("@TrangThai", SqlDbType.Char).Value = phim.TrangThai.Trim();
            command.Parameters.Add("@ThoiLuong", SqlDbType.Int).Value = phim.ThoiLuong;
            command.Parameters.Add("@TheLoai", SqlDbType.NVarChar).Value = phim.TheLoai.Trim();
            command.Parameters.Add("@DuongDanPhim", SqlDbType.NVarChar).Value = phim.DuongDan.Trim();
            int kq = command.ExecuteNonQuery();
            return kq > 0;
        }

        public bool CapNhapPhim(Phim phim)
        {
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_Update");
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = phim.MaPhim;
            command.Parameters.Add("@TenPhimTV", SqlDbType.NVarChar).Value = phim.TenPhim.Trim();
            command.Parameters.Add("@TenPhimGoc", SqlDbType.NVarChar).Value = phim.TenPhimGoc.Trim();
            command.Parameters.Add("@HinhAnh", SqlDbType.VarChar).Value = phim.HinhAnh.Trim();
            command.Parameters.Add("@NoiDungPhim", SqlDbType.NVarChar).Value = phim.NoiDung.Trim();
            command.Parameters.Add("@NamPhatSong", SqlDbType.Char).Value = phim.NamPhatSong.Trim();
            command.Parameters.Add("@QuocGia", SqlDbType.NVarChar).Value = phim.QuocGia.Trim();
            command.Parameters.Add("@TrangThai", SqlDbType.Char).Value = phim.TrangThai.Trim();
            command.Parameters.Add("@ThoiLuong", SqlDbType.Int).Value = phim.ThoiLuong;
            command.Parameters.Add("@TheLoai", SqlDbType.NVarChar).Value = phim.TheLoai.Trim();
            command.Parameters.Add("@DuongDanPhim", SqlDbType.NVarChar).Value = phim.DuongDan.Trim();
            int kq = command.ExecuteNonQuery();
            return kq > 0;
        }

        public bool XoaPhim(int ma, string ten)
        {
            PhimTheoDoiAccess tmp = new PhimTheoDoiAccess();
            List<PhimTheoDoi> dsphimtheodoi = tmp.HienThiPhimTheoDoi_TheoMaPhim(ma);
            foreach (PhimTheoDoi item in dsphimtheodoi)
            {
                ThanhVien tv = new ThanhVien();
                tv.MaTV = item.MaTV;
                tmp.XoaPhimTheoDoi(ma, tv);
            }
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_Delete");
            command.Parameters.Add("@MaPhim", SqlDbType.Int).Value = ma;
            command.Parameters.Add("@TenPhimGoc", SqlDbType.NVarChar).Value = ten;
            int kq = command.ExecuteNonQuery();
            return kq > 0;
        }

        public List<Phim> HienThiTheoQuocGia(string quogia)
        {
            List<Phim> dsphim = new List<Phim>();
            OpenConnected();
            SqlCommand command = TaoCommand("Phim_HienThiTheoQuocGia");
            command.Parameters.Add("@QuocGia", SqlDbType.NVarChar).Value = quogia;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Phim p = new Phim();
                p.MaPhim = reader.GetInt32(0);
                p.HinhAnh = reader.GetString(1).Trim();
                p.TenPhimGoc = reader.GetString(2).Trim();
                dsphim.Add(p);
            }
            reader.Close();
            return dsphim;
        }
    }
}