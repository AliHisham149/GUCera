<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePromocode.aspx.cs" Inherits="GUCera.CreatePromocode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div title="Create Promocode">
            <asp:Label ID="Label1" runat="server" Text="Create Promocode" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            Please enter the following<br />
            <br />
            <br />
            Code</div>
        <asp:TextBox ID="code" runat="server"></asp:TextBox>
        &nbsp;
        <br />
        <br />
        IssueDate<br />
        <asp:TextBox ID="issuedate" runat="server"></asp:TextBox>
        <br />
        <br />
        ExpiryDate<br />
        <asp:TextBox ID="expirydate" runat="server"></asp:TextBox>
        <br />
        <br />
        Discount<br />
        <asp:TextBox ID="discount" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Done" OnClick="Button1_Click" Width="90px" />
        <br />
        <br />
        <br />
            <asp:Button ID="Button2" runat="server" Text="back to home page" BackColor="White" BorderStyle="None" OnClick="Button2_Click" />
    </form>
</body>
</html>
