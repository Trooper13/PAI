<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NoweProdukty.ascx.cs" Inherits="Kontrolki_Produkty" %>
<p>
    <br />
</p>
<asp:ListView ID="noweProduktyListView" runat="server" GroupPlaceholderID="listaPlaceHolder" ItemPlaceholderID="listaPlaceHolder">
    <LayoutTemplate>
        <asp:PlaceHolder ID="listaPlaceHolder" runat="server" />
    </LayoutTemplate>
    <ItemTemplate>
        <div class="OknoProduktow">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Szczegoly.aspx?id="+Eval("ProductID") %>' Text='<%# Eval("Name") %>' /> <br />
            <asp:Image ID="produktyImage" runat="server" ImageUrl='<%# "~/Miniatura.aspx?id="+Eval("ProductID") %>' AlternateText='<%# Eval("Name") %>' /> <br />
            Kategoria: <%# Eval("ProductCategory.Name") %> <br />
            Kolor: <%# Eval("Color")  %> <br />
            Cena: <%# Eval("ListPrice", "{0:C}") %> <br />
        </div>
    </ItemTemplate>
</asp:ListView>

