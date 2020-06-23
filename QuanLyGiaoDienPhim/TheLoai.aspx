<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TheLoai.aspx.cs" Inherits="QuanLyGiaoDienPhim.TheLoai" %>

<%@ Register Src="~/UcWeb/ucTheLoai.ascx" TagPrefix="uc1" TagName="ucTheLoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucTheLoai runat="server" ID="ucTheLoai" />
</asp:Content>