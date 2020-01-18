﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Piata.aspx.cs" Inherits="Druga" %>

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
                <asp:Label ID="t1Label" runat="server"></asp:Label>
                <br />
                <asp:Timer ID="t1Timer" runat="server" Interval="5000" OnTick="t1Timer_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Label ID="t2Label" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
