using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Web.UI;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucQuenMatKhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGuiMatKhauMoi_Click(object sender, EventArgs e)
        {
            ThanhVien thanhVien = new ThanhVien();
            thanhVien.Email = txtEmailQuenMatKhau.Text;
            ThanhVienBLL thanhVienBLL = new ThanhVienBLL();
            bool kq = thanhVienBLL.QuenMatKhau(thanhVien);
            if (kq)
            {
                Session["KiemTraEmail"] = true;
                Response.Redirect("/Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Email này ko tồn tại!" + "');", true);
                txtEmailQuenMatKhau.Text = "";
            }
        }
    }
}