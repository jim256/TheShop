<%@ Page Title="Find Job" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindJob.aspx.cs" Inherits="TheShop.FindJob" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Find Repair</h2>
    <div class="input-group">
        <asp:Label ID="lblJobID" runat="server" Text="Job ID:"></asp:Label>
        <asp:TextBox ID="txtJobID" runat="server"></asp:TextBox>
        <asp:Label ID="lblPIN" runat="server" Text="PIN:"></asp:Label>
        <asp:TextBox ID="txtPIN" runat="server"></asp:TextBox>
        <asp:Button ID="cmdFindJob" runat="server" Text="Submit" OnClick="cmdFindJob_Click" />
    </div>

</asp:Content>
