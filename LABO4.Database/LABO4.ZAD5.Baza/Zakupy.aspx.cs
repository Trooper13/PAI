using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Zakupy : System.Web.UI.Page
{
    Koszyk koszyk;
    protected void Page_Load(object sender, EventArgs e)
    {
        koszyk = (Koszyk)Session["koszyk"];
        if (koszyk == null)
        {
            koszyk = new Koszyk();
            Session["koszyk"] = koszyk;
        }

        if (!IsPostBack)
        {
            string req = Request.QueryString["ProdID"];
            if (req != null)
            {
                int prodID = int.Parse(Request.QueryString["ProdID"]);
                koszyk.Dodaj(prodID);
                // usuwanie z adresu prodID
                string url = Request.Url.AbsolutePath;
                System.Web.HttpContext.Current.RewritePath(url, "", "");
            }
        }
        KoszykGridView.DataSource = koszyk.Pobierz();
        KoszykGridView.DataBind();
        kasaButton.Enabled = (koszyk.Ilosc > 0);
    }

    protected void KoszykGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        koszyk.UsunElement(e.RowIndex);
        KoszykGridView.DataBind();
    }

    protected void KoszykGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        KoszykGridView.EditIndex = e.NewEditIndex;
        KoszykGridView.DataBind();
    }

    protected void KoszykGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox tb = (TextBox)
KoszykGridView.Rows[e.RowIndex].Controls[2].Controls[0];
        try
        {
            int wartosc = int.Parse(tb.Text);
            if (wartosc < 0) { wartosc = wartosc * (-1); }
            koszyk.AktualizacjaIlosc(e.RowIndex, wartosc);
        }
        catch { e.Cancel = true; }
        KoszykGridView.EditIndex = -1;
        KoszykGridView.DataBind();
    }

    protected void KoszykGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        e.Cancel = true;
        KoszykGridView.EditIndex = -1;
        KoszykGridView.DataBind();
    }
}