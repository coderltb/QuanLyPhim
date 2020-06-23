<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPhimLe.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucPhimLe" %>
<div class="row movies-container">
    <div class="movies-container-title col-lg-12">
        <h3>PHIM LẺ</h3>
    </div>
    <div class="movies-frame">
        <div class="movies-box">
            <asp:DataList ID="datalstPhim" DataKeyField="MaPhim" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" Height="182px" Width="445px">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td class="movie-img">
                                <asp:Image ID="imgHinhPhim" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' runat="server" />
                                <div class="box-play">
                                    <a href='<%# "NoiDungPhim.aspx?MaPhim=" + Eval("MaPhim") %>'>
                                        <i class="fas fa-play-circle btnplay"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="movie-name">
                                <asp:LinkButton ID="lnkbtnTenPhim" CssClass="text" Text='<%# Eval("TenPhimGoc") %>' runat="server" PostBackUrl='<%# "~/NoiDungPhim.aspx?MaPhim=" + Eval("MaPhim") %>'></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</div>