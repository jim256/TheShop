﻿<%@ Page Title="Repair Status" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairStatus.aspx.cs" Inherits="TheShop.RepairStatus" %>

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
        <asp:GridView ID="gvRepairs" runat="server" AutoGenerateColumns="False" DataKeyNames="RepairID" DataSourceID="sqlRepairStatus" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="sqlRepairStatus" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Repair] WHERE ([JobID] = @JobID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="JobID" QueryStringField="JobID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
