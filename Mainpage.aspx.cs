using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mainpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["user"].ToString();
        Label2.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["isadmin"].ToString() == "True")
        {
            Response.Redirect("adminpage.aspx");
        }else
        {
            Label2.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["isDriver"].ToString() == "True")
        {
            Response.Redirect("Driverpage.aspx");
        }
        else
        {
            Label5.Visible = true;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
      
        if (row!=null  )
        {
           SqlDataSource1.UpdateCommand = "UPDATE [golfCar] SET [Requested] = '1' WHERE [id] ='" + row.Cells[1].Text+ "'";
           SqlDataSource1.Update();

            SqlDataSource2.InsertCommand = "INSERT INTO[Orders] ([Requester],[CartNumber]) VALUES('"+ Session["user"].ToString().Trim() + "' , '"+ row.Cells[1].Text + "')";
            SqlDataSource2.Insert();

            Label4.Visible = true;
        }
        else
        {
            Label4.Text = "Sorry you cannot add any more because you either did not select or the Cart is full!!";
            Label4.Visible = true;
        }
              
    }
}