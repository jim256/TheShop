<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="TheShop.Admin.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <h3>Past Repairs</h3>
    <br />
    <asp:GridView ID="gvPastRepairs" CssClass="table table-striped table-condensed table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="JobID" DataSourceID="sqlPastRepairs" GridLines="None" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="JobID" HeaderText="JobID" ReadOnly="True" SortExpression="JobID" InsertVisible="False" ShowHeader="False" Visible="False" />
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownStatus" CssClass="form-control" runat="server" DataSourceID="SqlStatus" DataTextField="Status" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID") %>'></asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ReceivedDt" HeaderText="Received Date" SortExpression="ReceivedDt" DataFormatString="{0:d}" />
            <asp:BoundField DataField="EstimatedFinishDt" HeaderText="Est. Finish Date" SortExpression="EstimatedFinishDt" DataFormatString="{0:d}" />
            <asp:TemplateField HeaderText="Customer" SortExpression="CustomerFirstName">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CustomerFirstName") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerLastName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustomerFirstName") %>'></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustomerLastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CustomerPhone" HeaderText="Customer Phone" SortExpression="CustomerPhone" ReadOnly="True" />
            <asp:TemplateField HeaderText="Car" SortExpression="CarMake">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CarYear") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("CarMake") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("CarModel") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CarYear") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("CarMake") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("CarModel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            
        </Columns>
        <EditRowStyle BackColor="#cccccc" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="sqlPastRepairs" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job] j inner join Customer c ON j.CustomerID = c.CustomerID inner join Car ca ON ca.CarID = j.CarID inner join Status s ON s.StatusID = j.StatusID WHERE j.StatusID = 3" DeleteCommand="DELETE FROM [Job] WHERE [JobID] = @JobID" InsertCommand="INSERT INTO [Job] ([ReceivedDt], [EstimatedFinishDt], [CustomerID], [CarID], [Notes], [StatusID]) VALUES (@ReceivedDt, @EstimatedFinishDt, @CustomerID, @CarID, @Notes, @StatusID)" UpdateCommand="UPDATE [Job] SET [ReceivedDt] = @ReceivedDt, [EstimatedFinishDt] = @EstimatedFinishDt, [Notes] = @Notes, [StatusID] = @StatusID WHERE [JobID] = @JobID">
        <DeleteParameters>
            <asp:Parameter Name="JobID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="ReceivedDt" />
            <asp:Parameter DbType="Date" Name="EstimatedFinishDt" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="CarID" Type="Int32" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="StatusID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="ReceivedDt" />
            <asp:Parameter DbType="Date" Name="EstimatedFinishDt" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="StatusID" Type="Int32" />
            <asp:Parameter Name="JobID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlStatus" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Status] ORDER BY [Status]"></asp:SqlDataSource>

</asp:Content>
