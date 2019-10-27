<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: bold; font-size: x-large">
            Wypełnij ankietę :)</div>
        <div style="padding: inherit; margin: 5px">

            <br />
            Imię:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="margin: 5px" ID="imie" runat="server" Columns="2" Width="120px"></asp:TextBox>
            <br />
            Nazwisko:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="nazwisko" runat="server"></asp:TextBox>
            <br />
            Adres zam.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="adres" runat="server"></asp:TextBox>
            <br />
            Telefon:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="telefon" runat="server"></asp:TextBox>
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Wiek:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Wzrost:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <asp:TextBox style="margin: 5px" ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            Waga:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox style="margin: 5px" ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            Kolor włosów: 
            <asp:TextBox style="margin: 5px" ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            Kolor oczu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="margin: 5px" ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            Roz. ubrania:&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="margin: 5px" ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            Nr butów:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="margin: 5px" ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            Doświadczenie:<asp:DropDownList style="margin: 5px" ID="DropDownList2" runat="server" Width="126px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
            <br />
            Płeć:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList style="margin: 5px" ID="DropDownList1" runat="server" Width="126px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="1" Text="Kobieta">Kobieta</asp:ListItem>
                <asp:ListItem Value="2" Text="Mężczyzna">Mężczyzna</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False" Width="300px">
                Obwód biustu:
                <asp:TextBox style="margin: 5px" ID="TextBox14" runat="server"></asp:TextBox>
                <br />
                Wielkość miseczki:
                <asp:TextBox style="margin: 5px" ID="TextBox15" runat="server"></asp:TextBox>
                <br />
                Talia:
                <asp:TextBox style="margin: 5px" ID="TextBox16" runat="server"></asp:TextBox>
                <br />
                Biodra:<asp:TextBox style="margin: 5px" ID="TextBox17" runat="server"></asp:TextBox>
                <br />
                Dł. nogi:<asp:TextBox style="margin: 5px" ID="TextBox18" runat="server"></asp:TextBox>
            </asp:Panel>

        </div>
        <asp:Panel ID="Panel2" runat="server" Visible="False" Width="300px">
            Klatka:
            <asp:TextBox style="margin: 5px" ID="TextBox19" runat="server"></asp:TextBox>
            <br />
            Pas:<asp:TextBox style="margin: 5px" ID="TextBox20" runat="server"></asp:TextBox>
            <br />
            Dł. nogi:<asp:TextBox style="margin: 5px" ID="TextBox21" runat="server"></asp:TextBox>
        </asp:Panel>
        <p>
            <asp:Button ID="sendButton" runat="server" OnClick="sendButton_Click" Text="Wyślij" Width="80px" />
        </p>
    </form>
</body>
</html>
