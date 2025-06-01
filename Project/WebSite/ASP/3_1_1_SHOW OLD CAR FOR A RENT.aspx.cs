using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class ASP_3_1_1_SHOW_OLD_CAR_FOR_A_RENT : System.Web.UI.Page
{
    private string GetConnectionString()
    {
        //calling up the connection string that was set up from the web config file
        return System.Configuration.ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
    }
    // fill DropDownList_Company by data
    private void BindDropDownList_Company()
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(GetConnectionString());
        try
        {
            connection.Open();
            string sqlStatement = "SELECT * FROM companytable";
            SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownList_Company.DataSource = dt;
                DropDownList_Company.DataTextField = "company"; // the items to be displayed in the list items
                DropDownList_Company.DataValueField = "companyid"; // the id of the items displayed
                DropDownList_Company.DataBind();
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    }
    // fill DropDownList_Model by data if condition is done
    private void BindDropDownList_Model(string field)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(GetConnectionString());
        try
        {
            connection.Open();
            string sqlStatement = "SELECT * FROM modeltable WHERE comp_mod_id = @Value1";
            SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);
            sqlCmd.Parameters.AddWithValue("@Value1", field);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                DropDownList_Model.DataSource = dt;
                DropDownList_Model.DataTextField = "model"; // the items to be displayed in the list items
                DropDownList_Model.DataValueField = "modelid"; // the id of the items displayed
                DropDownList_Model.DataBind();
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindDropDownList_Company();
            BindDropDownList_Model(DropDownList_Company.SelectedItem.Text);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            FileUpload img = (FileUpload)FileUpload_Show;
            Byte[] imgByte = null;
            if (img.HasFile && img.PostedFile != null)
            {
                //To create a PostedFile
                HttpPostedFile File = FileUpload_Show.PostedFile;
                //Create byte Array with file len
                imgByte = new Byte[File.ContentLength];
                //force the control to load data in array
                File.InputStream.Read(imgByte, 0, File.ContentLength);
            }
            SqlConnection connecttion = new SqlConnection();
            connecttion.ConnectionString = WebConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            connecttion.Open();
            SqlCommand command1 = new SqlCommand();
            command1.Connection = connecttion;

            command1.CommandText = "INSERT INTO rentold (company, model, datamading, fuel, geer,TL, Mob, carplaces, price, image, imageUrl) VALUES (@p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11)";
            command1.Parameters.AddWithValue("@p1", DropDownList_Company.SelectedItem.Text);
            command1.Parameters.AddWithValue("@p2", DropDownList_Model.SelectedItem.Text);
            command1.Parameters.AddWithValue("@p3", Calendar_Show.SelectedDate);
            command1.Parameters.AddWithValue("@p4", CheckBoxList_Fuel.SelectedValue);
            command1.Parameters.AddWithValue("@p5", RadioButtonList_Geer.SelectedValue);
            command1.Parameters.AddWithValue("@p6", TextBox_Telephone.Text);
            command1.Parameters.AddWithValue("@p7", TextBox_Mobile.Text);
            command1.Parameters.AddWithValue("@p8", DropDownList_Place.SelectedValue);
            command1.Parameters.AddWithValue("@p9", TextBox_Price.Text);
            command1.Parameters.AddWithValue("@p10", imgByte);

            SqlCommand command2 = new SqlCommand();
            command2.Connection = connecttion;
            command2.CommandText = "select  TOP 1 id from rentold ORDER BY ID DESC ";
            SqlDataReader dr = command2.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                string id1;
                id1 = dr["id"].ToString();
                int id2 = Int32.Parse(id1) + 1;
                string @id = id2.ToString();
                command1.Parameters.AddWithValue("@p11", "~/TOSHOWIMGE/ShowImageRentOld.ashx?id=" + @id);
                dr.Close();
            }
            else
            {
                string @id = "1";
                command1.Parameters.AddWithValue("@p11", "~/TOSHOWIMGE/ShowImageRentOld.ashx?id=" + @id);
                dr.Close();

            }

            int count = command1.ExecuteNonQuery();

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


    protected void DropDownList_Company_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindDropDownList_Model(DropDownList_Company.SelectedItem.Text);
    }
}