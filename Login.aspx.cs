using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void btnLogin_Click(object sender, EventArgs e)
	{
		SqlConnection conn =
			new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

		conn.Open();

		string checkuser =
			"SELECT count(*) FROM UserData WHERE Username=@username AND Password=@password";

		SqlCommand cmd = new SqlCommand(checkuser, conn);

		cmd.Parameters.AddWithValue("@username", txtUsername.Text);
		cmd.Parameters.AddWithValue("@password", txtPassword.Text);

		int temp = Convert.ToInt32(cmd.ExecuteScalar());

		conn.Close();

		if (temp == 1)
		{
			Session["user"] = txtUsername.Text;
			lblFail.Visible = true;
			lblFail.Text = "User credentials are validated!";
			Response.Redirect("Grid.aspx");
		}
		else
		{
			lblFail.Visible = true;
			lblFail.Text = "Invalid user credentials! Try again!";
		}
	}
}