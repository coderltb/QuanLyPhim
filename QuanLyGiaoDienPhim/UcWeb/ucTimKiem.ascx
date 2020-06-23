<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTimKiem.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucTimKiem" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        text-align: center;
        text-anchor: middle;
    }
</style>
<div class="row movies-container">
    <div class="movies-container-title col-lg-12">
        <h3>KẾT QUẢ TÌM KIẾM</h3>
    </div>
    <div class="movies-frame">
        <div class="movies-box">
            <asp:DataList ID="datalstPhim" DataKeyField="MaPhim" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td class="movie-img">
                                <asp:Image ID="imgHinhPhim" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="movie-name">
                                <asp:LinkButton ID="lnkbtnTenPhim" CssClass="text" Text='<%# Eval("TenPhimGoc") %>' runat="server" PostBackUrl='<%# "~//NoiDungPhim.aspx?MaPhim=" + Eval("MaPhim") %>'></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</div>

<asp:Panel ID="pnlThongBao" CssClass="auto-style1 failed-to-search" Visible="false" runat="server" Enabled="False" EnableTheming="True" EnableViewState="False">
    <h3>Không Tìm Thấy Phim Này</h3>
</asp:Panel>