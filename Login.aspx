<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUCera.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 261px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Please Login" Font-Bold="True" ForeColor="Red"></asp:Label>
        </div>
        <p>
            Username<asp:TextBox ID="txt_username" runat="server"  style="margin-bottom: 0px"></asp:TextBox>
        </p>
        Password<asp:TextBox ID="txt_password" runat="server"  style="margin-bottom: 0px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_login" runat="server" Text="Login" onclick="login" Width="90px"/>
    </form>
</body>
</html>
