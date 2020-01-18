<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Szukaj.ascx.cs" Inherits="Kontrolki_Szukaj" %>

Podaj nazwę produktu:
<asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" runat="server" ControlToValidate="nazwaTextBox" ErrorMessage="Podaj fragment nazwy produktu">*</asp:RequiredFieldValidator>
<br />
<asp:Button ID="szukajButton" runat="server" OnClick="szukajButton_Click" style="margin-left: 0px" Text="Szukaj" />
