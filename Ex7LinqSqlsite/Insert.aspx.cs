﻿/*Insert.aspx.cs*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert : System.Web.UI.Page
{
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        Category category = new Category();
        category.Name = txtName.Text;
        category.Descn = txtDescn.Text;
        db.Category.InsertOnSubmit(category);
        db.SubmitChanges();
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}