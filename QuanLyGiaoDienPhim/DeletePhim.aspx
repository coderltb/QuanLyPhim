<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DeletePhim.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.DeletePhim" %>

<%@ Register Src="~/UcWeb/ucDeletePhim.ascx" TagPrefix="uc1" TagName="ucDeletePhim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucdeletephim runat="server" id="ucDeletePhim" />
</asp:Content>