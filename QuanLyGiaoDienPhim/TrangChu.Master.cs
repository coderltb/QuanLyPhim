using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyGiaoDienPhim
{
    public partial class TrangChu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["KiemTra"] != null)
                {
                    btnDangNhap.Visible = false;
                    btnDangNhap.Enabled = false;
                    mnuTrangThaiDangNhap.Visible = true;
                    mnuTrangThaiDangNhap.Enabled = true;
                    mnuTrangThaiDangNhap.Items[0].Text = "";
                    mnuTrangThaiDangNhap.Items[0].ImageUrl = "~/images/avatar.gif";
                    CheckQuyenAdmin();
                }
            }
        }

        private void CheckQuyenAdmin()
        {
            if (Session["KiemTraAdmin"].ToString().Equals("True"))
            {
                btnthemsuaxoa.Visible = true;
                //btnthemsuaxoa.EnableTheming = true;
                //btnthemsuaxoa.EnableViewState = true;
            }
            else
            {
                btnthemsuaxoa.Visible = false;
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
        }

        protected void mnuTrangThaiDangNhap_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (mnuTrangThaiDangNhap.Items[0].ChildItems[0].Selected)
            {
                Response.Redirect("KhoPhim.aspx?UserName=" + Session["TenDangNhap"].ToString());
            }
            if (mnuTrangThaiDangNhap.Items[0].ChildItems[1].Selected)
            {
                Response.Redirect("ThongTinCaNhan.aspx?UserName=" + Session["TenDangNhap"].ToString());
            }
            if (mnuTrangThaiDangNhap.Items[0].ChildItems[2].Selected)
            {
                Session["KiemTra"] = null;
                Session["KiemTraAdmin"] = null;
                Session["IDThanhVien"] = null;
                Session["MatKhau"] = null;
                Session["TenDangNhap"] = null;
                mnuTrangThaiDangNhap.Visible = false;
                mnuTrangThaiDangNhap.Enabled = false;
                btnDangNhap.Visible = true;
                btnDangNhap.Enabled = true;
                Response.Redirect("TrangChuPhim.aspx");
            }
        }

        protected void ImgbtnTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            if (!txtTimKiem.Value.Equals(""))
            {
                Response.Redirect("TimKiem.aspx?TimKiem=" + txtTimKiem.Value);
            }
        }
    }
}