﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dziekujemy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        greetingsLabel.Text = Request.QueryString["imie"] + ", dziękujemy za wypełnienie ankiety.";
    }
}