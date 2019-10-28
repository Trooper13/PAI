<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" %>
<asp:AdRotator runat="server" AdvertisementFile="~/Adv/adv.xml"></asp:AdRotator>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="mainMultiView" runat="server">
                <asp:View ID="ankietaGlowna" runat="server">
                    Imię:<br />
                    <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox" ErrorMessage="Pole Imię jest wymagane">*</asp:RequiredFieldValidator>
                    <br />
                    Płeć:<br />
                    <asp:DropDownList ID="plecDropDownList" runat="server">
                        <asp:ListItem Value="K">Kobieta</asp:ListItem>
                        <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
                        <asp:ListItem Value="N">Nie podaję</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    e-mail:<br />
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Pole email jest wymgane">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Nieporpawny adres email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <br />
                    Telefon:<br />
                    <asp:TextBox ID="telefonTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telefonTextBox" ErrorMessage="Niepoprawny nr telefonu" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                    <br />
                    Ulica:<br />
                    <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                    <br />
                    Nr. domu<br />
                    <asp:TextBox ID="nrDomuTextBox" runat="server"></asp:TextBox>
                    <br />
                    Nr. mieszkania<br />
                    <asp:TextBox ID="mieszkanieTextBox" runat="server"></asp:TextBox>
                    <br />
                    Kod pocztowy:<br />
                    <asp:TextBox ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                    <br />
                    Miejscowość:<br />
                    <asp:TextBox ID="miejscowoscTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:MultiView ID="ankietaMultiView" runat="server">
                        <asp:View ID="nowyView" runat="server">
                            Wzrost:<br />
                            <asp:TextBox ID="wzrostTextBox" runat="server" Width="128px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Niepoprawny wzrost - podaj wzrost w centymetrach">*</asp:RegularExpressionValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Podaj poprawny wzrost w przedziale 50-250cm" MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                            <br />
                            Rama roweru:<br />
                            <asp:DropDownList ID="ramaDropDownList" runat="server">
                                <asp:ListItem Value="D">Damska</asp:ListItem>
                                <asp:ListItem Value="M">Męska</asp:ListItem>
                                <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            Marka:<br />
                            <asp:ListBox ID="markaListBox" runat="server">
                                <asp:ListItem Value="C">Cateye</asp:ListItem>
                                <asp:ListItem Value="G">Giant</asp:ListItem>
                                <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                                <asp:ListItem Value="Kr">Kross</asp:ListItem>
                                <asp:ListItem Value="N">Nie ma znaczenia</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            Rodzaj roweru:<br />
                            <asp:ListBox ID="rodzajListBox" runat="server">
                                <asp:ListItem Value="G">Górski</asp:ListItem>
                                <asp:ListItem Value="M">Miejski</asp:ListItem>
                                <asp:ListItem Value="S">Szosowy</asp:ListItem>
                                <asp:ListItem Value="B">BMX</asp:ListItem>
                                <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                                <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            Kwota planowanych wydatków:<asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                                <asp:ListItem Value="0">Nie ma znaczenia</asp:ListItem>
                                <asp:ListItem Value="5">do 500zł</asp:ListItem>
                                <asp:ListItem Value="10">500 - 1000zł</asp:ListItem>
                                <asp:ListItem Value="15">1000 - 1500 zł</asp:ListItem>
                                <asp:ListItem Value="20">pow. 1500zł</asp:ListItem>
                                <asp:ListItem Value="1">Zakres</asp:ListItem>
                            </asp:RadioButtonList>
                            od:
                            <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="odTextBox" ErrorMessage="Nieprawidłowa kwota - podaj zaokrąglając do pełnych złotych" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                            <br />
                            do:
                            <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="doTextBox" ErrorMessage="Nieprawidłowa kwota - podaj zaokraglając do pełnych złotych" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                            <br />
                        </asp:View>
                        <asp:View ID="wycieczkiView" runat="server">
                            Rodzaj posiadanego roweru:<br />
                            <asp:ListBox ID="posiadaListBox" runat="server">
                                <asp:ListItem Value="G">Górski</asp:ListItem>
                                <asp:ListItem Value="M">Miejski</asp:ListItem>
                                <asp:ListItem Value="S">Szosowy</asp:ListItem>
                                <asp:ListItem Value="B">BMX</asp:ListItem>
                                <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                                <asp:ListItem Value="N">Nie wiem</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            Data ostatniej wycieczki:
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                            Data następnej wycieczki:<asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                            <br />
                            Średnia ilość przejechanych kilometrów na wycieczce:
                            <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                            <br />
                            Poziom umiejętności:<br />
                            <asp:DropDownList ID="poziomDropDownList" runat="server">
                                <asp:ListItem Value="P">Początkujący</asp:ListItem>
                                <asp:ListItem Value="S">Średniozaawansowany</asp:ListItem>
                                <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                            </asp:DropDownList>
                        </asp:View>
                    </asp:MultiView>
                    <br />
                    Preferowany rodzaj kontaktu:<br />
                    <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
                        <asp:ListItem Value="E">E-mail</asp:ListItem>
                        <asp:ListItem Value="T">Telefon</asp:ListItem>
                        <asp:ListItem Value="O">Osobisty</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Button ID="wyswietlButton" runat="server" OnClick="wyswietlButton_Click" Text="Wyświetl" />
                </asp:View>
                <asp:View ID="podsumowanie" runat="server">
                    Dziękujemy za wypełnienie ankiety!!!<br /> <a href="Default.aspx">Strona główna</a>
                </asp:View>
            </asp:MultiView>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
