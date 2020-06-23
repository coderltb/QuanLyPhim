using System.Data.SqlClient;

namespace KhuLuuTru_TruyXuatDuLieu
{
    public class DatabaseAccess
    {
        private string sql = "Server = DESKTOP-QAROGUG\\SQLEXPRESS;Database = Quan_Ly_Phim;User id = sa;pwd=sql2012";

        //private string sql = "Server = DESKTOP-4S5PH6K;Database = Quan_Ly_Phim;User id = sa;pwd=1";
        public SqlConnection conn = null;

        public void OpenConnected()
        {
            if (conn == null)
            {
                conn = new SqlConnection(sql);
            }
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        protected SqlCommand TaoCommand(string s)
        {
            SqlCommand sql = new SqlCommand();
            sql.CommandType = System.Data.CommandType.StoredProcedure;
            sql.CommandText = s;
            sql.Connection = conn;
            return sql;
        }

        public void CloseConnected()
        {
            if (conn != null || conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
    }
}