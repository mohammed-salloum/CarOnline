using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class ASP_2_1_REVIWNEWCAR : System.Web.UI.Page
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
                DropDownList_Company.DataValueField = "company"; // the id of the items displayed //We select same the item text to help me in Gridviwe condition (WHERE) because wn need VALUE 
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
                DropDownList_Model.DataValueField = "model"; // the id of the items displayed
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

        if (Session["@username"] != null)
        {
            Label_sessiun.Text = " مرحبا " + Session["@username"].ToString();
        }
        else
            Button_login.Visible = true;


        if (!IsPostBack)//only when load
        {
            BindDropDownList_Company();
            BindDropDownList_Model(DropDownList_Company.SelectedItem.Text);//when refresh
            // To hide GridView if company is chanched
            GridView_Search.Visible = false;
            GridView_Advance.Visible = false;
            Button_AdvanceShowCar.Visible = false;
        }
    }
    protected void DropDownList_Company_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindDropDownList_Model(DropDownList_Company.SelectedItem.Text);
        GridView_Search.Visible = false;
        GridView_Advance.Visible = false;
    }

    protected void Button_Advance_search_Click(object sender, EventArgs e)
    {
        Label_Fuel.Visible = true;
        CheckBoxList_Fuel.Visible = true;
        Label_Geer.Visible = true;
        RadioButtonList_Geer.Visible = true;
        Button_ShowCar.Visible = false;
        GridView_Search.Visible = false;
        Button_AdvanceShowCar.Visible = true;
       Button_Advance_search.Visible = false;
        
    }

    protected void Button_ShowchCar_Click(object sender, EventArgs e)
    {

        // to refresh griddview
        this.GridView_Search.DataBind();
            GridView_Search.Visible = true;
        GridView_Search.Focus();
        if (Session["@username"] == null)
        {
            GridView_Search.Columns[6].Visible = false;
            GridView_Search.Columns[7].Visible = false;
        }

    }
    protected void Button_AdvanceShowCar_Click(object sender, EventArgs e)
    {

        // to refresh griddview
        this.GridView_Advance.DataBind();
        GridView_Advance.Visible = true;
        GridView_Advance.Focus();
        if (Session["@username"] == null)
        {
            GridView_Advance.Columns[6].Visible = false;
            GridView_Advance.Columns[7].Visible = false;
        }


    }

    protected void Button_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ASP/4_2_LOGIN.aspx");
    }
}