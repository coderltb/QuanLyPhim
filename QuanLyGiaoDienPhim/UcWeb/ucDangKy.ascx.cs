using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Web.UI;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucDangKy : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if (ddlGioiTinh.Text.Equals("Nam/Nữ") || ddlNgay.Text.Equals("Ngày") || !ddlThang.Text.Equals("Tháng") || txtNam.Text.Equals("") || txtNam.Text.Length < 4)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + "Register Failed" + "');", true);
                XoaTrangThongTin();
            }
            else
            {
                ThanhVien tv = new ThanhVien();
                tv.UserName = txtTenTK.Text.Trim();
                tv.Password = txtMatKhau.Text.Trim();
                tv.TenTV = txtHoTen.Text.Trim();
                tv.GioiTinh = ddlGioiTinh.Text;
                tv.NgaySinh = DateTime.Parse(ddlNgay.Text + "/" + ddlThang.Text + "/" + txtNam.Text);
                tv.Email = txtEmail.Text.Trim();
                ThanhVienBLL thanhVienBLL = new ThanhVienBLL();
                bool kq = thanhVienBLL.DangKyThanhVien(tv);
                if (kq && chkboxDongYCacQuyDinhWeb.Checked)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Successed!", "alert('" + "Register Successed!" + "');", true);
                    //XoaTrangThongTin();
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Error!", "alert('" + "Register Failed" + "');", true);
                    XoaTrangThongTin();
                }
            }
        }

        private void XoaTrangThongTin()
        {
            txtTenTK.Text = "";
            txtMatKhau.Text = "";
            txtXacNhanMatKhau.Text = "";
            txtHoTen.Text = "";
            txtEmail.Text = "";
            txtNam.Text = "";
            ddlGioiTinh.Text = ddlGioiTinh.Items[0].Text;
            ddlNgay.Text = ddlNgay.Items[0].Text;
            ddlThang.Text = ddlThang.Items[0].Text;
            chkboxDongYCacQuyDinhWeb.Checked = false;
            txtTenTK.Focus();
        }
    }
}