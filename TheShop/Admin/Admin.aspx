<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TheShop.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblCurrentRepairs" runat="server" Text="Current Repairs"></asp:Label>
    <br />
    <asp:GridView ID="gvCurrentRepairs" runat="server"></asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblPastRepairs" runat="server" Text="Past Repairs "></asp:Label>
    <br />
    <asp:GridView ID="gvPastRepairs" runat="server"></asp:GridView>
</asp:Content>
