<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" MasterPageFile="~/SzablonStrony.master" Title="Ankieta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:MultiView ID="mainMultiView" runat="server" OnActiveViewChanged="mainMultiView_ActiveViewChanged">
            <asp:View ID="ankietaGlowna" runat="server">
                imie:<br />
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox" ErrorMessage="Pole imie jest wymagane">*</asp:RequiredFieldValidator>
                <br />
                plec:<br />
                <asp:DropDownList ID="plecDropDownList" runat="server">
                    <asp:ListItem Value="K">Kobieta</asp:ListItem>
                    <asp:ListItem Value="M">Mezczyzna</asp:ListItem>
                    <asp:ListItem Value="N">Nie podaje</asp:ListItem>
                </asp:DropDownList>
                <br />
                e-mail:<br />
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Pole E-Mail jest wymagane">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Nieprawidlowy adres E-Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                telefon:<br />
                <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telTextBox" ErrorMessage="Nieprawidlowy numer telefonu, podaj same cyfry" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                ulica:<br />
                <asp:TextBox ID="b" runat="server"></asp:TextBox>
                <br />
                numer domu:<br />
                <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox>
                <br />
                numer mieszkania:<br />
                <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox>
                <br />
                kod pocztowy:<br />
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
                <br />
                miejscowosc:<br />
                <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:MultiView ID="ankietaMultiView" runat="server" OnActiveViewChanged="ankietaMultiView_ActiveViewChanged">
                    <asp:View ID="nowyView" runat="server">
                        wzrost:<br />
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Nieprawidlowy wzrost, podaj w centymetrach" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Podaj poprawny wzrost (50,250)" MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                        <br />
                        Rama roweru:<br />
                        <asp:DropDownList ID="ramaDropDownList" runat="server">
                            <asp:ListItem Value="D">Damska</asp:ListItem>
                            <asp:ListItem Value="M">Meska</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Marka:<br />
                        <asp:DropDownList ID="markaDropDownList" runat="server">
                            <asp:ListItem Value="C">Cateye</asp:ListItem>
                            <asp:ListItem Value="G">Giant</asp:ListItem>
                            <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                            <asp:ListItem Value="Kr">Kross</asp:ListItem>
                            <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Rodzaj roweru:<br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="G">Gorski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciecy</asp:ListItem>
                            <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Kwota planowanych wydatkow:<br />
                        <asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                            <asp:ListItem Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">do 500zl</asp:ListItem>
                            <asp:ListItem Value="10">500-1000zl</asp:ListItem>
                            <asp:ListItem Value="15">1000-1500zl</asp:ListItem>
                            <asp:ListItem Value="20">pow. 1500</asp:ListItem>
                            <asp:ListItem Value="1">Zakres:</asp:ListItem>
                        </asp:RadioButtonList>
                        od:<br />
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="odTextBox" ErrorMessage="Nieprawidlowy kwota, podaj w pelnych zlotych." ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <br />
                        do:<br />
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="doTextBox" ErrorMessage="Nieprawidlowy kwota, podaj w pelnych zlotych." ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="odTextBox" ControlToValidate="doTextBox" ErrorMessage="Wartosc w polu Do musi byc wieksza od wartosci w polu Od" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
                        <br />
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">
                        Rodzaj posiadanego roweru:<br />
                        <asp:DropDownList ID="posiadaDropDownList" runat="server">
                            <asp:ListItem Value="G">Gorski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciecy</asp:ListItem>
                            <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Data ostatniej wycieczki:<asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                        Data nastepnej wycieczki:Ilosc kilometrow srednio na jednej wycieczce:<br />
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                        <br />
                        Poziom umiejetnosci:<br />
                        <asp:DropDownList ID="poziomDropDownList" runat="server">
                            <asp:ListItem Value="P">Poczatkujacy</asp:ListItem>
                            <asp:ListItem Value="S">Sredniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </asp:View>
                </asp:MultiView>
            Preferowany rodzaj kontaktu:<br />
        <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
            <asp:ListItem Value="E">E-Mail</asp:ListItem> <asp:ListItem Value="T">Telefon</asp:ListItem><asp:ListItem Value="O">Osobisty</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="wyswietlButton" runat="server" Text="Wyswietl" OnClick="wyswietlButton_Click" />
        <br />
            </asp:View>
            <asp:View ID="podsumowanie" runat="server">
                Dziekujemy za wypelnienie ankiety<br /> <a href="Default.aspx"><span class="auto-style1">Strona glowna</span></a>
            </asp:View>
        </asp:MultiView>
    
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

</asp:Content>