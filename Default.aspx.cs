using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl, true); // A Down-and-dirty trick to reset the page
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
	    SqlConnection conn =
		    new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

	    conn.Open();
	    string checkuser = "SELECT count(*) FROM UserData WHERE UserName = @username";
	    int temp = 0;
	    SqlCommand cmd = new SqlCommand(checkuser, conn);
	    cmd.Parameters.Add(new SqlParameter("@username", txtUsername.Text.Trim()));
	    temp = Convert.ToInt32(cmd.ExecuteScalar());
	    if (temp > 0)
	    {
		    lblSuccess.Visible = true;
		    lblSuccess.Text = "User Already Exists! Try a different name.";
	    }
	    else
	    {
		    try
		    {
			    string insertQuery =
				    "INSERT INTO UserData (UserName, Email, Password, Country) VALUES (@username, @email, @password, @country)";

			    SqlCommand cmd2 = new SqlCommand(insertQuery, conn);

			    cmd2.Parameters.Add(new SqlParameter("@username", txtUsername.Text));
			    cmd2.Parameters.Add(new SqlParameter("@email", txtEmail.Text));
			    cmd2.Parameters.Add(new SqlParameter("@password", txtPassword.Text));
			    cmd2.Parameters.Add(new SqlParameter("@country", DropDownList1.SelectedItem.Text));
			    cmd2.ExecuteNonQuery();
			    Response.Redirect("Grid.aspx");
		    }
		    catch (Exception ex)
		    {
			    lblSuccess.Text = "Error: " + ex.ToString();
		    }
	    }
    }
}