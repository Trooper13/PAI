﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Kategorie.ascx.cs" Inherits="Kontrolki_Kategorie" %>
<asp:LinqDataSource ID="kategorieLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" Select="new(ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID=null">
</asp:LinqDataSource>
<asp:Repeater ID="kategorieRepeater" runat="server" DataSourceID="kategorieLinqDataSource">
    <HeaderTemplate>
        <strong>Wybierz kategorię produktu</strong> <br />
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="Server" NavigateUrl='<%# "~/Produkty.aspx?KatID=" + Eval("ProductCategoryID") %>' Text='<%# Eval("Name") %>'>
        </asp:HyperLink>
        <br />
    </ItemTemplate>
</asp:Repeater>

