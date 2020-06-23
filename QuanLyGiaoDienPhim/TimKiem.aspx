<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.TimKiem" %>

<%@ Register Src="~/UcWeb/ucTimKiem.ascx" TagPrefix="uc1" TagName="ucTimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucTimKiem runat="server" ID="ucTimKiem" />
</asp:Content>