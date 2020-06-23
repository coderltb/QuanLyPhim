<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLogin.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucLogin" %>
<style type="text/css">
    .auto-style1 {
        width: 55%;
        height: 266px;
    }

    .auto-style2 {
        height: 21px;
    }

    .auto-style6 {
        width: 210px;
        height: 56px;
    }

    .auto-style8 {
        width: 210px;
        height: 42px;
    }

    .auto-style10 {
        width: 150px;
        height: 50px;
        border-radius: 15px;
        border-style: solid;
        color: white;
        font-size: 15px;
        font-weight: bolder;
    }

    .auto-style11 {
        height: 42px;
    }

    .auto-style12 {
        height: 56px;
    }

    .auto-style13 {
        height: 41px;
    }

    .auto-style14 {
        height: 41px;
        width: 210px;
    }

    .auto-style15 {
        width: 210px;
    }
</style>

<div class="frame">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblTenDN" CssClass="lbThongTin" runat="server" Text="Tên Đăng Nhập" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtTenDN" runat="server" Width="320px" MaxLength="25"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblMatKhau" CssClass="lbThongTin" runat="server" Text="Mật Khẩu" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" Width="320px" MaxLength="25"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style14"></td>
            <td style="text-align: left" class="auto-style13">
                <asp:CheckBox ID="chkboxGhiNho" runat="server" CssClass="chkboxGhiNhoDangNhap" Text="Ghi nhớ đăng nhập?" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style15">&nbsp;</td>
            <td style="text-align: left">
                <asp:LinkButton ID="lnkbtnQuenMatKhau" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Red" OnClick="lnkbtnQuenMatKhau_Click">Quên Mật Khẩu?</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDangNhap" runat="server" CssClass="auto-style10" Text="Đăng Nhập" BackColor="#33CCFF" BorderColor="#33CCFF" OnClick="btnDangNhap_Click" Font-Bold="True" />
                &nbsp;
            <asp:Button ID="btnDangKy" runat="server" CssClass="auto-style10" Text="Đăng Ký" BackColor="#99CC00" BorderColor="#99CC00" OnClick="btnDangKy_Click" Font-Bold="True" />
            </td>
        </tr>
    </table>
</div>