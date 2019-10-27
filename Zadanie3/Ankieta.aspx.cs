using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ankieta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue == "Kobieta")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

        if(DropDownList1.SelectedItem.Value == "Mężczyzna")
        {
            Panel2.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
        }

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void sendButton_Click(object sender, EventArgs e)
    {
        Response.Redirect(
            @"Dziekujemy.aspx?imie=" + imie.Text +
            "&nazwisko=" + nazwisko.Text +
            "&adres=" + adres.Text +
            "&telefon=" + telefon.Text +
            "&email=" + TextBox4.Text +
            "&wiek=" + TextBox5.Text +
            "&wzrost=" + TextBox12.Text +
            "&waga=" + TextBox7.Text +
            "&kolorWlosow=" + TextBox13.Text +
            "&kolorOczu=" + TextBox9.Text +
            "&ubranie=" + TextBox10.Text +
            "&but=" + TextBox11.Text +
            "&exp=" + DropDownList2.Text +
            "&plec=" + DropDownList1.Text +
            "&biust=" + TextBox14.Text +
            "&miseczka=" + TextBox15.Text +
            "&talia=" + TextBox16.Text +
            "&biodra=" + TextBox17.Text +
            "&nogiK=" + TextBox18.Text +
            "&klatka=" + TextBox19.Text +
            "&pas=" + TextBox20.Text +
            "&nogiM=" + TextBox21.Text
        );
    }
}