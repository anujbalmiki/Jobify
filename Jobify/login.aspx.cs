using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_auth : System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand cmd;
    SqlDataReader sdr;
    //String sqlconnection = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
    String email, password = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqlconnection = "Data Source=ANUJ\\SQLEXPRESS;Initial Catalog=Jobify;Integrated Security=True";
        sqlcon = new SqlConnection(sqlconnection);
        sqlcon.Open();
    }
    protected void Login(object sender, EventArgs e)
    {
        try
        {
            email = etext.Text;
            password = ptext.Text; 
            email = email.Trim();
            password = password.Trim();
            //sqlcon = new SqlConnection(sqlconnection);
            String sqlquery = "Select * from Users where email = '"+ email + "' and password = '" + password + "'";
            cmd = new SqlCommand(sqlquery, sqlcon);
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (remember.Checked)
                {
                    Response.Cookies["uemail"].Expires = DateTime.Now.AddDays(30);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(30);
                }
                else
                {
                    Response.Cookies["uemail"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(-1);

                }
                Session["uemail"] = sdr["email"].ToString();
                Session["upass"] = sdr["password"].ToString();
                //HyperLink7.Text = "Profile";
                Response.Redirect("profile.aspx");
            }
            else
            {
                showErrorMsg();
            }
            sqlcon.Close();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ ex.Message + "')</script>");
        }
        sqlcon.Close();
    }

    private void showErrorMsg()
    {
        lblMsg.Visible = true;
        lblMsg.Text = "The entered credentials are incorrect...";
        lblMsg.CssClass = "alert alert-danger";
    }
}