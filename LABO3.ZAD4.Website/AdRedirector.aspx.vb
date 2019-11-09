
Partial Class AdRedirector
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim adName As String = Request.QueryString("ad")
        Dim redirect As String = Request.QueryString("target")
        If (adName Is Nothing Or redirect Is Nothing) Then
            redirect = "TestAds.aspx"
        End If

        Dim doc As System.Xml.XmlDocument
        Dim docPath As String = "~/Adv/AdResponses.xml"

        doc = New System.Xml.XmlDocument()
        doc.Load(Server.MapPath(docPath))
        Dim root As System.Xml.XmlNode = doc.DocumentElement
        Dim xpathExpr As String
        xpathExpr = "descendant::ad[@adname='" & adName & "']"
        Dim adNode As System.Xml.XmlNode =
        root.SelectSingleNode(xpathExpr)
        If adNode IsNot Nothing Then
            Dim ctr As Integer =
            CInt(adNode.Attributes("hitCount").Value)
            ctr += 1
            Dim newAdNode As System.Xml.XmlNode =
            adNode.CloneNode(False)
            newAdNode.Attributes("hitCount").Value = ctr.ToString()
            root.ReplaceChild(newAdNode, adNode)
            doc.Save(Server.MapPath(docPath))
        End If
        Response.Redirect(redirect)

    End Sub
End Class
