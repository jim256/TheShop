<%@ Page Title="Repair Status" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairStatus.aspx.cs" Inherits="TheShop.RepairStatus" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Repair Status</h2>
    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
    <div class="input-group">

        <div class="col-md-6">
            <asp:DetailsView ID="dvStatus" Width="100%" runat="server" DataSourceID="sqlJobStatus" AutoGenerateRows="False" GridLines="None">
            <Fields>                
                <asp:TemplateField HeaderText="Status" SortExpression="Status" ShowHeader="False">
                    <ItemTemplate>
                        <div class="panel panel-primary">
                              <!-- Default panel contents -->
                              <div class="panel-heading">My Vehicle Status  PIN: <asp:Label ID="Label3" text='<%# Bind("JobID") %>' runat="server"></asp:Label></div>
                              <div class="panel-body">
                                <h4>Status: <asp:Label runat="server" Text='<%# Bind("Status") %>' ID="Label1"></asp:Label></h4>
                                <small class="text-muted col-md-6 text-center">Received Date: <asp:Label runat="server" Text='<%# Bind("ReceivedDt", "{0:d}") %>' ID="Label2"></asp:Label></small>
                                
                                <small class="text-muted col-md-6 text-center">Est. Finish Date: <asp:Label runat="server" Text='<%# Bind("EstimatedFinishDt", "{0:d}") %>' ID="Label5"></asp:Label></small>
                                <hr />
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("CarYear") %>'></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("CarMake") %>'></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("CarModel") %>'></asp:Label>
                                <h4>Notes</h4>
                                <asp:Label runat="server" Text='<%# Eval("Notes").ToString().Replace(Environment.NewLine,"<br />") %>' ID="Label4"></asp:Label>
                              </div>
                        </div>                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <RowStyle BorderStyle="None" />
        </asp:DetailsView>
        </div>
        
        <div class="col-md-6">
            <div class="well" ID="uploader" runat="server">
                <div class="col-md-8">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
                <div class="col-md-4 text-right">
                    <asp:Button runat="server" CssClass="btn btn-sm btn-primary" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
                </div>
                <div class="clearfix"></div>
            </div>
            <asp:ListView ID="lstImages" runat="server" DataSourceID="sqlImages" GroupItemCount="3">
                <EmptyDataTemplate>
                    <div>No images uploaded.</div>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <div runat="server" id="itemPlaceholderContainer">
                        <div runat="server" id="itemPlaceholder"></div>
                    </div>
                </GroupTemplate>
               
                <ItemTemplate>
                    <a href='<%# string.Format("images/Jobs/{0}", Eval("Name")) %>' target="_blank" >                        
                            <asp:Image ID="img1" CssClass="col-md-4" runat="server" ImageUrl='<%# string.Format("images/Jobs/{0}", Eval("Name")) %>'></asp:Image>                                                  
                    </a>
                </ItemTemplate>
                <LayoutTemplate>
                    <div runat="server" id="groupPlaceholderContainer" style="" border="0">
                                    <div runat="server" id="groupPlaceholder"></div>
                                </div>
                </LayoutTemplate>
            </asp:ListView>
        </div>
        
        <asp:SqlDataSource ID="sqlJobStatus" runat="server" ConnectionString="<%$ ConnectionStrings:csTheShopDB %>" SelectCommand="SELECT * FROM [Job] j inner join Status s ON s.StatusID = j.StatusID WHERE ([JobID] = @JobID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="JobID" QueryStringField="JobID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlImages" runat="server" ConnectionString='<%$ ConnectionStrings:csTheShopDB %>' SelectCommand="SELECT [Name], [Path] FROM [JobImages] WHERE ([JobID] = @JobID)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="jobID" DefaultValue="" Name="JobID" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    
</asp:Content>
