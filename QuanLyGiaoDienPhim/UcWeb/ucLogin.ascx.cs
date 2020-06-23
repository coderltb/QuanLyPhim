using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Web.UI;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KiemTraEmail"] != null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('Hệ Thống Đã Gửi TK vs Pass vào Email của bạn r đó');", true);
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            ThanhVien tv = new ThanhVien();
            tv.UserName = txtTenDN.Text;
            tv.Password = txtMatKhau.Text;
            ThanhVienBLL thanhVienBLL = new ThanhVienBLL();
            tv = thanhVienBLL.DangNhap(tv);
            if (tv.MaTV != 0)
            {
                Session["IDThanhVien"] = tv.MaTV;
                Session["KiemTraAdmin"] = tv.ChkAdmin;
                Session["MatKhau"] = txtMatKhau.Text;
                Session["TenDangNhap"] = txtTenDN.Text;
                Session["KiemTra"] = true;
                Response.Redirect("TrangChuPhim.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Username/Password chưa đúng!" + "');", true);
                XoaTrangDuLieu();
            }
        }

        private void XoaTrangDuLieu()
        {
            txtTenDN.Text = "";
            txtMatKhau.Text = "";
            chkboxGhiNho.Checked = false;
            txtTenDN.Focus();
        }

        protected void lnkbtnQuenMatKhau_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/QuenMatKhau.aspx");
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DangKy.aspx");
        }
    }
}