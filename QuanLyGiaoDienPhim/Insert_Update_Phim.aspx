<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Insert_Update_Phim.aspx.cs" Inherits="QuanLyGiaoDienPhim.Web_MasterPage.Insert_Update_Phim" %>

<%@ Register Src="~/UcWeb/ucInsert_Update_Phim.ascx" TagPrefix="uc1" TagName="ucInsert_Update_Phim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucInsert_Update_Phim runat="server" ID="ucInsert_Update_Phim" />
</asp:Content>