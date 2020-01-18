<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="WP.aspx.cs" Inherits="Zarzadzanie_WP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Zarządzanie kontrolkami WebPart<br />
    Wybierz tryb:<br />
<asp:DropDownList ID="trybDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="trybDropDownList_SelectedIndexChanged">
    <asp:ListItem Value="0">Przeglądaj</asp:ListItem>
    <asp:ListItem Value="1">Projektuj</asp:ListItem>
    <asp:ListItem Value="2">Edytuj</asp:ListItem>
    <asp:ListItem Value="3">Katalog</asp:ListItem>
</asp:DropDownList>
<br />
    <asp:EditorZone ID="EditorZone1" runat="server">
        <ZoneTemplate>
            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
        </ZoneTemplate>
    </asp:EditorZone>
    <br />
    <asp:CatalogZone ID="CatalogZone1" runat="server">
        <ZoneTemplate>
            <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
        </ZoneTemplate>
    </asp:CatalogZone>
</asp:Content>

