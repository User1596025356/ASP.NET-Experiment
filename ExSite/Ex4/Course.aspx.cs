/*Course.aspx.cs*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex4_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindYear();
            BindTerm();
            BindCollege();
            BindTeacher();
        }
    }
    protected void BindYear()
    {
        dd1Year.Items.Clear();
        int startYear = DateTime.Now.Year - 10;
        int currentYear = DateTime.Now.Year;
        for (int i = startYear; i <= currentYear; i++)
        {
            dd1Year.Items.Add(new ListItem((i - 1).ToString() + "-" + i.ToString()));
        }
        dd1Year.SelectedValue = (currentYear - 1).ToString() + "-" + currentYear.ToString();
    }
    protected void BindTerm()
    {
        dd1Term.Items.Clear();
        for (int i = 1; i <= 2; i++)
        {
            dd1Term.Items.Add(i.ToString());
        }
    }
    protected void BindCollege()
    {
        dd1College.Items.Clear();
        dd1College.Items.Add(new ListItem("计算机学院"));
        dd1College.Items.Add(new ListItem("外国语学院"));
        dd1College.Items.Add(new ListItem("机电学院"));
    }
    protected void dd1College_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindTeacher();
    }
    protected void BindTeacher()
    {
        dd1Teacher.Items.Clear();
        switch (dd1College.SelectedValue)
        {
            case "计算机学院":
                dd1Teacher.Items.Add(new ListItem("曹明"));
                dd1Teacher.Items.Add(new ListItem("李秒"));
                dd1Teacher.Items.Add(new ListItem("王芳"));
                break;
            case "外国语学院":
                dd1Teacher.Items.Add(new ListItem("张强"));
                dd1Teacher.Items.Add(new ListItem("王第男"));
                break;
            case "机电学院":
                dd1Teacher.Items.Add(new ListItem("朱兆清"));
                dd1Teacher.Items.Add(new ListItem("毛沁程"));
                break;
        }
    }
}