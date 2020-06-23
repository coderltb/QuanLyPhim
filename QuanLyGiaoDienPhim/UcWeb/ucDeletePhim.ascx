<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDeletePhim.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucDeletePhim1" %>
<div class="frame">
    <table class="auto-style1" cellpadding="10" cellspacing="10">
        <tr>
            <td class="auto-style2" colspan="2">
                <h1 style="text-align: center; color: violet">Delete Phim</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblMaPhim" CssClass="lbThongTin" runat="server" Text="Mã Phim:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMaPhim" runat="server" Width="394px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblTenPhimGoc" CssClass="lbThongTin" runat="server" Text="Tên Phim Gốc:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTenPhimGoc" runat="server" Width="395px" MaxLength="100"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11" style="text-align: center">
                <asp:Button ID="btnXoaPhim" CssClass="btnXoa" runat="server" OnClick="btnXoaPhim_Click" Text="Xóa" Width="201px" />
            </td>
        </tr>
    </table>
</div>