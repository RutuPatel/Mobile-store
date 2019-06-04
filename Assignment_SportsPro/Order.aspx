<%@ Page Language="C#" Title="Order Page" AutoEventWireup="true" MasterPageFile="~/Site3.Master" CodeBehind="Order.aspx.cs" Inherits="Assignment_SportsPro.Order" %>

<%@ MasterType VirtualPath="~/Site3.Master" %>
<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row">
        <%-- row 1 --%>
        <br />
        <br />
        <br />

        <div class="col-sm-12">
            <%-- customer drop down and info column --%>
            <div class="form-group">
                <h1>Select Mobile</h1>
                <asp:DropDownList ID="ddlMobile" CssClass="form-control col-md-6" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Desc_Id"></asp:DropDownList>
                <br />
                <br />
                <br />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\project.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Product_Description]"></asp:SqlDataSource>
        </div>

        <div class="col-sm-4">
            <asp:Image ID="imgmobile" runat="server" Width="300" Height="380" />
        </div>
        <div class="col-sm-6 ">
            <div class="form-group">
                <label>Model:</label>
                <asp:Label ID="lblModel" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Storage:  </label>
                <asp:Label ID="lblStorage" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Color:  </label>
                <asp:Label ID="lblColor" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Camera:  </label>
                <asp:Label ID="lblCamera" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Processor:  </label>
                <asp:Label ID="lblProcessor" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Ram:  </label>
                <asp:Label ID="lblRam" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Screen:</label>
                <asp:Label ID="lblScreen" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>OS:</label>
                <asp:Label ID="lblOs" runat="server"></asp:Label>
            </div>
            <br />
            <div class="form-group">
                <label>Price:</label>
                <asp:Label ID="lblPrice" runat="server"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-2">Quantity:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                            runat="server" ControlToValidate="txtQuantity" Display="Dynamic"
                            ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger"
                            ControlToValidate="txtQuantity" Display="Dynamic"
                            ErrorMessage="Quantity must range from 1 to 500."
                            MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group col-md-offset-1">
                <asp:Button ID="BtnAdd" runat="server" Text="Add to contact list" CssClass="col-sm-12 btn btn-primary" Width="161px" OnClick="BtnAdd_Click" />
                <asp:Label ID="lblexist" runat="server"></asp:Label>
                <br />
        <br />
            </div>
        </div>
        <%-- end of row 2 --%>
    </div>


</asp:Content>
