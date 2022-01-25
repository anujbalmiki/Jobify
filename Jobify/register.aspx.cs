using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
        String sqlconnection = "Data Source=ANUJ\\SQLEXPRESS;Initial Catalog=Jobify;Integrated Security=True; MultipleActiveResultSets=True";
        sqlcon = new SqlConnection(sqlconnection);
        sqlcon.Open();
        //Response.Write("Connection Established");
    }
    public void Register(object sender, EventArgs e)
    {
        String name = Textbox1.Text;
        name = name.Trim();
        String email = Textbox2.Text;
        String email1 = email.Trim();
        String password = Textbox3.Text;
        password = password.Trim();
        String who = RadioButtonList1.Text;
        String sqlquery = "Select * from Users where email = '" + email1 + "'";
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
                String sql = "Insert into Users(name,email,password,roll) Values('" + name + "','" + email1 + "','" + password + "','" + who + "')";
                sqda.InsertCommand = new SqlCommand(sql, sqlcon);
                sqda.InsertCommand.ExecuteNonQuery();
                Session["uemail"] = email1.ToString();
                Session["upass"] = password.ToString();
                //HyperLink7.Text = "Profile";

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("jobifyjobs@gmail.com");
                mail.To.Add(email1);
                mail.Subject = "Registered with JOBIFY";
                mail.Body = "<html>  <head>    <title></title>    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />    <meta name='viewport' content='width=device-width, initial-scale=1'>    <meta http-equiv='X-UA-Compatible' content='IE=edge' />    <style type='text/css'>        @media screen {            @font-face {                font-family: 'Lato';                font-style: normal;                font-weight: 400;                src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: normal;                font-weight: 700;                src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: italic;                font-weight: 400;                src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: italic;                font-weight: 700;                src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');            }        }        /* CLIENT-SPECIFIC STYLES */        body,        table,        td,        a {            -webkit-text-size-adjust: 100%;            -ms-text-size-adjust: 100%;        }        table,        td {            mso-table-lspace: 0pt;            mso-table-rspace: 0pt;        }        img {            -ms-interpolation-mode: bicubic;        }        /* RESET STYLES */        img {            border: 0;            height: auto;            line-height: 100%;            outline: none;            text-decoration: none;        }        table {            border-collapse: collapse !important;        }        body {            height: 100% !important;            margin: 0 !important;            padding: 0 !important;            width: 100% !important;        }        /* iOS BLUE LINKS */        a[x-apple-data-detectors] {            color: inherit !important;            text-decoration: none !important;            font-size: inherit !important;            font-family: inherit !important;            font-weight: inherit !important;            line-height: inherit !important;        }        /* MOBILE STYLES */        @media screen and (max-width:600px) {            h1 {                font-size: 32px !important;                line-height: 32px !important;            }        }        /* ANDROID CENTER FIX */        div[style*='margin: 16px 0;'] {            margin: 0 !important;        }    </style></head>  <body style='background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;'>        <!-- HIDDEN PREHEADER TEXT -->          <table border='0' cellpadding='0' cellspacing='0' width='100%'>            <!-- LOGO -->            <tr>                <td bgcolor='#FFA73B' align='center'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td align='center' valign='top' style='padding: 40px 10px 40px 10px;'></td>                        </tr>                    </table>                </td>            </tr>            <tr>                <td bgcolor='#FFA73B' align='center' style='padding: 0px 10px 0px 10px;'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td bgcolor='#ffffff' align='center' valign='top' style='padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;'>                                <h1 style='font-size: 48px; font-weight: 400; margin: 2;'>Welcome!<br />                                    Into Jobify</h1>                                <img src=' https://img.icons8.com/clouds/100/000000/handshake.png' width='125' height='120' style='display: block; border: 0px;' />                            </td>                        </tr>                    </table>                </td>            </tr>            <tr>                <td bgcolor='#f4f4f4' align='center' style='padding: 0px 10px 0px 10px;'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <p style='margin: 0;'>We're excited to have you get started in our community.</p>                            </td>                        </tr>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <p style='margin: 0;'>If you have any questions, just reply to this email—we're always happy to help out.</p>                            </td>                        </tr>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <p style='margin: 0;'>Cheers,<br>                                    Jobify Team</p>                            </td>                        </tr>                    </table>                </td>            </tr>        </table>    </body>    </html>";
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("jobifyjobs@gmail.com", "9jobifyG@12");
                smtp.EnableSsl = true;
                smtp.Send(mail);

                Response.Write("<script>alert('" + success + "')</script>");
                Response.Redirect("profile.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            sdr.Close();  
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