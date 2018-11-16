using System;
using System.Data.SqlClient;
using System.Data;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-QCGN9OK;Initial Catalog=Gogolf;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            String Q = "UPDATE users SET Messages = '" + TextBox3.Text.Trim() + "'WHERE username = '" + TextBox1.Text.Trim() + "' ";
            SqlDataAdapter sda = new SqlDataAdapter(Q, sqlcon);


            DataTable dtbl = new DataTable();

            sda.Fill(dtbl);
            Label2.Visible = true;
        }
    }
}
