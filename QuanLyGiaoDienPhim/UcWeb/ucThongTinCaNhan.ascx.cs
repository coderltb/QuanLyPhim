using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Web.UI;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucThongTinCaNhan : System.Web.UI.UserControl
    {
        private ThanhVienBLL thanhvienbll = new ThanhVienBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDuLieu();
            }
        }

        private void LoadDuLieu()
        {
            ThanhVien tv = new ThanhVien();
            tv = thanhvienbll.HienThiThanhVienTheoMa(Int32.Parse(Session["IDThanhVien"].ToString()));
            txtTenTK.Text = tv.UserName;
            txtMatKhau.Text = tv.Password;
            txtMatKhau.Attributes["value"] = txtMatKhau.Text;
            txtHoTen.Text = tv.TenTV;
            if (tv.GioiTinh.Equals("Nam"))
            {
                ddlGioiTinh.Text = ddlGioiTinh.Items[1].Text;
            }
            if (tv.GioiTinh.Equals("Nữ"))
            {
                ddlGioiTinh.Text = ddlGioiTinh.Items[2].Text;
            }
            ddlNgay.Text = tv.NgaySinh.Day + "";
            ddlThang.Text = tv.NgaySinh.Month + "";
            txtNam.Text = tv.NgaySinh.Year + "";
            txtEmail.Text = tv.Email;
            Session["KiemTraThongTinCapNhap"] = true;
            VoHieuHoaThongTin();
        }

        protected void btnEdit_Save_Click(object sender, EventArgs e)
        {
            if (Session["KiemTraThongTinCapNhap"] != null)
            {
                CapNhapThongTin();
                Session["KiemTraThongTinCapNhap"] = null;
                return;
            }
            if (Session["KiemTraThongTinCapNhap"] == null)
            {
                ThanhVien tv = new ThanhVien();
                tv.UserName = txtTenTK.Text;
                tv.Password = txtMatKhau.Text;
                tv.TenTV = txtHoTen.Text;
                tv.GioiTinh = ddlGioiTinh.Text;
                tv.NgaySinh = DateTime.Parse(ddlNgay.Text + "/" + ddlThang.Text + "/" + txtNam.Text);
                tv.Email = txtEmail.Text;
                bool tmp = thanhvienbll.CapNhapThongTinTK(tv);
                if (tmp)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Cập Thành Công!" + "');", true);
                    btnEdit_Save.Text = "Cập Nhập";
                    VoHieuHoaThongTin();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thất Bại", "alert('" + "Đã Đăng Ký Thất Bại" + "');", true);
                }
            }
        }

        private void CapNhapThongTin()
        {
            txtMatKhau.ReadOnly = false;
            txtMatKhau.Enabled = true;
            txtHoTen.ReadOnly = false;
            txtHoTen.Enabled = true;
            txtEmail.ReadOnly = false;
            txtEmail.Enabled = true;
            ddlGioiTinh.Enabled = true;
            ddlNgay.Enabled = true;
            ddlThang.Enabled = true;
            txtNam.ReadOnly = false;
            btnEdit_Save.Text = "Lưu";
        }

        private void VoHieuHoaThongTin()
        {
            txtTenTK.ReadOnly = true;
            txtTenTK.Enabled = false;
            txtMatKhau.ReadOnly = true;
            txtMatKhau.Enabled = false;
            txtHoTen.ReadOnly = true;
            txtHoTen.Enabled = false;
            txtEmail.ReadOnly = true;
            txtEmail.Enabled = false;
            ddlGioiTinh.Enabled = false;
            ddlNgay.Enabled = false;
            ddlThang.Enabled = false;
            txtNam.ReadOnly = true;
            txtNam.Enabled = false;
        }
    }
}