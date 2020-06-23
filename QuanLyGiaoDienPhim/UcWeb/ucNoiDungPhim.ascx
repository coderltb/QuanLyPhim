<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucNoiDungPhim.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucNoiDungPhim" %>
<div class="container">
    <div class="row">

        <%--//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
        <asp:FormView ID="frmviwNoiDungPhim" DataKeyNames="MaPhim" runat="server" OnItemCreated="frmviwNoiDungPhim_ItemCreated" Width="100%">
            <ItemTemplate>
                <asp:Table ID="tblPhim" Width="100%" runat="server">
                    <asp:TableRow>
                        <asp:TableCell RowSpan="8">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <asp:Label ID="Label1" CssClass="original-name-of-movie" runat="server" Text='<%# Eval("TenPhimGoc") %>'></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">
                            <asp:Label ID="Label2" CssClass="name-of-movie" runat="server" Text='<%# Eval("TenPhim") %>'></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="attr-of-movie">Thể Loại: </asp:TableCell>
                        <asp:TableCell ID="Row2_Cell1">
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="attr-of-movie">Trạng Thái: </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label5" CssClass="info-of-movie" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="attr-of-movie">Năm Phát Sóng: </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label6" CssClass="info-of-movie" runat="server" Text='<%# Eval("NamPhatSong") %>'></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="attr-of-movie">Quốc Gia: </asp:TableCell>
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink1" CssClass="info-of-movie" runat="server" NavigateUrl='<%# "~/QuocGia.aspx?QuocGia=" + Eval("QuocGia") %>' Text='<%# Eval("QuocGia") %>'></asp:HyperLink>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="attr-of-movie">Thời Lượng</asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label7" CssClass="info-of-movie" runat="server" Text='<%# Eval("ThoiLuong") + " " + "Phút" %>'></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnXemPhim" CssClass="btn-xemphim" runat="server" CommandName="XemPhim" Text="Xem Phim" />
                            <div class="video-box">
                                <video width="100%" height="100%" controls preload>
                                    <source src='<%# "../clip/" + Eval("DuongDan") %>' type="video/mp4" />
                                </video>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnTheoDoi" CssClass="btn-theodoi" OnClick="btnTheoDoi_Click" runat="server" CommandName="TheoDoi" Text="Theo Dõi" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <h3 class="content-movie-title">Nội Dung</h3>
                <asp:Label ID="Label8" CssClass="content-movie" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label>
            </ItemTemplate>
        </asp:FormView>
    </div>
</div>