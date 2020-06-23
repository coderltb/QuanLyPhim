using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucInsert_Update_Phim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private bool Check_FIleUpload(String tmp)
        {
            string s = Path.GetExtension(tmp);
            switch (s.ToLower())
            {
                case ".gif":
                    return true;

                case ".png":
                    return true;

                case ".jpg":
                    return true;

                case ".jpeg":
                    return true;

                default:
                    return false;
            }
        }

        protected void btnInsert_Update_Phim_Click(object sender, EventArgs e)
        {
            PhimBLL phimbll = new PhimBLL();
            Phim phim = new Phim();
            bool kq = phimbll.KT_MaPhim(Int32.Parse(txtMaPhim.Text));
            phim.MaPhim = Int32.Parse(txtMaPhim.Text);
            phim.TenPhimGoc = txtTenPhimGoc.Text;
            phim.TenPhim = txtTenPhimTV.Text;
            phim.QuocGia = txtQuocGia.Text;
            phim.NoiDung = txtNoiDung.Text;
            phim.TheLoai = txtTheLoai.Text;
            phim.TrangThai = txtTrangThai.Text;
            phim.NamPhatSong = txtNamPhatSong.Text;
            phim.HinhAnh = LocDuLieuFileUpload(Fupload_HinhAnh, true);
            phim.DuongDan = LocDuLieuFileUpload(Fupload_DuongDanPhim, false);
            phim.ThoiLuong = Int32.Parse(txtThoiLuong.Text);
            if (kq)
            {
                kq = phimbll.CapNhapPhim(phim);
                if (kq)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Update Successed!" + "');", true);
                    XoaThongTin();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Update Failed!" + "');", true);
                    XoaThongTin();
                }
            }
            else
            {
                kq = phimbll.ThemPhimMoi(phim);
                if (kq)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Insert Successed!" + "');", true);
                    XoaThongTin();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Insert Failed!" + "');", true);
                    XoaThongTin();
                }
            }
        }

        private void XoaThongTin()
        {
            txtMaPhim.Text = "";
            txtTenPhimGoc.Text = "";
            txtTenPhimTV.Text = "";
            txtNamPhatSong.Text = "";
            txtNoiDung.Text = "";
            txtQuocGia.Text = "";
            txtTheLoai.Text = "";
            txtThoiLuong.Text = "";
            txtTrangThai.Text = "";
            Fupload_DuongDanPhim.Attributes.Clear();
            Fupload_HinhAnh.Attributes.Clear();
            txtMaPhim.Focus();
        }

        private string LocDuLieuFileUpload(FileUpload fupload, bool chk)
        {
            string tmp = "Chưa Cập Nhập";
            if (fupload.HasFile && Check_FIleUpload(fupload.FileName))
            {
                if (chk)
                {
                    tmp = "~/images/" + fupload.FileName;
                }
                if (!chk)
                {
                    tmp = "~/clip/" + fupload.FileName;
                }
                fupload.SaveAs(MapPath(tmp));
            }
            return tmp;
        }
    }
}