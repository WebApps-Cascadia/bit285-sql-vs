<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 150px">
    <form id="form1" runat="server">
    <div style="height: 179px">
    
        <asp:Label ID="lblPage" runat="server" Text="Login Page"></asp:Label>
        <br />
        User Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLoginUser" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="User name required!" ControlToValidate="txtLoginUser"></asp:RequiredFieldValidator>
        <br />
        Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password required!" ControlToValidate="txtLoginPassword"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <br />
        <br />
        <asp:Label ID="lblPasswordStatus" runat="server" Text="Password is incorrect!" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
