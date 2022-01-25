using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgot : System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand cmd;
    SqlDataReader sdr;
    SqlDataAdapter sdatr;
    String name,pass,email= String.Empty;
    static int otp;
    static int value;
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqlconnection = "Data Source=ANUJ\\SQLEXPRESS;Initial Catalog=Jobify;Integrated Security=True";
        sqlcon = new SqlConnection(sqlconnection);
        sqlcon.Open();
    }

    protected void sendotp_Click(object sender, EventArgs e)
    {
        try
        {
            String sqlquery = "Select name from Users where email = '" + remail.Text.Trim() + "'";
            cmd = new SqlCommand(sqlquery, sqlcon);
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                name = sdr.GetValue(0).ToString().Trim();

                Random rnd = new Random();
                value = rnd.Next(1000, 9999);
                Response.Write(value);

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("jobifyjobs@gmail.com");
                mail.To.Add(remail.Text.Trim());
                mail.Subject = "Jobify Forgot Password!";
                mail.Body = "<html>  <head>    <title></title>    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />    <meta name='viewport' content='width=device-width, initial-scale=1'>    <meta http-equiv='X-UA-Compatible' content='IE=edge' />   <link href='/docs/5.0/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC' crossorigin='anonymous'>    <link href='/docs/5.0/assets/css/docs.css' rel='stylesheet'>    <style type='text/css'>        @media screen {            @font-face {                font-family: 'Lato';                font-style: normal;                font-weight: 400;                src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: normal;                font-weight: 700;                src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: italic;                font-weight: 400;                src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');            }            @font-face {                font-family: 'Lato';                font-style: italic;                font-weight: 700;                src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');            }        }        /* CLIENT-SPECIFIC STYLES */        body,        table,        td,        a {            -webkit-text-size-adjust: 100%;            -ms-text-size-adjust: 100%;        }        table,        td {            mso-table-lspace: 0pt;            mso-table-rspace: 0pt;        }        img {            -ms-interpolation-mode: bicubic;        }        /* RESET STYLES */        img {            border: 0;            height: auto;            line-height: 100%;            outline: none;            text-decoration: none;        }        table {            border-collapse: collapse !important;        }        body {            height: 100% !important;            margin: 0 !important;            padding: 0 !important;            width: 100% !important;        }        /* iOS BLUE LINKS */        a[x-apple-data-detectors] {            color: inherit !important;            text-decoration: none !important;            font-size: inherit !important;            font-family: inherit !important;            font-weight: inherit !important;            line-height: inherit !important;        }        /* MOBILE STYLES */        @media screen and (max-width:600px) {            h1 {                font-size: 32px !important;                line-height: 32px !important;            }        }        /* ANDROID CENTER FIX */        div[style*='margin: 16px 0;'] {            margin: 0 !important;        }    </style></head>  <body style='background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;'>        <!-- HIDDEN PREHEADER TEXT -->          <table border='0' cellpadding='0' cellspacing='0' width='100%'>            <!-- LOGO -->            <tr>                <td bgcolor='#FFA73B' align='center'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td align='center' valign='top' style='padding: 40px 10px 40px 10px;'></td>                        </tr>                    </table>                </td>            </tr>            <tr>                <td bgcolor='#FFA73B' align='center' style='padding: 0px 10px 0px 10px;'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td bgcolor='#ffffff' align='center' valign='top' style='padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;'>                                <h2 style='font-size: 48px; font-weight: 400; margin: 2;'>Jobify<br />                                    One Time Password(OTP)</h2>                            </td>                        </tr>                    </table>                </td>            </tr>            <tr>                <td bgcolor='#f4f4f4' align='center' style='padding: 0px 10px 0px 10px;'>                    <table border='0' cellpadding='0' cellspacing='0' width='100%' style='max-width: 600px;'>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <h3 style='padding-left: 2rem;padding-right: 2rem;'>Hello, '" + name + "'</h3>                            </td>                        </tr>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 0px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <center><h3>The use the following OTP to reset your password</h3></center>   <center><h2>'" + value + "'</h2></center>                         </td>                        </tr>                        <tr>                            <td bgcolor='#ffffff' align='left' style='padding: 0px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;'>                                <h4 style='padding-left: 2rem;padding-right: 2rem;'>Cheers,<br>                                    Jobify Team</h4>                            </td>                        </tr>                    </table>                </td>            </tr>        </table>    </body>    </html>";
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("jobifyjobs@gmail.com", "9jobifyG@12");
                smtp.EnableSsl = true;
                smtp.Send(mail);

                rotp.Visible = true;
                rpass.Visible = true;
                rconpass.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                sendotp.Visible = false;
                reset.Visible = true;
            }
            else
            {
                showErrorMsg();
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        try
        {
            otp = Int32.Parse(TextBox1.Text.ToString());
            pass = TextBox2.Text.ToString().Trim();
            email = remail.Text.ToString().Trim();
            Response.Write(value);
            Response.Write(otp);
            if (value == otp)
            {
                sdatr = new SqlDataAdapter();
                String sql = "Update Users set password = '" + pass + "' where email = '" + email + "'";
                sdatr.UpdateCommand = new SqlCommand(sql, sqlcon);
                sdatr.UpdateCommand.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert(Incorrect OTP)</script>");
            }
        }
        catch(SqlException eb)
        {
            Response.Write("<script>alert('" + eb.Message + "')</script>");
        }

    }

    private void showErrorMsg()
    {
        lblmsg.Visible = true;
        lblmsg.Text = "This Email this does not exist, Please register first.";
        lblmsg.CssClass = "alert alert-danger";
    }
}