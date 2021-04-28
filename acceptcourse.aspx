<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acceptcourse.aspx.cs" Inherits="GUCera.acceptcourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Accept Course" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="please enter course Id" Font-Bold="True" ForeColor="Black"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="accept" />
        <br />
        <br />
            <asp:Button ID="Button2" runat="server" Text="back to home page" BackColor="White" BorderStyle="None" OnClick="Button2_Click" />
    </form>
</body>
</html>
