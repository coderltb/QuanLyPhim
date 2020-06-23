<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="QuocGia.aspx.cs" Inherits="QuanLyGiaoDienPhim.QuocGia" %>

<%@ Register Src="~/UcWeb/ucQuocGIa.ascx" TagPrefix="uc1" TagName="ucQuocGIa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucQuocGIa runat="server" ID="ucQuocGIa" />
</asp:Content>