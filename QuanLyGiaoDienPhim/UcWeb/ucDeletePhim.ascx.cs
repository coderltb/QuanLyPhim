using KhuKiemTraKetNoi;
using System;
using System.Web.UI;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucDeletePhim1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnXoaPhim_Click(object sender, EventArgs e)
        {
            PhimBLL phimBLL = new PhimBLL();
            bool kq = phimBLL.XoaPhim(Int32.Parse(txtMaPhim.Text), txtTenPhimGoc.Text);
            if (kq)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Delete Successed!" + "');", true);
                XoaThongTin();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Delete Failed!" + "');", true);
                XoaThongTin();
            }
        }

        private void XoaThongTin()
        {
            txtMaPhim.Text = "";
            txtTenPhimGoc.Text = "";
            txtMaPhim.Focus();
        }
    }
}