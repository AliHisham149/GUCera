<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuceraHome.aspx.cs" Inherits="GUCera.GuceraHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome to GUCera" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Login" Height="39px" Width="137px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Student Register" Height="39px" Width="137px" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Instructor Register" Height="39px" Width="140px" OnClick="Button3_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Add Mobilenumber" Height="39px" Width="143px" OnClick="Button4_Click" />
    </form>
</body>
</html>
