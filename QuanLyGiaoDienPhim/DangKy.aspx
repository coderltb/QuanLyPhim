<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.DangKy" %>

<%@ Register Src="~/UcWeb/ucDangKy.ascx" TagPrefix="uc1" TagName="ucDangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucDangKy runat="server" ID="ucDangKy" />
</asp:Content>