<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_SportsPro.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link href="Content/style2.css" rel="stylesheet" />

</head>
<body style="background-color:floralwhite">
    <form id="form1" style="text-align:center" runat="server">
       

        <h1>Login&nbsp; </h1>
        <p class="auto-style1">
            <asp:Label ID="user" runat="server" Text="User ID" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Password" runat="server" Text="Password" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passtxt" TextMode="Password" runat="server"></asp:TextBox>
        </p>
        <p>
       
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        </p>
       
        <p class="auto-style1">
            <asp:Label ID="errorlbl" runat="server"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usertxt" ErrorMessage="User id required(email)" ForeColor="#66FFFF" ValidationGroup="user"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" ErrorMessage="Please enter password" ForeColor="#66FFFF" ValidationGroup="password"></asp:RequiredFieldValidator>
        </p>
       

    </form>
</body>
</html>
