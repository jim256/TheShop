<%@ Page Title="Find Repair" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindJob.aspx.cs" Inherits="TheShop.FindJob" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Find Repair</h2>
    <div class="input-group">
        <asp:Label CssClass="input-group-addon" ID="lblJobID" runat="server" Text="Repair ID:"></asp:Label>
        <asp:TextBox ID="txtJobID" runat="server" CssClass="form-control" placeholder="Enter ID Here" aria-describedby="basic-addon1"></asp:TextBox>     
        <asp:Button ID="cmdFindJob" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="cmdFindJob_Click" /> 
    </div>        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Repair ID." ControlToValidate="txtJobID" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
</asp:Content>
