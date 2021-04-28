<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileNumbers.aspx.cs" Inherits="GUCera.MobileNumbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Add Mobile Number" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="User Id"></asp:Label>
            <br />
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mobile Number"></asp:Label>
            <br />
            <asp:TextBox ID="num" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="back to home page" BackColor="White" BorderStyle="None" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>
