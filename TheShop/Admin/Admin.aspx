<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TheShop.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblCurrentRepairs" runat="server" Text="Current Repairs"></asp:Label>
    <br />
    <asp:GridView ID="gvCurrentRepairs" runat="server" AutoGenerateColumns="False" DataKeyNames="RepairID" DataSourceID="sqlCurrentRepairs">
        <Columns>
            <asp:BoundField DataField="RepairID" HeaderText="RepairID" ReadOnly="True" SortExpression="RepairID" />
            <asp:BoundField DataField="RepairStartDt" HeaderText="RepairStartDt" SortExpression="RepairStartDt" />
            <asp:BoundField DataField="EstimatedFinishDate" HeaderText="EstimatedFinishDate" SortExpression="EstimatedFinishDate" />
            <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="JobID" HeaderText="JobID" SortExpression="JobID" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="sqlCurrentRepairs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Repair] WHERE ([RepairID] = @RepairID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="RepairID" QueryStringField="RepairID" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
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
