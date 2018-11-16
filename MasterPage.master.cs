using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Session["user"].ToString().Length > 0)
            {
                Button1.Text = "Logout";
                Label1.Text = Session["user"].ToString();
            }
            else
            {
                Button1.Text = "Login";
                Label1.Visible = false;
            }
        }catch
        {
            Button1.Text = "Login";
            Label1.Visible = false;
        }
       
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Logout")
        {
            Session.RemoveAll();
            Response.Redirect("Registration.aspx");
        }
        else
        {
            Response.Redirect("Registration.aspx");
        }
    }
}
