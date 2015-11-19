<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRepair.aspx.cs" Inherits="TheShop.Admin.AddRepair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="JobID" DataSourceID="sqlAddRepair" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ReceivedDt" HeaderText="ReceivedDt" SortExpression="ReceivedDt" />
            <asp:BoundField DataField="EstimatedFinishDt" HeaderText="EstimatedFinishDt" SortExpression="EstimatedFinishDt" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="sqlAddRepair" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>
</asp:Content>
