<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.QuenMatKhau" %>

<%@ Register Src="~/UcWeb/ucQuenMatKhau.ascx" TagPrefix="uc1" TagName="ucQuenMatKhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucQuenMatKhau runat="server" ID="ucQuenMatKhau" />
</asp:Content>