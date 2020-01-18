using System;

public partial class OproznijKoszyk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["koszyk"] = null;
        Response.Redirect("~/Default.aspx");
    }
}