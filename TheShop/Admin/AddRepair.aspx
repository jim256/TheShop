<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRepair.aspx.cs" Inherits="TheShop.Admin.AddRepair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="JobID" DataSourceID="sqlAddRepair" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="JobID" HeaderText="JobID" InsertVisible="False" ReadOnly="True" SortExpression="JobID" />
            <asp:BoundField DataField="ReceivedDt" HeaderText="ReceivedDt" SortExpression="ReceivedDt" />
            <asp:BoundField DataField="EstimatedFinishDt" HeaderText="EstimatedFinishDt" SortExpression="EstimatedFinishDt" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:BoundField DataField="StatusID" HeaderText="StatusID" SortExpression="StatusID" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="sqlAddRepair" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>
</asp:Content>
