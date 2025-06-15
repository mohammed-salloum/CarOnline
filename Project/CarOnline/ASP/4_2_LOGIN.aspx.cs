using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ASP_4_2_Login : System.Web.UI.Page
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
            command.CommandText = "select * from users where username = @p1";
            command.Parameters.AddWithValue("@p1", TextBox_username.Text);
            SqlDataReader dr = command.ExecuteReader();


            if (dr.HasRows)
            {
                dr.Read();
                if (dr.GetString(3) == TextBox_passowrd.Text)
                {

                    Session["@username"] = dr.GetString(3);

                    if (Session["@username"].ToString() == "ADMIN")
                    {
                        Response.Redirect("~/ASP/ADMIN.aspx");
                    }

                    else if (Session["@username"].ToString() != null)
                        Response.Redirect("~/ASP/ANYUSER.aspx");

                }

                else
                    Response.Write("Wrong Passowrd");

            }
            else
                Response.Write("Wrong Username ");
            

            dr.Close();
            connecttion.Close();


        }
        catch (SqlException ex)
        {
            if (ex.Number == 53)
                Response.Write("Server error");
        }

    }
}