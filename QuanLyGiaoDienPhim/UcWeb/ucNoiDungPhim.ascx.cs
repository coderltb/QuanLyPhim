using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucNoiDungPhim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadNoiDungPhim();
            }
        }

        private PhimBLL phimbll = new PhimBLL();

        private PhimTheoDoiBLL phimtheodoibll = new PhimTheoDoiBLL();

        private ThanhVien tv = new ThanhVien();

        private Phim p;

        private void LoadNoiDungPhim()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["MaPhim"]))
            {
                List<Phim> dsp = new List<Phim>();
                Phim phim = new Phim();
                phim.MaPhim = Int32.Parse(Request.QueryString["MaPhim"]);
                p = phimbll.HienThiTheoMaPhim(phim);
                dsp.Add(p);
                frmviwNoiDungPhim.Controls.Clear();
                if (dsp.Count > 0)
                {
                    frmviwNoiDungPhim.DataSource = dsp;
                    frmviwNoiDungPhim.DataBind();
                    if (p.TheLoai.Contains(","))
                    {
                        string[] tmp = p.TheLoai.Split(',');
                        for (int i = 0; i < tmp.Length; i++)
                        {
                            LocTheLoai(tmp[i].Trim());
                            Label lbltmp = new Label();
                            if (i != tmp.Length - 1)
                            {
                                lbltmp.Text = " , ";
                                lbltmp.ForeColor = Color.White;
                                ((Table)frmviwNoiDungPhim.FindControl("tblPhim")).Rows[2].Cells[1].Controls.Add(lbltmp);
                            }
                        }
                    }
                    else
                    {
                        LocTheLoai(p.TheLoai.Trim());
                    }
                }
            }
            if (Session["KiemTra"] != null && !string.IsNullOrEmpty(Request.QueryString["MaPhim"]))
            {
                tv.UserName = Session["TenDangNhap"].ToString();
                tv.Password = Session["MatKhau"].ToString();
                if (phimtheodoibll.PhimTheoDoi_Search(tv, p.MaPhim))
                {
                    ((Button)frmviwNoiDungPhim.FindControl("btnTheoDoi")).Text = "Đang Theo Dõi";
                    ((Button)frmviwNoiDungPhim.FindControl("btnTheoDoi")).Enabled = false;
                }
            }
        }

        protected void btnTheoDoi_Click(object sender, EventArgs e)
        {
            if (Session["KiemTra"] != null)
            {
                tv.UserName = Session["TenDangNhap"].ToString();
                tv.Password = Session["MatKhau"].ToString();
                Phim phim = new Phim();
                phim.MaPhim = Int32.Parse(Request.QueryString["MaPhim"]);
                p = phimbll.HienThiTheoMaPhim(phim);
                if (!phimtheodoibll.PhimTheoDoi_Search(tv, p.MaPhim))
                {
                    PhimTheoDoi theoDoi = new PhimTheoDoi();
                    theoDoi.MaPhim = p.MaPhim;
                    theoDoi.MaTV = phimtheodoibll.LayMaTV(tv);
                    theoDoi.HinhAnh = p.HinhAnh;
                    theoDoi.TenPhim = p.TenPhimGoc;
                    string[] s = p.TrangThai.Split('/');
                    if (s[0].Trim().Equals('?'))
                    {
                        theoDoi.SoTap = "Trailer";
                    }
                    else
                    {
                        theoDoi.SoTap = s[0].Trim();
                    }
                    bool kq = phimtheodoibll.TheoDoiPhim(theoDoi, tv);
                    if (kq)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Đã Thêm Vào Kho" + "');", true);
                        ((Button)frmviwNoiDungPhim.FindControl("btnTheoDoi")).Text = "Đang Theo Dõi";
                        ((Button)frmviwNoiDungPhim.FindControl("btnTheoDoi")).Enabled = false;
                    }
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Yêu Cầu Phải Đăng Nhập" + "');", true);
            }
        }

        protected void frmviwNoiDungPhim_ItemCreated(object sender, EventArgs e)
        {
        }

        private void LocTheLoai(string s)
        {
            HyperLink hyperLink = new HyperLink();
            hyperLink.NavigateUrl = "~/TheLoai.aspx?TheLoai=" + s.Trim();
            hyperLink.Text = s;
            hyperLink.ForeColor = Color.Aqua;
            hyperLink.Font.Underline = false;
            ((Table)frmviwNoiDungPhim.FindControl("tblPhim")).Rows[2].Cells[1].Controls.Add(hyperLink);
        }
    }
}