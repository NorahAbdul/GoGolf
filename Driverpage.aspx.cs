using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Driverpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        if (row != null)
        {
            SqlDataSource1.UpdateCommand = "UPDATE[Orders] SET [Driver] ='"+ Session["user"].ToString().Trim() + "' WHERE[order number] = '"+row.Cells[1].Text+"'";
            SqlDataSource1.Update();

            SqlDataSource2.UpdateCommand = "UPDATE [golfCar] SET [Booked] = '1' WHERE [id] ='" + row.Cells[4].Text + "'";
            SqlDataSource2.Update();
        }
        else
        {
          
        }
    }
}