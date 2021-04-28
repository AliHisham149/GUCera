<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="GUCera.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label7" runat="server" Text="Please Enter The Following Data" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            &nbsp;
            <br />
            <asp:TextBox ID="fname" runat="server" Height="20px" Width="152px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label8" runat="server" Text="(must be less than 10 characters)" ForeColor="Gray" Font-Italic="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label9" runat="server" Text="(must be less than 10 characters)" ForeColor="Gray" Font-Italic="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label10" runat="server" Text="(must be less than 10 characters)" ForeColor="Gray" Font-Italic="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="gend" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label11" runat="server" Text="(0 for Male, 1 for Female)" ForeColor="Gray" Font-Italic="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="mail" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label12" runat="server" Text="(must be less than 10 characters)" ForeColor="Gray" Font-Italic="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            <br />
        </div>
        <asp:TextBox ID="add" runat="server"></asp:TextBox>
    &nbsp;
            <asp:Label ID="Label13" runat="server" Text="(must be less than 10 characters)" ForeColor="Gray" Font-Italic="True"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="98px" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" />
        <br />
    </form>
</body>
</html>
