<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucQuenMatKhau.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucQuenMatKhau" %>
<style type="text/css">
    .auto-style1 {
        height: 26px;
    }

    .auto-style2 {
        width: 100%;
        height: 62px;
    }

    .auto-style3 {
        height: 26px;
        width: 64px;
    }

    .auto-style4 {
        text-align: center;
    }

    .auto-style5 {
        border-radius: 15px;
        border-style: solid;
        color: whitesmoke;
        background-color: deepskyblue;
    }
</style>
<div class="frame">
    <table class="auto-style2" cellpadding="10">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblEmailQuenMatKhau" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Email" Width="108px" CssClass="auto-style4 lbThongTin"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtEmailQuenMatKhau" CssClass="control" runat="server" TextMode="Email" Width="500px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailQuenMatKhau" ErrorMessage="Sai Định Dạng Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnGuiMatKhauMoi" CssClass="auto-style5" runat="server" Font-Bold="True" Font-Size="12pt" Height="50px" Text="Gửi Mật Khẩu Mới" Width="210px" BorderColor="DeepSkyBlue" OnClick="btnGuiMatKhauMoi_Click" />
            </td>
        </tr>
    </table>
</div>