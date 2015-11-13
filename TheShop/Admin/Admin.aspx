<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TheShop.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblCurrentRepairs" runat="server" Text="Current Repairs"></asp:Label>
    <br />
    <asp:GridView ID="gvCurrentRepairs" runat="server" AutoGenerateColumns="False" DataKeyNames="RepairID" DataSourceID="sqlCurrentRepairs" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="RepairID" HeaderText="RepairID" ReadOnly="True" SortExpression="RepairID" />
            <asp:BoundField DataField="RepairStartDt" HeaderText="RepairStartDt" SortExpression="RepairStartDt" />
            <asp:BoundField DataField="EstimatedFinishDate" HeaderText="EstimatedFinishDate" SortExpression="EstimatedFinishDate" />
            <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="JobID" HeaderText="JobID" SortExpression="JobID" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
    <asp:GridView ID="gvPastRepairs" runat="server" CellPadding="4" DataSourceID="sqlPastRepairs" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="sqlPastRepairs" runat="server"></asp:SqlDataSource>
</asp:Content>
