using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucPhimLe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDuLieuPhim();
            }
        }

        private PhimBLL phimbll = new PhimBLL();

        private void LoadDuLieuPhim()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["TrangThai"]))
            {
                List<Phim> dsp = new List<Phim>();
                List<Phim> layp = phimbll.HienThiTatCaPhim();
                foreach (Phim item in layp)
                {
                    if (item.TrangThai.Equals("1/1") || item.TrangThai.Equals("?/1"))
                    {
                        dsp.Add(item);
                    }
                }
                datalstPhim.Controls.Clear();
                if (dsp.Count > 0)
                {
                    datalstPhim.DataSource = dsp;
                    datalstPhim.DataBind();
                }
            }
        }
    }
}