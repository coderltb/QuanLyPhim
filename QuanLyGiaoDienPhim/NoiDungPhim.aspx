<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="NoiDungPhim.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.NoiDungPhim" %>

<%@ Register Src="~/UcWeb/ucNoiDungPhim.ascx" TagPrefix="uc1" TagName="ucNoiDungPhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucNoiDungPhim runat="server" ID="ucNoiDungPhim" />
</asp:Content>