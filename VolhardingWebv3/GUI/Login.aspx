<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VolhardingWebv3.GUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inlog Systeem</title>
    <li><a href="Login.aspx">Login</a></li>
    <script src="../Scripts/jquery-1.11.1.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/GUI/Home.aspx" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
    </form>

</body>
</html>
