﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASP_ANYUSER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (!IsPostBack)
                Label_Welcome.Text = " مرحبا " + Session["@username"].ToString();
    }
}