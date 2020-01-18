<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" MasterPageFile="~/SzablonStrony.master" Title="Ankieta" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:AdRotator runat="server" AdvertisementFile="~/Adv/adv.xml"></asp:AdRotator>

    <title></title>

        <div>
            <asp:MultiView ID="mainMultiView" runat="server">
                <asp:View ID="ankietaGlowna" runat="server">
                    Imię:<br />
                    <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="imieTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="imieTextBox_TextBoxWatermarkExtender" TargetControlID="imieTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj imię" />
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
                    <ajaxToolkit:TextBoxWatermarkExtender ID="emailTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="emailTextBox_TextBoxWatermarkExtender" TargetControlID="emailTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj email" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Pole email jest wymgane">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Nieporpawny adres email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <br />
                    Telefon:<br />
                    <asp:TextBox ID="telefonTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:FilteredTextBoxExtender ID="telefonTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="telefonTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="telefonTextBox" />
                    <ajaxToolkit:TextBoxWatermarkExtender ID="telefonTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="telefonTextBox_TextBoxWatermarkExtender" TargetControlID="telefonTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj nr telefonu" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telefonTextBox" ErrorMessage="Niepoprawny nr telefonu" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                    <br />
                    Ulica:<br />
                    <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="ulicaTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="ulicaTextBox_TextBoxWatermarkExtender" TargetControlID="ulicaTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj ulicę" />
                    <br />
                    Nr. domu<br />
                    <asp:TextBox ID="nrDomuTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:FilteredTextBoxExtender ID="nrDomuTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="nrDomuTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="nrDomuTextBox" />
                    <ajaxToolkit:TextBoxWatermarkExtender ID="nrDomuTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="nrDomuTextBox_TextBoxWatermarkExtender" TargetControlID="nrDomuTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj nr domu" />
                    <br />
                    Nr. mieszkania<br />
                    <asp:TextBox ID="mieszkanieTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:FilteredTextBoxExtender ID="mieszkanieTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="mieszkanieTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="mieszkanieTextBox" />
                    <ajaxToolkit:TextBoxWatermarkExtender ID="mieszkanieTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="mieszkanieTextBox_TextBoxWatermarkExtender" TargetControlID="mieszkanieTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj nr mieszkania" />
                    <br />
                    Kod pocztowy:<br />
                    <asp:TextBox ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:FilteredTextBoxExtender ID="kodPocztowyTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="kodPocztowyTextBox_FilteredTextBoxExtender" FilterType="Custom, Numbers" TargetControlID="kodPocztowyTextBox" ValidChars="-" />
                    <ajaxToolkit:TextBoxWatermarkExtender ID="kodPocztowyTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="kodPocztowyTextBox_TextBoxWatermarkExtender" TargetControlID="kodPocztowyTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj kod pocztowy" />
                    <br />
                    Miejscowość:<br />
                    <asp:TextBox ID="miejscowoscTextBox" runat="server"></asp:TextBox>
                    <ajaxToolkit:TextBoxWatermarkExtender ID="miejscowoscTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="miejscowoscTextBox_TextBoxWatermarkExtender" TargetControlID="miejscowoscTextBox" WatermarkCssClass="watermarked" WatermarkText="Podaj miejscowość" />
                    <br />
                    <asp:MultiView ID="ankietaMultiView" runat="server">
                        <asp:View ID="nowyView" runat="server">
                            Wzrost:<br />
                            <asp:TextBox ID="wzrostTextBox" runat="server" Width="128px"></asp:TextBox>
                            <ajaxToolkit:FilteredTextBoxExtender ID="wzrostTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="wzrostTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="wzrostTextBox" />
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
                            <ajaxToolkit:FilteredTextBoxExtender ID="odTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="odTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="odTextBox" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="odTextBox" ErrorMessage="Nieprawidłowa kwota - podaj zaokrąglając do pełnych złotych" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                            <br />
                            do:
                            <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                            <ajaxToolkit:FilteredTextBoxExtender ID="doTextBox_FilteredTextBoxExtender" runat="server" BehaviorID="doTextBox_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="doTextBox" />
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
                            <asp:TextBox ID="ostatniaTextBox" runat="server"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="ostatniaTextBox_CalendarExtender" runat="server" BehaviorID="ostatniaTextBox_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="ostatniaTextBox" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="ostatniaTextBox_TextBoxWatermarkExtender" runat="server" BehaviorID="ostatniaTextBox_TextBoxWatermarkExtender" TargetControlID="ostatniaTextBox" WatermarkCssClass="watermarked" WatermarkText="Poda datę ostatniej wycieczki" />
                            <br />
                            Data następnej wycieczki:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="TextBox1" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkCssClass="watermarked" WatermarkText="Podaj datę następnej wycieczki" />
                            <br />
                            Średnia ilość przejechanych kilometrów na wycieczce:
                            <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="kmTextBox_CalendarExtender" runat="server" BehaviorID="kmTextBox_CalendarExtender" FirstDayOfWeek="Monday" TargetControlID="kmTextBox" />
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
</asp:Content>
