using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19_management_system
{
    public partial class bookAppointement : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        String rid;
        protected void Page_Load(object sender, EventArgs e)
     {
          

            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {

                    Response.Redirect("login.aspx");
                }
                else
                {


                    if (checkforfirstseconddose(Session["username"].ToString()).Equals("1"))
                    {

                        TextBox2.Text = "First Dose";

                    }
                    else
                    {
                        Response.Redirect("bookappointment2.aspx");
                    }
                }

            }

        }

      
       

         protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList4.SelectedItem.Text=="covishield")
            {
                TextBox3.Text = "750";
            }
            else if(DropDownList4.SelectedItem.Text=="Covaxin")
            {
                TextBox3.Text = "1000";
            }
            else
            {
               
            }
        }

      
        public String reference_id()
        {
            try
            {
                strcon1.Open();
                SqlCommand cmd = new SqlCommand("select max(convert(INT,SUBSTRING(referenceno,2,5))) from book_appointment", strcon1);
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
        public string checkforfirstseconddose(string username)
        {
            SqlCommand cmd = new SqlCommand("Select * from signup where username='"+Session["username"].ToString()+"'",strcon);
            strcon.Open();
            SqlDataReader dr=cmd.ExecuteReader();
            dr.Read();
            String fdose=dr.GetValue(8).ToString();
            if(fdose.Equals("NA"))
            {
                return ("1");
            }
            else
            {
                return ("2");
            }


        }


        
        [Obsolete]
        void checkappoint()
        {
            try
            {
                //  SqlConnection con = new SqlConnection(strcon);
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                DateTime date1 = DateTime.Today.Date;
                DateTime date = DateTime.ParseExact(TextBox1.Text.ToString(), "yyyy-MM-dd", CultureInfo.CurrentCulture);
                TimeSpan difference = date1.Subtract(date);
                if (Convert.ToInt32(difference.Days.ToString()) < 0)
                {

                    rid = "R00" + reference_id();
                    SqlCommand cmd = new SqlCommand("INSERT INTO book_appointment values(@vaccinetype,@centername,@username,@state,@city,@age,@date,@charges,@time,@referenceno)", strcon);
                    cmd.Parameters.AddWithValue("@vaccinetype", DropDownList4.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@centername", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@age", DropDownList5.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@date", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@charges", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@time", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@referenceno", rid);
                    if (strcon.State == ConnectionState.Closed)
                    {
                        strcon.Open();
                    }
                    cmd.ExecuteNonQuery();
                    strcon.Close();

                    Page.RegisterStartupScript("Usermsg", "<script>alert('First Dose Appointment Booked Successfully and Your reference id:"+rid+"') ;if (alert) { window.location = 'bookappointment2.aspx'; }</script>");
                    HttpCookie cokie = new HttpCookie(Session["username"].ToString());
                    cokie.Value = TextBox1.Text.Trim();
                    Response.Cookies.Add(cokie);

                }
                else
                {
                    Page.RegisterStartupScript("Usermsg", "<script>alert('Select Correct date'); if (alert) { window.location = 'bookappointment.aspx'; }</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
           
        }
        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (!checkMemberExists())
            {
                Page.RegisterStartupScript("Usermsg", "<script>alert(' Already Appointment is book with this Username'); if (alert) { window.location = 'userpanel.aspx'; }</script>");

            }
            else
            {
                checkappoint();


            }


        }
        bool checkMemberExists()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)                   
                {
                    strcon.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from  book_appointment where username='" + Session["username"].ToString()+ "'", strcon);
                SqlDataReader dr = cmd.ExecuteReader();
                //dr.Read();
                if (dr.HasRows)
                {
                    strcon.Close();
                    return false;
                }
                else
                {
                    strcon.Close();
                    return true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                //Label4.Text=ex.Message.ToString();
                if (strcon.State == ConnectionState.Open)
                {
                    strcon.Close();
                }

                return false;
               
            }
        }

           

    }

}
