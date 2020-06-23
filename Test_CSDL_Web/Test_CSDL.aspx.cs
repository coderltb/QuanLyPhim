using KhuKiemTraKetNoi;
using System;

namespace Test_CSDL_Web
{
    public partial class Test_CSDL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PhimBLL dsphim = new PhimBLL();
            GridView1.DataSource = dsphim.HienThiTatCaPhim();
            GridView1.DataBind();
            ThanhVienBLL dsTV = new ThanhVienBLL();
            GridView2.DataSource = dsTV.HienTHiToanBoThanhVien();
            GridView2.DataBind();
            PhimTheoDoiBLL dsphimtheodoi = new PhimTheoDoiBLL();
            GridView3.DataSource = dsphimtheodoi.HienThiTatCaPhimTheoDoi_KeCaMATV();
            GridView3.DataBind();
        }
    }
}