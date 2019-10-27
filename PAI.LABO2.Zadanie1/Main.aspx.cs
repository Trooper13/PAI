using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void showButton_Click(object sender, EventArgs e)
    {
        if (sexDropDownList.Text == "K")
        {
            Response.Redirect("Kobieta.aspx?imie=" + nameTextBox.Text);
        }
        else
        {
            Response.Redirect("Mezczyzna.aspx?imie=" + nameTextBox.Text);
        }
    }
}