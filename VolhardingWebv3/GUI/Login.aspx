<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VolhardingWebv3.GUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inlog Systeem</title>
    <script src="../Scripts/jquery-1.11.1.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/GUI/Home.aspx" OnAuthenticate="Login1_Authenticate" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
    </form>

</body>
</html>
