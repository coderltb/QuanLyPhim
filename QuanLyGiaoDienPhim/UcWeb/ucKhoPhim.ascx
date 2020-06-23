<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKhoPhim.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucKhoPhim" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 526px;
    }

    .auto-style3 {
        height: 55px;
    }
</style>
<table class="auto-style1">
    <tr>
        <td class="auto-style3" style="text-align: center">
            <asp:Label ID="lblTongCongPhim" runat="server" Font-Size="15pt" Text="Tổng Cộng Phim Trong Kho Là: " Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:Label ID="lblSoPhim" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red" Text="0"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: center">
            <div class="input-group mb-3 khungtimkiem">
                <input type="text" class="form-control thanhtimkiem" placeholder="Tìm kiếm phim..." runat="server" aria-label="Tìm kiếm phim..." aria-describedby="ImgbtnTimKiem" id="txtTimKiem" />
                <div class="input-group-append">
                    <asp:ImageButton CssClass="btn" ImageUrl="~/images/search(24px).png" ID="ImgbtnTimKiem" runat="server" OnClick="ImgbtnTimKiem_Click" />
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="gvKhoPhim" Width="100%" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="502px" AutoGenerateColumns="False" GridLines="Horizontal" OnRowDeleting="gvKhoPhim_RowDeleting" ShowHeaderWhenEmpty="True" DataKeyNames="MaPhim">
                <Columns>
                    <asp:TemplateField HeaderText="STT">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ảnh">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                        </ItemTemplate>
                        <ControlStyle Width="20%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tên Phim">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlnkTenPhim" Text='<%# Eval("TenPhim") %>' runat="server" Font-Bold="False" Font-Underline="False" ForeColor="Black" NavigateUrl='<%# "~/NoiDungPhim.aspx?MaPhim=" + Eval("MaPhim") %>'></asp:HyperLink>
                        </ItemTemplate>
                        <ControlStyle Width="50%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Số Tập">
                        <ItemTemplate>
                            <asp:Label ID="lblSoTap" runat="server" Text='<%# Eval("SoTap") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Image" DeleteText="" HeaderText="Xóa" ShowDeleteButton="True" ShowHeader="True" DeleteImageUrl="~/images/delete.png">
                        <ControlStyle Width="20%" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </td>
    </tr>
</table>