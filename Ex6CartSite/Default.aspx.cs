﻿/*Default.aspx.cs*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex6CartSite_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuy_Click(object sender, EventArgs e)
    {
        for(int i = 0; i < chklsPet.Items.Count; i++)
        {
            if (chklsPet.Items[i].Selected)
            {
                Session["Cart"] += chklsPet.Items[i].Text + ",";
            }
        }
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}