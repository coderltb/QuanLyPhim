<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucThongTinCaNhan.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucThongTinCaNhan" %>
<style type="text/css">
    .auto-style1 {
        width: 81%;
        height: 312px;
        margin-right: 0px;
    }

    .auto-style3 {
        width: 300px;
    }

    .auto-style4 {
        height: 50px;
        width: 300px;
    }

    .auto-style7 {
        border-radius: 15px;
        border-style: solid;
    }

    .auto-style8 {
        width: 300px;
        height: 43px;
    }

    .auto-style9 {
        height: 43px;
    }

    .auto-style10 {
        width: 300px;
        height: 27px;
    }

    .auto-style11 {
        height: 27px;
    }

    .auto-style12 {
        width: 103px;
    }

    .auto-style13 {
        width: 9px;
    }
</style>
<div class="frame">
    <table class="auto-style1" cellpadding="10">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblTenTK" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Tên Tài Khoản"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtTenTK" runat="server" Height="25px" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="25" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblMatKhau" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Mật Khẩu"></asp:Label>
            </td>
            <td colspan="3" class="auto-style9">
                <asp:TextBox ID="txtMatKhau" runat="server" Height="25px" MaxLength="25" TextMode="Password" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="lblHoTen" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Họ Và Tên"></asp:Label>
            </td>
            <td colspan="3" class="auto-style11">
                <asp:TextBox ID="txtHoTen" runat="server" Height="25px" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="25" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ Và Tên Ko Được Để Trống"></asp:RequiredFieldValidator>
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
            <td class="auto-style12">
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
            <td class="auto-style13">
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
            <td>
                <asp:TextBox ID="txtNam" runat="server" Height="25px" MaxLength="4" Width="100px" CssClass="auto-style7" BorderColor="#CCCCCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblEmail" CssClass="lbThongTin" runat="server" Font-Bold="True" Font-Size="12pt" Height="25px" Text="Email"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtEmail" runat="server" Height="25px" TextMode="Email" Width="330px" CssClass="auto-style7" BorderColor="#CCCCCC" MaxLength="40"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Sai Định Dạng Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnEdit_Save" runat="server" CssClass="auto-style7" Height="50px" Text="Cập Nhật" Font-Bold="True" Font-Size="12pt" Width="150px" BackColor="#CC9900" BorderColor="#CC9900" ForeColor="White" OnClick="btnEdit_Save_Click" />
            </td>
        </tr>
    </table>
</div>