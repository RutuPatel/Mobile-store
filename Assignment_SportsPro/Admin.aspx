<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Assignment_SportsPro.Admin" %>

<!DOCTYPE html>

<html>
<head runat="server">
       <title>Admin</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/Project.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
</head>

<body>
    <div class="container">
        <form id="form1" runat="server" style="margin: 20px 0px">
            <div class="topnav" id="myTopnav">
                <a href="../Home.aspx">MobileStore</a>
                <a class="active" href="../Admin.aspx">Admin Tools</a>
            </div>
            <div style="padding-left: 16px">
                <h1>Lets Create the Database </h1>
            </div>
            <br />
            <main style="padding: 0; margin: 0">

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Desc_Id" DataSourceID="SqlDataSource1" class="table table-responsive">
                    <Columns>

                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Storage" HeaderText="Storage" SortExpression="Storage" />
                        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                        <asp:BoundField DataField="Camera" HeaderText="Camera" SortExpression="Camera" />
                        <asp:BoundField DataField="Processor" HeaderText="Processor" SortExpression="Processor" />
                        <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="OS" HeaderText="OS" SortExpression="OS" />
                        <asp:BoundField DataField="Screen" HeaderText="Screen" SortExpression="Screen" />
                        <asp:BoundField DataField="Desc_Id" HeaderText="Desc_Id" InsertVisible="False" ReadOnly="True" SortExpression="Desc_Id" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\project.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Product_Description] WHERE [Desc_Id] = @original_Desc_Id AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Storage] = @original_Storage) OR ([Storage] IS NULL AND @original_Storage IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([OS] = @original_OS) OR ([OS] IS NULL AND @original_OS IS NULL)) AND (([Screen] = @original_Screen) OR ([Screen] IS NULL AND @original_Screen IS NULL))" InsertCommand="INSERT INTO [Product_Description] ([Model], [Storage], [Color], [Camera], [Processor], [Ram], [Price], [OS], [Screen]) VALUES (@Model, @Storage, @Color, @Camera, @Processor, @Ram, @Price, @OS, @Screen)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Model], [Storage], [Color], [Camera], [Processor], [Ram], [Price], [OS], [Screen], [Desc_Id] FROM [Product_Description] ORDER BY [Model]" UpdateCommand="UPDATE [Product_Description] SET [Model] = @Model, [Storage] = @Storage, [Color] = @Color, [Camera] = @Camera, [Processor] = @Processor, [Ram] = @Ram, [Price] = @Price, [OS] = @OS, [Screen] = @Screen WHERE [Desc_Id] = @original_Desc_Id AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Storage] = @original_Storage) OR ([Storage] IS NULL AND @original_Storage IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Camera] = @original_Camera) OR ([Camera] IS NULL AND @original_Camera IS NULL)) AND (([Processor] = @original_Processor) OR ([Processor] IS NULL AND @original_Processor IS NULL)) AND (([Ram] = @original_Ram) OR ([Ram] IS NULL AND @original_Ram IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([OS] = @original_OS) OR ([OS] IS NULL AND @original_OS IS NULL)) AND (([Screen] = @original_Screen) OR ([Screen] IS NULL AND @original_Screen IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Desc_Id" Type="Int32" />
                        <asp:Parameter Name="original_Model" Type="String" />
                        <asp:Parameter Name="original_Storage" Type="String" />
                        <asp:Parameter Name="original_Color" Type="String" />
                        <asp:Parameter Name="original_Camera" Type="String" />
                        <asp:Parameter Name="original_Processor" Type="String" />
                        <asp:Parameter Name="original_Ram" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Double" />
                        <asp:Parameter Name="original_OS" Type="String" />
                        <asp:Parameter Name="original_Screen" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Storage" Type="String" />
                        <asp:Parameter Name="Color" Type="String" />
                        <asp:Parameter Name="Camera" Type="String" />
                        <asp:Parameter Name="Processor" Type="String" />
                        <asp:Parameter Name="Ram" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="OS" Type="String" />
                        <asp:Parameter Name="Screen" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Storage" Type="String" />
                        <asp:Parameter Name="Color" Type="String" />
                        <asp:Parameter Name="Camera" Type="String" />
                        <asp:Parameter Name="Processor" Type="String" />
                        <asp:Parameter Name="Ram" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="OS" Type="String" />
                        <asp:Parameter Name="Screen" Type="String" />
                        <asp:Parameter Name="original_Desc_Id" Type="Int32" />
                        <asp:Parameter Name="original_Model" Type="String" />
                        <asp:Parameter Name="original_Storage" Type="String" />
                        <asp:Parameter Name="original_Color" Type="String" />
                        <asp:Parameter Name="original_Camera" Type="String" />
                        <asp:Parameter Name="original_Processor" Type="String" />
                        <asp:Parameter Name="original_Ram" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Double" />
                        <asp:Parameter Name="original_OS" Type="String" />
                        <asp:Parameter Name="original_Screen" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </main>

            <footer class="padding-20 bg-dark" style="color: white">
                
                    <asp:Label runat="server">
                            <h3 style="margin-top:0">Contact Us</h3><br /> Phone:800-555-0400<br />  Email:
                            <asp:HyperLink runat="server" NavigateUrl="mailto:info.mobilestore@mobilestore.com">
                                info.mobilestore@mobilestore.com
                            </asp:HyperLink>
                    </asp:Label>
                    <div class="social">
                    <a href="https://www.facebook.com/" target="_blank"  class="fa fa-facebook"></a>
                    <a href="https://twitter.com/?lang=en" target="_blank" class="fa fa-twitter"></a>
                    <a href="https://www.google.ca/" target="_blank" class="fa fa-google"></a>
                    <a href="https://www.linkedin.com/uas/login" target="_blank" class="fa fa-linkedin"></a>
                    <a href="https://www.youtube.com/" target="_blank" class="fa fa-youtube"></a>
                    <a href="https://www.instagram.com/?hl=en" target="_blank" class="fa fa-instagram"></a>
                        </div>
            </footer>
        </form>
    </div>
</body>

</html>
