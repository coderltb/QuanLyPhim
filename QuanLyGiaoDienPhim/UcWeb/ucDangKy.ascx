<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDangKy.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucDangKy" %>
<style type="text/css">
    .auto-style1 {
        width: 101%;
        height: 440px;
    }

    .auto-style4 {
        height: 50px;
        width: 217px;
    }

    .auto-style5 {
        height: 45px;
        width: 217px;
    }

    .auto-style6 {
        height: 45px;
    }

    .auto-style7 {
        border-radius: 15px;
        border-style: solid;
    }

    .auto-style8 {
        width: 217px;
        height: 43px;
    }

    .auto-style9 {
        height: 43px;
    }

    .auto-style10 {
        width: 151px;
    }

    .auto-style11 {
        width: 217px;
    }

    .auto-style12 {
        width: 217px;
        height: 53px;
    }

    .auto-style13 {
        height: 53px;
    }
</style>
<div class="frame">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="lblTenTK" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Tên Tài Khoản"></asp:Label>
            </td>
            <td colspan="3" class="auto-style13">
                <asp:TextBox ID="txtTenTK" runat="server" Height="25px" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="control" runat="server" ControlToValidate="txtTenTK" ErrorMessage="UserName Ko Được Để Trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblMatKhau" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Mật Khẩu"></asp:Label>
            </td>
            <td colspan="3" class="auto-style9">
                <asp:TextBox ID="txtMatKhau" runat="server" Height="25px" MaxLength="20" TextMode="Password" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblXacNhanMatKhau" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Xác Nhận Mật Khẩu"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtXacNhanMatKhau" runat="server" Height="25px" MaxLength="20" TextMode="Password" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" CssClass="control" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtXacNhanMatKhau" ErrorMessage="Mật Khẩu Phải Giống MK Đã Gõ!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblHoTen" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Họ Và Tên"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtHoTen" runat="server" Height="25px" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="control" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ Và Tên Ko Được Để Trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblGioiTinh" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Giới Tính"></asp:Label>
            </td>
            <td colspan="3">
                <asp:DropDownList ID="ddlGioiTinh" runat="server" Height="25px" Width="330px" CssClass="auto-style7">
                    <asp:ListItem Selected="True" Value="Nam/Nữ"></asp:ListItem>
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblNgaySinh" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Ngày Sinh (Ngày / Tháng / Năm)"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlNgay" runat="server" Height="25px" Width="100px" CssClass="auto-style7" BackColor="White">
                    <asp:ListItem Selected="True">Ngày</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlThang" runat="server" Height="25px" Width="100px" CssClass="auto-style7" BackColor="White">
                    <asp:ListItem Selected="True">Tháng</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtNam" runat="server" Height="25px" MaxLength="4" Width="100px" CssClass="auto-style7" BorderColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblEmail" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Email"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtEmail" runat="server" Height="25px" TextMode="Email" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="40"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="control" runat="server" ControlToValidate="txtEmail" ErrorMessage="Sai Định Dạng Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6" colspan="3">
                <asp:CheckBox ID="chkboxDongYCacQuyDinhWeb" CssClass="chkboxDongYDieuKhoan" runat="server" Font-Bold="True" Text="Tôi đồng ý với các qui định của website" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnDangKy" runat="server" CssClass="auto-style7" Height="50px" Text="Đăng Ký" Font-Bold="True" Font-Size="12pt" Width="150px" BackColor="#CC9900" BorderColor="#CC9900" ForeColor="White" OnClick="btnDangKy_Click" />
            </td>
        </tr>
    </table>
</div>