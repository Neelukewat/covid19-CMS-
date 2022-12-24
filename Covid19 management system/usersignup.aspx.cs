using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19_management_system
{
    public partial class usersignup : System.Web.UI.Page
    {  
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string filepath;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!checkMemberExists())
            {
                Page.RegisterStartupScript("Usermsg", "<script>alert('User Already Exist with this Username'); if (alert) { window.location = 'homepage.aspx'; }</script>");

            }
            else
            {
                signUpNewMember();
            }
            SendMail(TextBox5.Text, "covidmanagementsystem@gmail.com", TextBox5.Text, "You has been Registered successfully", "Congratulations To Become Member.", TextBox3.Text.Trim(), TextBox4.Text.Trim());

        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from signup where username='" + TextBox3.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                //dr.Read();
                if (dr.HasRows)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }
        }

        [Obsolete]
        void signUpNewMember()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                if (FileUpload1.HasFile)
                {
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~") + "/img/" + FileUpload1.FileName);
                    //Label3.Text = "File Uploaded: " + FileUpload1.FileName;
                    numofuser.filename = FileUpload1.FileName;

                    filepath = "~/img/" + numofuser.filename;

                    Label3.Text = filepath;

                    SqlCommand cmd = new SqlCommand("INSERT INTO signup values(@fullname,@age,@username,@password,@email,@phoneno,@aadhar,@addimage,@firstdose,@firstdate,@seconddose,@seconddate)", con);
                    cmd.Parameters.AddWithValue("@fullname", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@age", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@username", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@phoneno", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@aadhar", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@addimage", filepath);
                    cmd.Parameters.AddWithValue("@firstdose", "NA");
                    cmd.Parameters.AddWithValue("@firstdate", "NA");
                    cmd.Parameters.AddWithValue("@seconddose", "NA");
                    cmd.Parameters.AddWithValue("@seconddate", "NA");
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //Label3.Text = numofuser.filename;
                    Page.RegisterStartupScript("Usermsg", "<script>alert('Registered Successful.'); if (alert) { window.location = 'login.aspx'; }</script>");

                }
            }
            
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                //Label4.Text = ex.Message.ToString();
            }
        }

      
        private static string SendMail(string toList, string from, string ccList, string subject, string body, string username, string password)
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            string msg = string.Empty;
            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(toList);
                if (ccList != null && ccList != string.Empty)
                    message.CC.Add(ccList);
                message.Subject = subject;
                message.IsBodyHtml = true;
                StringBuilder sb = new StringBuilder();
                sb.Append(body);
                sb.Append("\n");
                sb.Append("Your Username:" + username + "<BR>");
                sb.Append("\n");
                sb.Append(" And Password: " + password);
                message.Body = sb.ToString();
                // We use gmail as our smtp client
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(
                    "covidmanagementsystem@gmail.com", "cms@12345678");

                smtpClient.Send(message);
                msg = "Successful<BR>";
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;
        }

    }

}