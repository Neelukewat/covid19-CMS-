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
    public partial class print_Certificate : System.Web.UI.Page
    {
        string user, email;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon2 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cname"] == null)
                {

                    Response.Redirect("login.aspx");
                }
            }

        }
        public string generateCertificate()
        {
            try
            {
                strcon1.Open();
                SqlCommand cmd = new SqlCommand("select max(convert(INT,SUBSTRING(certificateno,3,6))) from print_cer", strcon1);
                SqlDataReader rd = cmd.ExecuteReader();
                rd.Read();
                if (!rd.IsDBNull(0))
                {


                    int a = rd.GetInt32(0) + 1;
                    strcon1.Close();
                    return "" + a;

                }
                else
                {

                }
                {
                    strcon1.Close();
                    return "" + 1;

                }
            }
            catch (Exception e1)
            {
                if (strcon1.State == ConnectionState.Open)
                {
                    strcon1.Close();
                }
                return e1.Message.ToString();
            }



        }
        public void findCertificate()
        {

            if (RadioButton1.Checked == true)
            {

                string find = "select p.vaccinetype, p.date,p.username, s.aadhar , pc.certificateno,pc.type FROM book_appointment AS p, signup AS s  ,print_cer AS pc  where p.username = s.username and s.username=pc.username and s.username=@username";
                SqlCommand cmd = new SqlCommand(find, conn);
                cmd.Parameters.Add("@username", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "username");
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                DetailsView1.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Button1.Visible = true;
                Image1.Visible= true;
                conn.Close();
            }

            else if (RadioButton2.Checked == true)
            {
                string find = "select p.vaccinetype, p.date,p.username, s.aadhar , pc.certificateno, pc.type FROM  seconddoseappointment  AS p, signup AS s ,print_cer2 As pc  where p.username = s.username and s.username=pc.username and s.username=@username";
                SqlCommand cmd = new SqlCommand(find, conn);
                cmd.Parameters.Add("@username", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "username");
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                DetailsView1.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Button1.Visible = true;
                Image1.Visible = true;
                conn.Close();
            }
            else
            {

                Label5.Visible = true;
                Label5.Text = "The Certificate of " + TextBox1.Text + " Is Not Available";
                conn.Close();
            }
        }


        public string secondvac()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from signup where username=@username", strcon);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    user = dr.GetValue(10).ToString();
                    strcon.Close();

                    return user;

                }
                else
                {
                    strcon.Close();

                    return "" + 0;

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return ex.ToString();
            }
        }

        public string firstvac()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from signup where username=@username", strcon);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    user = dr.GetValue(8).ToString();
                    strcon.Close();

                    return user;

                }
                else
                {
                    strcon.Close();

                    return "" + 0;

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return ex.ToString();
            }
        }

        public string getmailid()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from signup where username=@username", strcon);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    email = dr.GetValue(4).ToString();
                    strcon.Close();

                    return email;

                }
                else
                {
                    strcon.Close();

                    return "" + 0;

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return ex.ToString();
            }
        }

        private static string SendMail(string toList, string from, string ccList, string subject, string body)
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
                message.Body = sb.ToString();
                // We use gmail as our smtp client
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(
                    "manisha238k@gmail.com", "ram@pavitra789");

                smtpClient.Send(message);
                msg = "Successful<BR>";
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;
        }

        [Obsolete]
        //bool checkfirstMemberExists()
        //{
        //    try
        //    {
        //        if (strcon.State == ConnectionState.Closed)
        //        {
        //            strcon.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * from  print_cer where username= '" + TextBox1.Text + "'", strcon);
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        dr.Read();
        //        if (dr.HasRows)
        //        {
        //            strcon.Close();
        //            return false;
        //        }
        //        else
        //        {
        //            strcon.Close();
        //            return true;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //        Label4.Text = ex.Message.ToString();
        //        if (strcon.State == ConnectionState.Open)
        //        {
        //            strcon.Close();
        //        }

        //        return false;

        //    }
        //}

        //bool checksecondMemberExists()
        //{
        //    try
        //    {
        //        if (strcon.State == ConnectionState.Closed)
        //        {
        //            strcon.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * from  print_cer2 where username= '" + TextBox1.Text + "'", strcon);
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        dr.Read();
        //        if (dr.HasRows)
        //        {
        //            strcon.Close();
        //            return false;
        //        }
        //        else
        //        {
        //            strcon.Close();
        //            return true;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //        Label4.Text = ex.Message.ToString();
        //        if (strcon.State == ConnectionState.Open)
        //        {
        //            strcon.Close();
        //        }

        //        return false;

        //    }
        //}

        public void certificate()
        {
            string svac = secondvac();
            string fvac = firstvac();
            if (svac == "Yes")
            {

                if (strcon1.State == ConnectionState.Closed)
                {
                    strcon2.Open();
                }
                String rid = "C20" + generateCertificate();
                String type = "Final";
                SqlCommand cmd = new SqlCommand("INSERT INTO print_cer2 values(@certificateno,@username,@type)", strcon2);
                cmd.Parameters.AddWithValue("@certificateno", rid);
                SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@type", type);

                cmd.ExecuteNonQuery();
                strcon1.Close();
            }

            else if (fvac == "Yes")
            {
                if (strcon1.State == ConnectionState.Closed)
                {
                    strcon2.Open();
                }
                String rid = "C10" + generateCertificate();
                String type = "Provisional";
                SqlCommand cmd = new SqlCommand("INSERT INTO print_cer values(@certificateno,@username,@type)", strcon2);
                cmd.Parameters.AddWithValue("@certificateno", rid);
                SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@type", type);

                cmd.ExecuteNonQuery();
                strcon1.Close();
            }

        }

        [Obsolete]
        protected void Button2_Click(object sender, EventArgs e)
        
        {
            //if (!checkfirstMemberExists())
            //{
            //    Page.RegisterStartupScript("Usermsg", "<script>alert(' Already Appointment is book with this Username'); if (alert) { window.location = 'homepage.aspx'; }</script>");

            //}
            //else if (!checksecondMemberExists())
            //{
            //    Page.RegisterStartupScript("Usermsg", "<script>alert(' Already Appointment2 is book with this Username'); if (alert) { window.location = 'homepage.aspx'; }</script>");

            //}
           
                certificate();
                findCertificate();
            string eid = getmailid();
            SendMail(eid, "xyzcenter789@gmail.com", eid, "Congratulations! Your Vaccination is successfull", "You can download Your Certificate by login to portal");




        }
    }
        }
      

      
    

      
    
