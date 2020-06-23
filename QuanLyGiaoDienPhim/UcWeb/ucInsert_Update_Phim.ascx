<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucInsert_Update_Phim.ascx.cs" Inherits="QuanLyGiaoDienPhim.UcWeb.ucInsert_Update_Phim" %>
<style type="text/css">
    .auto-style1 {
        width: 75%;
        height: 842px;
    }

    .auto-style2 {
        height: 43px;
        text-align: center;
    }

    .auto-style3 {
        height: 352px;
        width: 664px;
    }

    .auto-style4 {
        height: 18px;
        width: 664px;
    }

    .auto-style5 {
        height: 16px;
        width: 664px;
    }

    .auto-style6 {
        height: 20px;
        width: 664px;
    }

    .auto-style7 {
        height: 22px;
        width: 664px;
    }

    .auto-style8 {
        height: 31px;
        width: 664px;
    }

    .auto-style9 {
        height: 26px;
        width: 664px;
    }

    .auto-style10 {
        height: 17px;
        width: 664px;
    }

    .auto-style11 {
        height: 25px;
        width: 664px;
    }

    .auto-style13 {
        height: 18px;
        width: 972px;
    }

    .auto-style14 {
        height: 16px;
        width: 972px;
    }

    .auto-style15 {
        height: 20px;
        width: 972px;
    }

    .auto-style16 {
        height: 352px;
        width: 972px;
    }

    .auto-style17 {
        height: 22px;
        width: 972px;
    }

    .auto-style18 {
        height: 31px;
        width: 972px;
    }

    .auto-style19 {
        height: 26px;
        width: 972px;
    }

    .auto-style20 {
        height: 17px;
        width: 972px;
    }

    .auto-style21 {
        height: 25px;
        width: 972px;
    }

    .auto-style23 {
        margin-left: 0px;
    }
</style>

<div class="frame">
    <table class="auto-style1" cellpadding="10">
        <tr>
            <td class="auto-style2" colspan="2">
                <h1 style="color: violet">Insert_Update Phim</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblMaPhim" CssClass="lbThongTin" runat="server" Text="Mã Phim:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMaPhim" runat="server" Width="400px" CssClass="auto-style23"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblTenPhimGoc" CssClass="lbThongTin" runat="server" Text="Tên Phim Gốc:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTenPhimGoc" runat="server" MaxLength="100" Width="400px" CssClass="auto-style23"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="lblTenPhimTV" CssClass="lbThongTin" runat="server" Text="Tên Phim TV:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTenPhimTV" runat="server" MaxLength="100" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblHinhAnh" CssClass="lbThongTin" runat="server" Text="Hình Ảnh:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:FileUpload ID="Fupload_HinhAnh" runat="server" Width="400px" CssClass="auto-style23 upload" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="lblNoiDungPhim" CssClass="lbThongTin" runat="server" Text="Nội Dung Phim:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNoiDung" Height="100%" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="lblNamPhatSong" CssClass="lbThongTin" runat="server" Text="Năm Phát Sóng"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtNamPhatSong" runat="server" MaxLength="30" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblQuocGia" CssClass="lbThongTin" runat="server" Text="Quốc Gia"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtQuocGia" runat="server" MaxLength="30" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblTranThai" CssClass="lbThongTin" runat="server" Text="Trạng Thái:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTrangThai" runat="server" MaxLength="30" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblThoiLuong" CssClass="lbThongTin" runat="server" Text="Thời Lượng:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtThoiLuong" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="lblTheLoai" CssClass="lbThongTin" runat="server" Text="Thể Loại:"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtTheLoai" runat="server" MaxLength="200" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="lblDuongDanPhim" CssClass="lbThongTin" runat="server" Text="Đường Dẫn Phim:"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:FileUpload ID="Fupload_DuongDanPhim" runat="server" Width="400px" CssClass="upload" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btnInsert_Update_Phim" CssClass="btnSave" runat="server" OnClick="btnInsert_Update_Phim_Click" Text="Save" Width="201px" />
            </td>
        </tr>
    </table>
</div>