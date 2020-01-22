<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reklama.ascx.cs" Inherits="Kontrolki_Reklama" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Adv/adv.xml" />
        <ajaxToolkit:AlwaysVisibleControlExtender ID="AdRotator1_AlwaysVisibleControlExtender" runat="server" BehaviorID="AdRotator1_AlwaysVisibleControlExtender" HorizontalSide="Right" TargetControlID="AdRotator1" />
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="6000">
        </asp:Timer>
    </ContentTemplate>
</asp:UpdatePanel>


