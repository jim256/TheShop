<%@ Page Title="Error" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oops.aspx.cs" Inherits="TheShop.ErrorPages.Oops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="content-box">
        <h3>
            An Error Has Occured
        </h3>
        <p>An unexpected error has occured.</p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Return to the homepage</asp:HyperLink>
    </div>
</asp:Content>
