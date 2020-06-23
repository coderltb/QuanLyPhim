<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="PhimLe.aspx.cs" Inherits="QuanLyGiaoDienPhim.PhimLe" %>

<%@ Register Src="~/UcWeb/ucPhimLe.ascx" TagPrefix="uc1" TagName="ucPhimLe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucPhimLe runat="server" ID="ucPhimLe" />
</asp:Content>