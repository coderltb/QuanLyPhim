<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="KhoPhim.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.KhoPhim" %>

<%@ Register Src="~/UcWeb/ucKhoPhim.ascx" TagPrefix="uc1" TagName="ucKhoPhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucKhoPhim runat="server" ID="ucKhoPhim" />
</asp:Content>