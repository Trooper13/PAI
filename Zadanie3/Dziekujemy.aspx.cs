using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dziekujemy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        greetingsLabel.Text = Request.QueryString["imie"];
        Label1.Text = Request.QueryString["imie"];
        Label2.Text = Request.QueryString["nazwisko"];
        Label3.Text = Request.QueryString["adres"];
        Label4.Text = Request.QueryString["telefon"];
        Label5.Text = Request.QueryString["email"];
        Label6.Text = Request.QueryString["wiek"];
        Label7.Text = Request.QueryString["wzrost"];
        Label8.Text = Request.QueryString["waga"];
        Label9.Text = Request.QueryString["kolorWlosow"];
        Label10.Text = Request.QueryString["kolorOczu"];
        Label11.Text = Request.QueryString["ubranie"];
        Label12.Text = Request.QueryString["but"];
        Label13.Text = Request.QueryString["exp"];
        Label14.Text = Request.QueryString["plec"];

        Label15.Text = Request.QueryString["biust"];
        Label16.Text = Request.QueryString["miseczka"];
        Label17.Text = Request.QueryString["talia"];
        Label18.Text = Request.QueryString["biodra"];
        Label19.Text = Request.QueryString["nogiK"];

        Label20.Text = Request.QueryString["klatka"];
        Label21.Text = Request.QueryString["pas"];
        Label22.Text = Request.QueryString["nogiM"];

    }

    protected void Panel1_OnPageLoad(object sender, EventArgs e)
    {
        if (Request.QueryString["plec"] == "Kobieta")
        {
            Panel1.Visible = true;
        }
        if (Request.QueryString["plec"] == "Mężczyzna")
        {
            Panel2.Visible = true;
        }
    }
}