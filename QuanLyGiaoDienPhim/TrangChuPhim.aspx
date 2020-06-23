<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TrangChuPhim.aspx.cs" Inherits="QuanLyGiaoDienPhim.TrangChuPhim" %>

<%@ Register Src="~/UcWeb/ucTrangChuPhim.ascx" TagPrefix="uc1" TagName="ucTrangChuPhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucTrangChuPhim runat="server" ID="ucTrangChuPhim" />
</asp:Content>