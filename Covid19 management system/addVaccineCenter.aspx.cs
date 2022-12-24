using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19_management_system
{
    public partial class addVaccineCenter : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    if (Session["username"] == null)
            //    {

            //        Response.Redirect("login.aspx");
            //    }

            //}

        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkCenterExits())
            {
                Page.RegisterStartupScript("Usermsg", "<script>alert('Center Alreay Exist with this Center Name, try other Center Name'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

            }
            else
            {
                addcenter();
            }
            SendMail(TextBox4.Text, "covidmanagementsystem@gmail.com", TextBox4.Text, "Your Vaccination center has been Registered successfully", "Congratulations Your Vaccination center is now Registered:", TextBox4.Text.Trim(), TextBox5.Text.Trim());


        }

        // user defined method
        bool checkCenterExits()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from addcenter where centername ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        [Obsolete]
        void addcenter()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO addcenter(state,city,centername,address,contact,email,password,centertype)values(@state,@city,@centername,@address,@contact,@email,@password,@centertype)", con);
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@centername", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@centertype", DropDownList3.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Page.RegisterStartupScript("Usermsg", "<script>alert('Center Added Successfully'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

           }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


       private static string SendMail(string toList, string from, string ccList, string subject, string body ,string username,string password)
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
                sb.Append("username:"+username+ "<BR>");
                sb.Append("\n");
                sb.Append("Password: "+password);
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
    
