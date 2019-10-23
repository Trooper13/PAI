<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Podaj swoje imię:
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            <br />
            Podaj swoją płeć:
            <asp:DropDownList ID="sexDropDownList" runat="server">
                <asp:ListItem Value="K">Kobieta</asp:ListItem>
                <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="showButton" runat="server" Text="Wyświetl" OnClick="showButton_Click"/>
        </div>
    </form>
</body>
</html>
