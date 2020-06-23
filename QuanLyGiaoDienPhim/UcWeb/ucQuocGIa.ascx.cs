using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucQuocGIa : System.Web.UI.UserControl
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
            string s = Request.QueryString["QuocGia"].Trim();
            if (!string.IsNullOrEmpty(s) && !s.Equals("Quốc Gia"))
            {
                List<Phim> dsp = phimbll.HienThiTheoQuocGia(s);
                datalstPhim.Controls.Clear();
                if (dsp.Count > 0)
                {
                    datalstPhim.DataSource = dsp;
                    datalstPhim.DataBind();
                }
            }
            else
            {
                List<Phim> dsp = phimbll.HienThiTatCaPhim();
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