<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTrangChuPhim.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucTrangChuPhim" %>
<style type="text/css">
    .auto-style2 {
        width: 225px;
    }

    .auto-style3 {
        width: 63px;
    }

    .auto-style4 {
        width: 84px;
    }
</style>

<div class="row movies-container">
    <div class="movies-container-title col-lg-12">
        <h3>HÔM NAY XEM GÌ?</h3>
    </div>
    <div class="movies-frame">
        <div class="movies-box">
            <asp:DataList ID="datalstPhim" DataKeyField="MaPhim" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" Height="182px" Width="445px">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td class="auto-style2 movie-img">
                                <asp:Image ID="imgHinhPhim" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' runat="server" />
                                <div class="box-play">
                                    <a href='<%# "NoiDungPhim.aspx?MaPhim=" + Eval("MaPhim") %>'>
                                        <i class="fas fa-play-circle btnplay"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2 movie-name">
                                <asp:Label ID="lblTenPhim" CssClass="text" runat="server" Text='<%# Eval("TenPhimGoc") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div class="btnPageSwitch-bar">
        <asp:Button ID="btnFirst" CssClass="btnPageSwitch" runat="server" OnClick="btnFirst_Click" Text="«" />
        <asp:Button ID="btnPrevious" CssClass="btnPageSwitch" runat="server" OnClick="btnPrevious_Click" Text="‹" />
        <asp:Label ID="lblTrangThai" CssClass="sotrang" runat="server" Text="Label" Font-Bold="True" Font-Size="12pt" ForeColor="#FF3300"></asp:Label>
        <asp:Button ID="btnNext" CssClass="btnPageSwitch" runat="server" OnClick="btnNext_Click" Text="›" />
        <asp:Button ID="btnLast" CssClass="btnPageSwitch" runat="server" OnClick="btnLast_Click" Text="»" />
    </div>
</div>