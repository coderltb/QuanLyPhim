using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucTheLoai : System.Web.UI.UserControl
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
            string s = Request.QueryString["TheLoai"].Trim();
            List<Phim> dsp = phimbll.HienThiTatCaPhim();
            if (!string.IsNullOrEmpty(s) && !s.Equals("Thể Loại"))
            {
                List<Phim> layp = new List<Phim>();
                datalstPhim.Controls.Clear();
                foreach (Phim item in dsp)
                {
                    if (item.TheLoai.Contains(s))
                    {
                        layp.Add(item);
                    }
                }
                if (layp.Count > 0)
                {
                    datalstPhim.DataSource = layp;
                    datalstPhim.DataBind();
                }
            }
            else
            {
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