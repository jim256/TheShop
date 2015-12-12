<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="TheShop.Admin.History" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3>Completed Repairs</h3>
    <br />
    <asp:GridView ID="gvCurrentRepairs" CssClass="table table-striped table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="JobID" DataSourceID="sqlCurrentRepairs" GridLines="None" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary" PostBackUrl='<%# string.Format("~/RepairStatus?jobID={0}", Eval("JobID")) %>' runat="server" CausesValidation="false" CommandName="" Text="Details" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="JobID" HeaderText="PIN #" ReadOnly="True" SortExpression="JobID" InsertVisible="False" ShowHeader="False" Visible="True" />
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownStatus" CssClass="form-control" runat="server" DataSourceID="SqlStatus" DataTextField="Status" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID") %>'></asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Received Date" SortExpression="ReceivedDt">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ReceivedDt") %>' ID="TextBox2"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2" PopupButtonID="TextBox2" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("ReceivedDt", "{0:d}") %>' ID="Label8"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Est. Finish Date" SortExpression="EstimatedFinishDt">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("EstimatedFinishDt") %>' ID="TextBox3"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox3" PopupButtonID="TextBox3" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("EstimatedFinishDt", "{0:d}") %>' ID="Label9"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Customer"  >
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CustFirstName") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustLastName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustFirstName") %>'></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustLastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CustPhone" HeaderText="Customer Phone" ReadOnly="False" />
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
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete?')" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Admin.aspx"><h3>Current Repairs</h3></asp:HyperLink>

    <asp:SqlDataSource ID="sqlCurrentRepairs" runat="server" ConnectionString="<%$ ConnectionStrings:theshop_db %>" SelectCommand="SELECT * FROM [Job] j inner join Status s ON s.StatusID = j.StatusID WHERE j.StatusID = 6" DeleteCommand="DELETE FROM [Job] WHERE [JobID] = @JobID" InsertCommand="INSERT INTO [Job] ([ReceivedDt], [EstimatedFinishDt], [Notes], [StatusID], [CustFirstName], [CustLastName], [CarMake], [CarYear], [CarColor], [CarModel], [CustPhone], [CustEmail]) VALUES (@ReceivedDt, @EstimatedFinishDt, @Notes, @StatusID, @CustFirstName, @CustLastName, @CarMake, @CarYear, @CarColor, @CarModel, @CustPhone, @CustEmail)" UpdateCommand="UPDATE [Job] SET [ReceivedDt] = @ReceivedDt, [EstimatedFinishDt] = @EstimatedFinishDt, [Notes] = @Notes, [StatusID] = @StatusID, [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CarMake] = @CarMake, [CarYear] = @CarYear, [CarColor] = @CarColor, [CarModel] = @CarModel, [CustPhone] = @CustPhone, [CustEmail] = @CustEmail WHERE [JobID] = @JobID">
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
    <asp:SqlDataSource ID="SqlStatus" runat="server" ConnectionString="<%$ ConnectionStrings:theshop_db %>" SelectCommand="SELECT * FROM [Status] ORDER BY [Status]"></asp:SqlDataSource>


</asp:Content>
