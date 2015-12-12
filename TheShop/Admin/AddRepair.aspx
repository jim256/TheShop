<%@ Page Title="Add Repair" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRepair.aspx.cs" Inherits="TheShop.Admin.AddRepair" %>
    
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3>Add Repair</h3>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="Insert" Width="100%" CellPadding="4" DataKeyNames="JobID" DataSourceID="sqlAddRepair" GridLines="None">   
        <Fields>
            <asp:BoundField DataField="JobID" HeaderText="JobID" ReadOnly="True" InsertVisible="False" Visible="false" SortExpression="JobID"></asp:BoundField>
            <asp:TemplateField HeaderText="ReceivedDt" SortExpression="ReceivedDt" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Received Date <span>(*)</span></label><br />                        
                        <asp:TextBox runat="server" Text='<%# Bind("ReceivedDt") %>' ID="TextBox3" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select a date" ControlToValidate="TextBox3" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>        
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3" PopupButtonID="TextBox3" />
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EstimatedFinishDt" SortExpression="EstimatedFinishDt" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Estimated Finish Date <span>(*)</span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("EstimatedFinishDt") %>' ID="TextBox4" CssClass="form-control"></asp:TextBox>
                        <asp:CompareValidator ID="valFinishLaterThanStart" runat="server" ErrorMessage="Please enter a finish date later than or equal to the received date" ControlToCompare="TextBox3" Operator="GreaterThanEqual" ControlToValidate="TextBox4" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select an estimated completion date" ControlToValidate="TextBox4" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox4" PopupButtonID="TextBox4" />
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="StatusID" SortExpression="StatusID" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Status <span></span></label><br />
                        <asp:DropDownList ID="DropDownStatus" CssClass="form-control" runat="server" DataSourceID="sqlStatus" DataTextField="Status" Width="24%" DataValueField="StatusID" SelectedValue='<%# Bind("StatusID") %>'></asp:DropDownList>                        
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustFirstName" SortExpression="CustFirstName" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Customer First Name <span>(*)</span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CustFirstName") %>' ID="TextBox6" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter customer first name" ControlToValidate="TextBox6" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustLastName" SortExpression="CustLastName" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Customer Last Name <span>(*)</span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CustLastName") %>' ID="TextBox7" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter customer last name" ControlToValidate="TextBox7" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustPhone" SortExpression="CustPhone" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Customer Phone <span></span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CustPhone") %>' ID="TextBox11" CssClass="form-control"></asp:TextBox>                      
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustEmail" SortExpression="CustEmail" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Customer Email <span></span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CustEmail") %>' ID="TextBox12" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" display="Dynamic" ErrorMessage="Please enter a valid Email: Eg. johndoe@mail.com" ControlToValidate="TextBox12" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="CarYear" SortExpression="CarYear" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Vehicle Year <span>(*)</span></label><br />
                        <asp:DropDownList ID="ddlYear" Text='<%# Bind("CarYear") %>' runat="server" CssClass="form-control" Width="24%"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select a date" ControlToValidate="ddlyear" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CarMake" SortExpression="CarMake" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Vehicle Make <span>(*)</span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CarMake") %>' ID="TextBox8" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter vehicle make" ControlToValidate="TextBox8" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CarModel" SortExpression="CarModel" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Vehicle Model <span>(*)</span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CarModel") %>' ID="TextBox10" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter vehicle model" ControlToValidate="TextBox10" SetFocusOnError="true" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CarColor" SortExpression="CarColor" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Vehicle Color <span></span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("CarColor") %>' ID="TextBox9" CssClass="form-control"></asp:TextBox>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Notes" SortExpression="Notes" ShowHeader="False">
                <InsertItemTemplate>
                    <div>
                        <label>Notes <span></span></label><br />
                        <asp:TextBox runat="server" Text='<%# Bind("Notes") %>' ID="TextBox1" TextMode="MultiLine" CssClass="form-control" Height ="100px"></asp:TextBox>
                    </div>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:LinkButton runat="server" CssClass="btn btn-success" Text="Submit" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton runat="server" Text="Clear" CommandName="Cancel" CausesValidation="False" ID="LinkButton2" PostBackUrl="~/Admin/AddRepair.aspx"></asp:LinkButton>
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    
    <asp:SqlDataSource ID="sqlAddRepair" runat="server" ConnectionString="<%$ ConnectionStrings:theshop_db %>" SelectCommand="SELECT * FROM [Job]" DeleteCommand="DELETE FROM [Job] WHERE [JobID] = @JobID" InsertCommand="INSERT INTO [Job] ([ReceivedDt], [EstimatedFinishDt], [Notes], [StatusID], [CustFirstName], [CustLastName], [CarMake], [CarYear], [CarColor], [CarModel], [CustPhone], [CustEmail]) VALUES (@ReceivedDt, @EstimatedFinishDt, @Notes, @StatusID, @CustFirstName, @CustLastName, @CarMake, @CarYear, @CarColor, @CarModel, @CustPhone, @CustEmail);" UpdateCommand="UPDATE [Job] SET [ReceivedDt] = @ReceivedDt, [EstimatedFinishDt] = @EstimatedFinishDt, [Notes] = @Notes, [StatusID] = @StatusID, [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CarMake] = @CarMake, [CarYear] = @CarYear, [CarColor] = @CarColor, [CarModel] = @CarModel, [CustPhone] = @CustPhone, [CustEmail] = @CustEmail WHERE [JobID] = @JobID" OnInserted="sqlAddRepair_Inserted">      
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="ReceivedDt"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="EstimatedFinishDt"></asp:Parameter>
            <asp:Parameter Name="Notes" Type="String"></asp:Parameter>
            <asp:Parameter Name="StatusID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CustFirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustLastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarMake" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarYear" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="CarColor" Type="String"></asp:Parameter>
            <asp:Parameter Name="CarModel" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="CustEmail" Type="String"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlStatus" runat="server" ConnectionString="<%$ ConnectionStrings:theshop_db %>" SelectCommand="SELECT * FROM [Status]"></asp:SqlDataSource>

</asp:Content>