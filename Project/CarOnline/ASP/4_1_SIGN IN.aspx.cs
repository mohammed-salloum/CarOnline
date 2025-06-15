using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ASP_4_SIGN_IN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connecttion = new SqlConnection();
            connecttion.ConnectionString = WebConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            connecttion.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connecttion;

            command.CommandText = "insert into users (username, Email, password) values(@p1,@p2,@p3)";
            command.Parameters.AddWithValue("@p1", TextBox_username.Text);
            command.Parameters.AddWithValue("@p2", TextBox_email.Text);
            command.Parameters.AddWithValue("@p3", TextBox_passowrd.Text);




            int count = command.ExecuteNonQuery();

            if (count == 1)
            {
                Response.Write("Done");
            }

            connecttion.Close();

        }
        catch (SqlException ex)
        {
            Response.Write("Error");
        }

    }
}