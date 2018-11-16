using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-QCGN9OK;Initial Catalog=Gogolf;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        String Q = "Select  * from users where username ='" + Text2.Text.Trim() + "' and password = '" + TextBox3.Text.Trim() + "'";
        SqlDataAdapter sda = new SqlDataAdapter(Q, sqlcon);

        DataTable dtbl = new DataTable();

        sda.Fill(dtbl); 

        if (dtbl.Rows.Count == 1)
        {
            foreach (DataRow row in dtbl.Rows)
            {
                Session["user"] = Text2.Text.Trim();
                Session["isadmin"] = row["isadmin"].ToString();
                Session["isDriver"] = row["isDriver"].ToString();
                Response.Redirect("Mainpage.aspx");
            }
        }
        else
        {
            Label1.Visible = true;
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-QCGN9OK;Initial Catalog=Gogolf;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        String Q = "INSERT INTO users (username,password,email) VALUES('" + TextBox4.Text.Trim() + "', '" + TextBox5.Text.Trim() + "', '" + TextBox6.Text.Trim() + "') ";
        SqlDataAdapter sda = new SqlDataAdapter(Q, sqlcon);


        DataTable dtbl = new DataTable();

        sda.Fill(dtbl);

        if (dtbl.Rows.Count == 1)
        {

            foreach (DataRow row in dtbl.Rows)
            {
                Session["user"] = TextBox4.Text.Trim();
                Session["isadmin"] = row["isadmin"].ToString();
                Response.Redirect("Mainpage.aspx");
            }
            
        }
        else
        {
            Label1.Visible = true;
        }

        Label2.Visible = true;

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}