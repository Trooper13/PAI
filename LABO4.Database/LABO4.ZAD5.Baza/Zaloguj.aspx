<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Zaloguj.aspx.cs" Inherits="Zaloguj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        Zaloguj się w serwisie
        <asp:Login ID="Login1" runat="server" FailureText="Błąd logowania" LoginButtonText="Zaloguj" PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Wprowadź hasło" RememberMeText="Zapamiętaj mnie" UserNameLabelText="Login:" UserNameRequiredErrorMessage="Wprowadź nazwę">
        </asp:Login>
        <a href="Odzyskiwanie.aspx">Zapomniałem hasła</a>
    </p>
</asp:Content>

