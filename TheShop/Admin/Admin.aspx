<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TheShop.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3>Current Repairs</h3>
    <br />
    <asp:Button ID="btnInsert" CssClass="btn btn-default" runat="server" Text="Add New Repair" Width="100%" OnClick="btnInsert_Click" />
    <asp:GridView ID="gvCurrentRepairs" CssClass="table table-striped table-condensed table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="JobID" DataSourceID="sqlCurrentRepairs" GridLines="None" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary" PostBackUrl='<%# string.Format("~/RepairStatus?jobID={0}", Eval("JobID")) %>' runat="server" CausesValidation="false" CommandName="" Text="Details" />
                </ItemTemplate>
            </asp:TemplateField>
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
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CustFirstName") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustLastName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustFirstName") %>'></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustLastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CustPhone" HeaderText="Customer Phone" SortExpression="CustomerPhone" ReadOnly="True" />
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
            <asp:TemplateField HeaderText="Notes" SortExpression="Notes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Notes") %>' TextMode="MultiLine" Rows="10"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Notes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="sqlCurrentRepairs" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job] j inner join Status s ON s.StatusID = j.StatusID WHERE j.StatusID != 6" DeleteCommand="DELETE FROM [Job] WHERE [JobID] = @JobID" InsertCommand="INSERT INTO [Job] ([ReceivedDt], [EstimatedFinishDt], [Notes], [StatusID], [CustFirstName], [CustLastName], [CarMake], [CarYear], [CarColor], [CarModel], [CustPhone], [CustEmail]) VALUES (@ReceivedDt, @EstimatedFinishDt, @Notes, @StatusID, @CustFirstName, @CustLastName, @CarMake, @CarYear, @CarColor, @CarModel, @CustPhone, @CustEmail)" UpdateCommand="UPDATE [Job] SET [ReceivedDt] = @ReceivedDt, [EstimatedFinishDt] = @EstimatedFinishDt, [Notes] = @Notes, [StatusID] = @StatusID, [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CarMake] = @CarMake, [CarYear] = @CarYear, [CarColor] = @CarColor, [CarModel] = @CarModel, [CustPhone] = @CustPhone, [CustEmail] = @CustEmail WHERE [JobID] = @JobID">
        <DeleteParameters>
            <asp:Parameter Name="JobID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="ReceivedDt" />
            <asp:Parameter DbType="Date" Name="EstimatedFinishDt" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="StatusID" Type="Int32" />
            <asp:Parameter Name="CustFirstName" Type="String" />
            <asp:Parameter Name="CustLastName" Type="String" />
            <asp:Parameter Name="CarMake" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarYear" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CarColor" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarModel" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustEmail" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="ReceivedDt" />
            <asp:Parameter DbType="Date" Name="EstimatedFinishDt" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="StatusID" Type="Int32" />
            <asp:Parameter Name="CustFirstName" Type="String" />
            <asp:Parameter Name="CustLastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarMake" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarYear" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CarColor" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarModel" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="JobID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlStatus" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Status] ORDER BY [Status]"></asp:SqlDataSource>


</asp:Content>
