using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["uemail"] != null)
        {
            HyperLink5.Text = "Profile";
            HyperLink5.NavigateUrl = "profile.aspx";
            HyperLink6.Visible = true;
        }
    }
    protected void  Logout(object sender, EventArgs e)
    { 
        Session.Remove("uemail");
        Session.RemoveAll();
        Response.Redirect("index.aspx");
    }
}
