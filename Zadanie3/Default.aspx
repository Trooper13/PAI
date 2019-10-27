<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="113px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgQMCjTUhP0Zv0GeyxS0599tdd6W16X75tfLScz2yC3heuVQv&amp;s" Width="545px" />
        <div>
            <br />
            Witamy na stronie agencji Modelek i Modeli !!!<br />
            <br />
            Jeżeli chcesz znaleźć się w naszej bazie i spełnić swoje marzenia w modelingu wypełnij naszą ankietę.<br />
            <br />
            <asp:HyperLink ID="HyperLinkAnkieta" runat="server" NavigateUrl="~/Ankieta.aspx">Ankieta</asp:HyperLink>
        </div>
    </form>
</body>
</html>
