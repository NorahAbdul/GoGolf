using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.UpdateCommand = "UPDATE [golfCar] SET [Capacity] = '"+ TextBox6.Text.Trim() + "' WHERE [Id] ='"+DropDownList1.Text+"'";
        SqlDataSource1.Update();
        Label1.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.DeleteCommand = "DELETE FROM [golfCar] WHERE [Id] ='" + DropDownList2.Text + "'";
        SqlDataSource1.Delete();
        Label2.Visible = true;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommand = "INSERT INTO [golfCar] ([Capacity]) VALUES ('"+ TextBox1.Text.Trim()+"')";
        SqlDataSource1.Insert();
        Label3.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataSource2.UpdateCommand = "UPDATE [users] SET [isAdmin] = '1' WHERE [id] ='"+DropDownList3.Text.Trim()+"'";
        SqlDataSource2.Update();
        Label4.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource2.UpdateCommand = "UPDATE [users] SET [isAdmin] = '0' WHERE [id] ='" + DropDownList4.Text.Trim() + "'";
        SqlDataSource2.Update();
        Label4.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlDataSource2.UpdateCommand = "UPDATE [users] SET [isDriver] = '1' WHERE [id] ='" + DropDownList5.Text.Trim() + "'";
        SqlDataSource2.Update();
        Label6.Visible = true;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlDataSource2.UpdateCommand = "UPDATE [users] SET [isDriver] = '0' WHERE [id] ='" + DropDownList6.Text.Trim() + "'";
        SqlDataSource2.Update();
        Label7.Visible = true;
    }

}