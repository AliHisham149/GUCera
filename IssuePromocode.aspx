<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssuePromocode.aspx.cs" Inherits="GUCera.IssuePromocode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 284px">
            <asp:Label ID="Label1" runat="server" Text="Issue Promocode" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Student Id"></asp:Label>
            <br />
            <asp:TextBox ID="student" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="Label3" runat="server" Text="Promocode"></asp:Label>
            <br />
            <asp:TextBox ID="code" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="back to home page" BackColor="White" BorderStyle="None" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>
