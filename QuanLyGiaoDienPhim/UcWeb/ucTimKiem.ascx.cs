using CacLopTrongCSDL;
using KhuKiemTraKetNoi;
using System;
using System.Collections.Generic;

namespace QuanLyGiaoDienPhim.UcWeb
{
    public partial class ucTimKiem : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                KetQuaTimKiem();
            }
        }

        private PhimBLL phimbll = new PhimBLL();

        private void KetQuaTimKiem()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["TimKiem"]))
            {
                List<Phim> dsp = phimbll.TimKiemPhim(Request.QueryString["TimKiem"]);
                datalstPhim.Controls.Clear();
                if (dsp.Count > 0)
                {
                    datalstPhim.DataSource = dsp;
                    datalstPhim.DataBind();
                }
                else
                {
                    datalstPhim.Enabled = false;
                    datalstPhim.EnableViewState = false;
                    datalstPhim.Visible = false;
                    pnlThongBao.Enabled = true;
                    pnlThongBao.EnableViewState = true;
                    pnlThongBao.Visible = true;
                }
            }
        }
    }
}