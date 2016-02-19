<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" Text="LOGIN PAGE" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3366FF"></asp:Label>



    &nbsp;&nbsp;&nbsp;
        <br />
        <table style="width: 60%;">
            <tr>
                <td>

                    
        <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtLoginUser" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server" ControlToValidate="txtLoginUser" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblPasswordStatus" runat="server" Text="Password is incorrect"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;



        &nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
