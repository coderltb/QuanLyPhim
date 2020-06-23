using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucKhoPhim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDuLieuPhim();
            }
        }

        private PhimTheoDoiBLL phimTheoDoiBLL = new PhimTheoDoiBLL();

        private List<PhimTheoDoi> dsp = new List<PhimTheoDoi>();

        private void LoadDuLieuPhim()
        {
            List<PhimTheoDoi> tmp = LayKhoPhim(dsp);
            HienThiTongSoPhim(tmp);
            LoadLenGridView(tmp);
        }

        private void LoadLenGridView(List<PhimTheoDoi> dsp)
        {
            gvKhoPhim.Controls.Clear();
            if (dsp.Count > 0)
            {
                gvKhoPhim.DataSource = dsp;
                gvKhoPhim.DataBind();
            }
        }

        private List<PhimTheoDoi> LayKhoPhim(List<PhimTheoDoi> dsp)
        {
            ThanhVien tv = new ThanhVien();
            tv.UserName = Session["TenDangNhap"].ToString();
            tv.Password = Session["MatKhau"].ToString();
            dsp = phimTheoDoiBLL.HienThiTatCaPhimTheoDoi(tv);
            return dsp;
        }

        private void HienThiTongSoPhim(List<PhimTheoDoi> dsp)
        {
            lblSoPhim.Text = dsp.Count + "";
        }

        protected void gvKhoPhim_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ma = int.Parse(gvKhoPhim.DataKeys[e.RowIndex].Value.ToString());
            ThanhVien tv = new ThanhVien();
            tv.UserName = Session["TenDangNhap"].ToString();
            tv.Password = Session["MatKhau"].ToString();
            bool kq = phimTheoDoiBLL.XoaPhimTheoDoi(ma, tv);
            if (kq)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Thành Công", "alert('" + "Xóa Thành Công!" + "');", true);
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('" + "Xóa Ko Thành Công!" + "');", true);
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void ImgbtnTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            if (txtTimKiem.Value.Equals(""))
            {
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                List<PhimTheoDoi> tmp = new List<PhimTheoDoi>();
                tmp = LayKhoPhim(dsp);
                foreach (PhimTheoDoi item in tmp)
                {
                    if (item.TenPhim.Contains(txtTimKiem.Value))
                    {
                        dsp.Add(item);
                    }
                }
                HienThiTongSoPhim(dsp);
                LoadLenGridView(dsp);
            }
        }
    }
}