<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Druga.aspx.cs" Inherits="Druga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
    </form>
</body>
</html>
