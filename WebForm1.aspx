<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Azure Mobile App</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tbody>
                <tr>
                    <td>First Name : </td>
                    <td> <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td>Last Name : </td>
                    <td> <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td>City : </td>
                    <td> <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
                </tr>

                 <tr>
                    <td>&nbsp;</td>
                    <td> <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /> </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td> <asp:Label ID="lblInsert" runat="server"></asp:Label> </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
