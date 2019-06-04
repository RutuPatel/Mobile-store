<%@ Page Title="Cart Page" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site3.Master" CodeBehind="Cart.aspx.cs" Inherits="Assignment_SportsPro.Cart" %>


<%@ MasterType VirtualPath="~/Site3.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
   
            <div class="row"><%-- row 1 --%>
                <div class="col-sm-12"><h1>Your shopping cart</h1></div>
                <div class="col-sm-12"><%-- cart display column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div>
                    </div>
                     <br />
                </div>
              
                <div class="col-sm-12 "><%-- cart edit buttons column --%>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <br />
                            <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CssClass="btn btn-primary col-sm-5  form-control" OnClick="btnRemove_Click" />
                            <asp:Button ID="btnEmpty" runat="server"  Text="Empty Cart" CssClass="btn btn-primary col-sm-5 col-sm-offset-1  form-control" OnClick="btnEmpty_Click"  />

                        </div>
                    </div>
                </div>
            </div><%-- end of row 1 --%>
             <br /> 
            <div class="row"><%-- row 2 --%>
                <div class="col-sm-12">
                   
                    <div class="form-group"><%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" CssClass="btn btn-primary col-sm-5 form-control" OnClick="btnContinue_Click" PostBackUrl="~/Order.aspx" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" CssClass="btn btn-primary col-sm-5  col-sm-offset-1  form-control" OnClick="btnCheckOut_Click"/>
                            <br /> <br />
                        </div>
                    </div>
                     <div class="form-group"><%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                </div>
            </div><%-- end of row 2 --%>

</asp:Content>
