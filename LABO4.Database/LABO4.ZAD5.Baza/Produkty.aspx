<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.master" AutoEventWireup="true" CodeFile="Produkty.aspx.cs" Inherits="Produkty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 220px;
            height: 19px;
        }
    </style>

    <script type="text/javascript" >
    function abortPB() {
        var obj = Sys.WebForms.PageRequestManager.getInstance();
        if (obj.get_isInAsyncPostBack()) { obj.abortPostBack(); }
    }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
            </asp:ScriptManagerProxy>
            <br />
            <asp:LinqDataSource ID="KategorieLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" Select="new(ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID=null">
            </asp:LinqDataSource>
            <br />
            <asp:ListBox ID="KategorieListBox" runat="server" AutoPostBack="True" DataSourceID="KategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID" OnSelectedIndexChanged="KategorieListBox_SelectedIndexChanged"></asp:ListBox>
            <br />
            <asp:LinqDataSource ID="PodkategorieLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" EntityTypeName="" Select="new (ProductCategoryID, Name)" TableName="ProductCategories" Where="ParentProductCategoryID == @ParentProductCategoryID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="KategorieListBox" DefaultValue="-1" Name="ParentProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <br />
            <asp:ListBox ID="PodkategorieListBox" runat="server" AutoPostBack="True" DataSourceID="PodkategorieLinqDataSource" DataTextField="Name" DataValueField="ProductCategoryID"></asp:ListBox>
            <br />
            <asp:LinqDataSource ID="ProduktyLinqDataSource" runat="server" ContextTypeName="AdventureWorksDataContext" EntityTypeName="" Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" TableName="Products" Where="ProductCategoryID == @ProductCategoryID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="PodkategorieListBox" DefaultValue="-1" Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ProduktyLinqDataSource" EnableViewState="False" PageSize="5">
                <Columns>
                    <asp:ImageField DataAlternateTextField="Name" DataAlternateTextFormatString="Miniatura{0}" DataImageUrlField="ProductID" DataImageUrlFormatString="~/Miniatura.aspx?id={0}">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" HeaderText="Nazwa produktu" />
                    <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" ReadOnly="True" SortExpression="ProductNumber" />
                    <asp:BoundField DataField="Color" HeaderText="Kolor" ReadOnly="True" SortExpression="Color" />
                    <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" HeaderText="Cena" ReadOnly="True" SortExpression="ListPrice" />
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Zakupy.aspx?id={0}" HeaderText="Dodaj do koszyka" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>

    </asp:UpdatePanel>
    <br />
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img alt="" class="auto-style2" src="../Images/ajax-loader.gif" />
            <br /><input type="button" id="abortButton" onclick="abortPB()" value="Anuluj aktualizację" />
        </ProgressTemplate>
        
    </asp:UpdateProgress>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

