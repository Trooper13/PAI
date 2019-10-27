<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dziekujemy.aspx.cs" Inherits="Dziekujemy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dziękujemy za wypełnienie ankiety
            <asp:Label ID="greetingsLabel" runat="server"></asp:Label>
            !<br />
            <br />
            <strong>Oto Twoje dane:<br />
            </strong>
            <br />
            <strong>Imię:</strong>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Nazwisko:</strong>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Adres:</strong>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Telefon:</strong>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Email</strong>:
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Wiek</strong>:
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Wzrost</strong>:
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Waga</strong>:
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Kolor</strong> <strong>włosów</strong>:
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Kolor</strong> <strong>oczu</strong>:
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Rozm</strong>. <strong>ubrania</strong>:
            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Rozm</strong>. <strong>buta</strong>:
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
            <strong>Doświadczenie</strong>:
            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
            <br />
            <strong>Płeć</strong>:
            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Panel ID="Panel1" runat="server" OnLoad="Panel1_OnPageLoad" Visible="False">
                <strong>Biust</strong>:
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>Miseczka</strong>:
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                &nbsp;<br /> <strong>Talia</strong>:
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                &nbsp;<br /> <strong>Biodra</strong>:
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>Dł</strong>. <strong>nogi</strong>:
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                &nbsp;</asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <strong>Klatka</strong>:
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>Pas</strong>:
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                <br />
                <strong>Dł</strong>. <strong>nogi</strong>:
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Strona główna</asp:HyperLink>
        </div>
    </form>
</body>
</html>
