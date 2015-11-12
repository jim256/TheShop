<%@ Page Title="Repair Status" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairStatus.aspx.cs" Inherits="TheShop.RepairStatus" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Find Repair</h2>
    <div class="input-group">
        <asp:Image ID="imgCurrentStatus" runat="server" ImageUrl="~/Images/z06.jpg" />
        </br>
        </br>
        </br>
        </br>
        <asp:Label ID="lblLabelForEstCompDt" runat="server" Text="Estimated Completion Date"></asp:Label>
        <asp:Label ID="lblSpacer1" runat="server" Text="       "></asp:Label>
        <asp:Label ID="lblEstCompDt" runat="server" Text="ACTUAL DATA GOES HERE"></asp:Label>
        <asp:Label ID="lblLabelForCurrentStatus" runat="server" Text="Current Status"></asp:Label>
        <asp:Label ID="lblSpacer2" runat="server" Text="       "></asp:Label>
        <asp:Label ID="lblCurrentStatus" runat="server" Text="ACTUAL DATA GOES HERE"></asp:Label>
        </br>
        </br>
        </br>
        </br>
        <asp:GridView ID="gvRepairs" runat="server"></asp:GridView>
    </div>
</asp:Content>
