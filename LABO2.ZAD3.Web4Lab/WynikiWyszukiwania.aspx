<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="WynikiWyszukiwania.aspx.cs" Inherits="WynikiWyszukiwania" %>

<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        Wyniki wyszukiwania:</p>
    <p>
        <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id{0}"
                    HeaderText="Nazwa produktu" DataTextField="Name" Text="Nazwa produktu"/>
                <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
                <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
                <asp:BoundField DataField="ListPrice" HeaderText="Cena" SortExpression="ListPrice" />
            </Columns>
        </asp:GridView>
        <br />Szukaj:<br />
    </p>
<p>
        <uc1:Szukaj ID="Szukaj1" runat="server" />
    </p>
</asp:Content>

