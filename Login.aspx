<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblLogin" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Blue" Text="Login Page"></asp:Label>
        
        <asp:Table runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server" ID="lblUsername" Text="User Name:" />
                </asp:TableCell>
                <asp:TableCell ruant="server">
                    <asp:Textbox runat="server" ID="txtUsername"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server" ID="valUsername" ControlToValidate="txtUsername" ErrorMessage="User name required"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server" ID="lblPassword" Text="Password:"/>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Textbox runat="server" ID="txtPassword"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server" ID="valPassword" ControlToValidate="txtPassword" ErrorMessage="Password required"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    &nbsp;
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_Click" Text="Login"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    &nbsp;
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label runat="server" ID="lblFail" Visible="false" Text="Password is incorrect!" ForeColor="red"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    </div>
    </form>
</body>
</html>
