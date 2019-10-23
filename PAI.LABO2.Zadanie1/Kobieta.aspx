<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kobieta.aspx.cs" Inherits="Kobieta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="showLabel" runat="server"></asp:Label>
            <br />
            <br />
            Email:
            <asp:TextBox ID="emailTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Wzrost:<asp:TextBox ID="wzrostTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Rozmiar ubrania:
            <asp:TextBox ID="rozmiarUbraniaTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Numer buta:
            <asp:TextBox ID="numerButaTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Obwód biustu:
            <asp:TextBox ID="biustTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Talia:
            <asp:TextBox ID="taliaTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            Biodra:
            <asp:TextBox ID="biodraTextBox" runat="server" Width="350px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="showFemaleButton" runat="server" OnClick="showFemaleButton_Click" Text="Wyświetl" />
        </div>
    </form>
</body>
</html>
