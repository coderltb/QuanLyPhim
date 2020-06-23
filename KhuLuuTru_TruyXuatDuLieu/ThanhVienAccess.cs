using CacLopTrongCSDL;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace KhuLuuTru_TruyXuatDuLieu
{
    public class ThanhVienAccess : DatabaseAccess
    {
        public List<ThanhVien> HienTHiToanBoThanhVien()
        {
            List<ThanhVien> dstv = new List<ThanhVien>();
            OpenConnected();
            SqlCommand sqlCommand = TaoCommand("ThanhVien_Select_All");
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                ThanhVien thanhVien = new ThanhVien();
                thanhVien.MaTV = reader.GetInt32(0);
                thanhVien.TenTV = reader.GetString(1).Trim();
                thanhVien.NgaySinh = reader.GetDateTime(2);
                thanhVien.GioiTinh = reader.GetString(3).Trim();
                thanhVien.Email = reader.GetString(4).Trim();
                dstv.Add(thanhVien);
            }

            reader.Close();
            return dstv;
        }

        public ThanhVien HienThiThanhVienTheoMa(int ma)
        {
            OpenConnected();
            SqlCommand sql = TaoCommand("ThanhVien_HienThiThanhVienTheoMa");
            sql.Parameters.Add("@MaTV", SqlDbType.Int).Value = ma;
            SqlDataReader reader = sql.ExecuteReader();
            ThanhVien thanhVien = new ThanhVien();
            if (reader.Read())
            {
                thanhVien.UserName = reader.GetString(0).Trim();
                thanhVien.Password = reader.GetString(1).Trim();
                thanhVien.TenTV = reader.GetString(2).Trim();
                thanhVien.NgaySinh = reader.GetDateTime(3);
                thanhVien.GioiTinh = reader.GetString(4).Trim();
                thanhVien.Email = reader.GetString(5).Trim();
            }
            return thanhVien;
        }

        public bool CapNhapThongTinTK(ThanhVien tv)
        {
            OpenConnected();
            SqlCommand sql = TaoCommand("ThanhVien_ChinhSuaThongTin");
            sql.Parameters.Add("@UserName", SqlDbType.VarChar).Value = tv.UserName.Trim();
            sql.Parameters.Add("@Password", SqlDbType.VarChar).Value = tv.Password.Trim();
            sql.Parameters.Add("@TenTV", SqlDbType.NVarChar).Value = tv.TenTV.Trim();
            sql.Parameters.Add("@NgaySinh", SqlDbType.Date).Value = tv.NgaySinh;
            sql.Parameters.Add("@GioiTinh", SqlDbType.NChar).Value = tv.GioiTinh.Trim();
            sql.Parameters.Add("@Email", SqlDbType.VarChar).Value = tv.Email.Trim();
            int i = sql.ExecuteNonQuery();
            return i > 0;
        }

        public bool DangKyThanhVien(ThanhVien tv)
        {
            bool chk = CheckThanhVienTheoMa(tv.UserName);
            if (!chk)
            {
                OpenConnected();
                SqlCommand sqlCommand = TaoCommand("ThanhVien_Register");
                sqlCommand.Parameters.Add("@MaTV", SqlDbType.Int).Value = LayMaTVTrongCSDL();
                sqlCommand.Parameters.Add("@UserName", SqlDbType.VarChar).Value = tv.UserName.Trim();
                sqlCommand.Parameters.Add("@Password", SqlDbType.VarChar).Value = tv.Password.Trim();
                sqlCommand.Parameters.Add("@TenTV", SqlDbType.NVarChar).Value = tv.TenTV.Trim();
                sqlCommand.Parameters.Add("@NgaySinh", SqlDbType.Date).Value = tv.NgaySinh;
                sqlCommand.Parameters.Add("@GioiTInh", SqlDbType.NChar).Value = tv.GioiTinh.Trim();
                sqlCommand.Parameters.Add("@Email", SqlDbType.VarChar).Value = tv.Email.Trim();
                sqlCommand.Parameters.Add("@ChkAddmin", SqlDbType.Bit).Value = 0;
                int kq = sqlCommand.ExecuteNonQuery();
                CloseConnected();
                return kq > 0;
            }
            return !chk;
        }

        private bool CheckThanhVienTheoMa(string s)
        {
            OpenConnected();
            SqlCommand sql = TaoCommand("ThanhVien_CheckThanhVienTheoMa");
            sql.Parameters.Add("@UserName", SqlDbType.VarChar).Value = s;
            SqlDataReader reader = sql.ExecuteReader();
            bool kq = reader.HasRows;
            reader.Close();
            return kq;
        }

        private int LayMaTVTrongCSDL()
        {
            OpenConnected();
            int matv = 0;
            SqlCommand sql = TaoCommand("ThanhVien_LayMaTV");
            SqlDataReader reader = sql.ExecuteReader();
            while (reader.Read())
            {
                matv = reader.GetInt32(0);
            }
            reader.Close();
            return matv + 1;
        }

        public ThanhVien DangNhap(ThanhVien tv)
        {
            OpenConnected();

            #region C1:đọc csdl xong kt xem có đọc dc dòng ko

            SqlCommand sql = TaoCommand("ThanhVien_Login");
            sql.Parameters.Add("@UserName", SqlDbType.VarChar).Value = tv.UserName.Trim();
            sql.Parameters.Add("@Password", SqlDbType.VarChar).Value = tv.Password.Trim();
            SqlDataReader reader = sql.ExecuteReader();
            ThanhVien thanhvien = new ThanhVien();
            if (reader.Read())
            {
                thanhvien.MaTV = reader.GetInt32(0);
                thanhvien.TenTV = reader.GetString(1);
                thanhvien.ChkAdmin = reader.GetBoolean(2);
            }
            reader.Close();
            return thanhvien;

            #endregion C1:đọc csdl xong kt xem có đọc dc dòng ko

            #region C2:đọc trực tiếp theo dòng

            //SqlDataAdapter da = new SqlDataAdapter("Select * from ThanhVien where UserName = '" + tv.UserName + "'and Password = '" + tv.Password + "'",conn);
            //SqlCommandBuilder builder = new SqlCommandBuilder(da);
            //DataSet dataSet = new DataSet();
            //da.Fill(dataSet,"ThanhVien");
            //int kq = dataSet.Tables["ThanhVien"].Rows.Count;
            //return kq > 0;

            #endregion C2:đọc trực tiếp theo dòng
        }

        public bool QuenMatKhau(ThanhVien tv)
        {
            OpenConnected();
            SqlCommand sql = TaoCommand("ThanhVien_Foreign_Password");
            sql.Parameters.Add("@Email", SqlDbType.VarChar).Value = tv.Email.Trim();
            SqlDataReader reader = sql.ExecuteReader();
            bool kq = reader.HasRows;
            reader.Close();
            return kq;
        }
    }
}