using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucTrangChuPhim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDuLieuPhim();
            }
        }

        private static PagedDataSource p = new PagedDataSource();

        protected static int stt_trang;

        protected static int tranghientai = 0;

        private PhimBLL phimbll = new PhimBLL();

        private void LoadDuLieuPhim()
        {
            List<Phim> dsp = phimbll.HienThiTatCaPhim();
            datalstPhim.Controls.Clear();
            if (dsp.Count > 0)
            {
                p.DataSource = dsp;
                p.PageSize = 12;
                p.CurrentPageIndex = tranghientai;
                p.AllowPaging = true;
                DatLaiGiaTriTrang();
                if (p.IsFirstPage == true && p.IsLastPage == false)
                {
                    btnFirst.Enabled = false;
                    btnPrevious.Enabled = false;
                    btnNext.Enabled = true;
                    btnLast.Enabled = true;
                }
                if (p.IsLastPage == true && p.IsFirstPage == false)
                {
                    btnFirst.Enabled = true;
                    btnPrevious.Enabled = true;
                    btnNext.Enabled = false;
                    btnLast.Enabled = false;
                }
                if (p.IsLastPage == true && p.IsFirstPage == true)
                {
                    btnFirst.Enabled = false;
                    btnPrevious.Enabled = false;
                    btnNext.Enabled = false;
                    btnLast.Enabled = false;
                }
                lblTrangThai.Text = (tranghientai + 1) + "";
                datalstPhim.DataSource = p;
                datalstPhim.DataBind();
            }
        }

        private void DatLaiGiaTriTrang()
        {
            btnFirst.Enabled = true;
            btnPrevious.Enabled = true;
            btnNext.Enabled = true;
            btnLast.Enabled = true;
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            tranghientai = 0;
            LoadDuLieuPhim();
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            tranghientai--;
            LoadDuLieuPhim();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            tranghientai++;
            LoadDuLieuPhim();
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            tranghientai = p.PageCount - 1;
            LoadDuLieuPhim();
        }
    }
}