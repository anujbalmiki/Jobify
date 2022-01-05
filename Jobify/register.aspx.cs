using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    SqlConnection sqlcon;
    String success = "Registered Successfully";
    SqlDataReader sdr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqlconnection = "Data Source=ANUJ\\SQLEXPRESS;Initial Catalog=Jobify;Integrated Security=True";
        sqlcon = new SqlConnection(sqlconnection);
        sqlcon.Open();
        //Response.Write("Connection Established");
    }
    public void Register(object sender, EventArgs e)
    {
        String name = Textbox1.Text;
        name = name.Trim();
        String email = Textbox2.Text;
        email = email.Trim();
        String password = Textbox3.Text;
        password = password.Trim();
        String who = RadioButtonList1.Text;
        String sqlquery = "Select * from Users where email = '" + email + "'";
        cmd = new SqlCommand(sqlquery, sqlcon);
        sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            showErrorMsg();
        }
        else
        {
            try
            {
                SqlDataAdapter sqda = new SqlDataAdapter();
                String sql = "Insert into Users(name,email,password,roll) Values('" + name + "','" + email + "','" + password + "','" + who + "')";
                sqda.InsertCommand = new SqlCommand(sql, sqlcon);
                sqda.InsertCommand.ExecuteNonQuery();
                Session["uemail"] = email.ToString();
                Session["upass"] = password.ToString();
                //HyperLink7.Text = "Profile";
                Response.Write("<script>alert('" + success + "')</script>");
                Response.Redirect("profile.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            sqlcon.Close();
        }
    }
    private void showErrorMsg()
    {
        lblMsg.Visible = true;
        lblMsg.Text = "This Email already exists,Please Register with another Email";
        lblMsg.CssClass = "alert alert-danger";
    }
}