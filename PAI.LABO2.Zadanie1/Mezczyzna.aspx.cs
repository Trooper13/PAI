﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kobieta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showLabel.Text = "Witaj " + Request.QueryString["imie"];
    }

    protected void showMaleButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Dziekujemy.aspx?imie=" + Request.QueryString["imie"]);
    }
}