<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="GUCera.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome Admin!" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="viewallcourses" runat="server" Height="35px" OnClick="Button1_Click" Text="View All Courses" Width="138px" Font-Bold="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="View Non-Accepted Courses" Width="231px" Font-Bold="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="35px" OnClick="Button3_Click" Text="Accept Course" Width="138px" Font-Bold="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Height="35px" OnClick="Button4_Click" Text="Create Promocode" Width="159px" Font-Bold="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Height="35px" OnClick="Button5_Click" Text="Issue Promocode" Width="148px" Font-Bold="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
