<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dzisiaj jest
            <asp:Label ID="dateLabel" runat="server"></asp:Label>
            <br />
            <br />
            Podaj swoje imię:
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="showButton" runat="server" OnClick="showButton_Click" Text="Wyświetl" />
            <br />
            <br />
            <asp:Label ID="nameLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
