<%@ Page Title="Adroid Mobiles" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site3.Master" CodeBehind="Android.aspx.cs" Inherits="Assignment_SportsPro.CustomerSurvey" %>

<%@ MasterType VirtualPath="~/Site3.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="container" style="margin: 20px">
        <main>
            <div class="form-group row">
                <div class="col-md-2">
                    <asp:Label ID="lblAndroidBrand" CssClass="customWidth" runat="server" Text="Select Company:"></asp:Label>
                </div>
                <asp:DropDownList ID="ddlAdroidMobile" CssClass="col-md-6 form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Product_Name" DataValueField="Product_Id" AutoPostBack="True" OnSelectedIndexChanged="ddlAdroidMobile_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\project.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Products]  where category_id=1 ORDER BY [Product_Name]"></asp:SqlDataSource>
            </div>
            <br />
           <%-- <div class="form-group row">
                <div class="col-md-2">
                    <asp:Label ID="Label1" CssClass="customWidth" runat="server" Text="Select Company:"></asp:Label>
                </div>
                <asp:DropDownList ID="ddlmodel" CssClass="col-md-6 form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Model" DataValueField="Desc_Id"></asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\project.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Product_Description] WHERE ([Product_Id] = @Product_Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlAdroidMobile" Name="Product_Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
            <br />
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <div class="col-sm-6">
                            <div class="thumbnail">
                                <%--   <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="Image/Phones/<%# Eval("Image") %>.jpg" Width="131px" />--%>
                                <div class="col-md-3">
                                    <img src="Image/Phones/<%# Eval("Image").ToString()%>.jpg" alt='<%# Eval("Model") %>' height="320" width="300" />
                                </div>
                                <div class="caption col-md-offset-4 col-md-4">
                                    <h4><%# Eval("Model") %></h4>
                                    <h6><strong>Storage:</strong> &nbsp;<%# Eval("Storage") %></h6>
                                    <h6><strong>Color:</strong> &nbsp;<%# Eval("Color") %></h6>
                                    <h6><strong>Camera:</strong> &nbsp;<%# Eval("Camera") %></h6>
                                    <h6><strong>Processor:</strong> &nbsp;<%# Eval("Processor") %></h6>
                                    <h6><strong>Memory:</strong> &nbsp;<%# Eval("Ram") %></h6>
                                    <h6><strong>Screen:</strong> &nbsp;<%# Eval("Screen") %></h6>
                                    <h6><strong>Operation System:</strong> &nbsp;<%# Eval("OS") %></h6>
                                </div>
                                <div class="form-group" style="text-align: right">
                                    <asp:Label ID="Quantity" runat="server" Text="Quantity"></asp:Label>
                                    <asp:TextBox ID="TextBoxQuantity" CssClass="QTY" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Button ID="btnAdd" runat="server" Text="Wish List" CssClass="btn btn-success center-block BTNQTY" />
                                <br />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\project.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Product_Description] WHERE ([Product_Id] = @Product_Id) ORDER BY [Model]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlAdroidMobile" Name="Product_Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </main>
        <br />
    </div>
</asp:Content>
