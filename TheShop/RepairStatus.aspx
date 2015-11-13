<%@ Page Title="Repair Status" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairStatus.aspx.cs" Inherits="TheShop.RepairStatus" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Find Repair</h2>
    <div class="input-group">
        <asp:Image ID="imgCurrentStatus" runat="server" ImageUrl="~/Images/z06.jpg" />
        <asp:LoginView ID="lvPIN" runat="server">
            <LoggedInTemplate>
                PIN: PIN GOES HERE
            </LoggedInTemplate>
        </asp:LoginView>
        </br>
        </br>
        </br>
        </br>
        <asp:GridView ID="gvJobStatus" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="JobID" DataSourceID="sqlJobStatus" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ReceivedDt" HeaderText="Received Date" SortExpression="ReceivedDt" />
                <asp:BoundField DataField="EstimatedFinishDt" HeaderText="Estimated Completion Date" SortExpression="EstimatedFinishDt" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
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
        <asp:SqlDataSource ID="sqlJobStatus" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job] WHERE ([JobID] = @JobID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="JobID" QueryStringField="JobID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </br>
        </br>
        </br>
        <asp:GridView ID="gvRepairStatus" runat="server" AutoGenerateColumns="False" DataKeyNames="RepairID" DataSourceID="sqlRepairStatus" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RepairStartDt" HeaderText="Start Date" SortExpression="RepairStartDt" />
                <asp:BoundField DataField="EstimatedFinishDate" HeaderText="Estimated Completion Date" SortExpression="EstimatedFinishDate" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
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
