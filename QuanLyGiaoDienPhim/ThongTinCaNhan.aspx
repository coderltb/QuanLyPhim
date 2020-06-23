<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.ThongTinCaNhan" %>

<%@ Register Src="~/UcWeb/ucThongTinCaNhan.ascx" TagPrefix="uc1" TagName="ucThongTinCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucThongTinCaNhan runat="server" ID="ucThongTinCaNhan" />
</asp:Content>