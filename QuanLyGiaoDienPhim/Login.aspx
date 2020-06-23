<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.Login" %>

<%@ Register Src="~/UcWeb/ucLogin.ascx" TagPrefix="uc1" TagName="ucLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucLogin runat="server" ID="ucLogin" />
</asp:Content>