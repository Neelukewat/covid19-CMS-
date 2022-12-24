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
    public partial class getvaccinationh : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("update signup set firstdose=@firstdose from book_appointment where book_appointment.username=signup.username", conn);
                cmd.Parameters.Add("@firstdose", System.Data.SqlDbType.NVarChar).Value = "Yes";
                conn.Open();
               int i= cmd.ExecuteNonQuery();

                if (i == 1)
                {
                    conn.Close();
                    Response.Redirect("Vaccinated Successfully and Certificate Generated");
                   
                }



               }
            else if(RadioButton2.Checked == true)
                {
                SqlCommand cmd = new SqlCommand("update signup set seconddose=@seconddose from seconddoseappointment where seconddoseappointment.username=signup.username", conn);
                cmd.Parameters.Add("@seconddose", System.Data.SqlDbType.NVarChar).Value = "Yes";
                conn.Open();
              int i=  cmd.ExecuteNonQuery();
                if(i == 1)
                {
                    conn.Close();
                    Response.Redirect("Vaccinated Successfully and Certificate Generated");

                }


            }
            else
            {

                Label5.Visible = true;
                Label5.Text = "Please Select Above Button";
                conn.Close();
            }



        }

     

       

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }


       void  findMember()
        {
            if (RadioButton1.Checked == true)
            {
                string find = "SELECT p.vaccinetype, p.centername, p.date,p.username,p.age,p.charges, c1.aadhar ,c1.addimage FROM book_appointment AS p ,signup AS c1 where p.username = c1.username and p.referenceno=@referenceno";
                SqlCommand cmd = new SqlCommand(find, conn);
                cmd.Parameters.Add("@referenceno", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    conn.Close();

                    DetailsView1.Visible = true;
                    Button1.Visible = true;
                    TextBox1.Text = "";
                    Label3.Text = "";
                    conn.Close();
                    Label4.Visible = true;

                }
                else
                {
                    DetailsView1.Visible = false;
                    Label3.Visible = true;
                    Label3.Text = "The search Term " + TextBox1.Text + " Is Not Available";
                    conn.Close();

                }
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "referenceno");
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                conn.Close();
            }
            else if(RadioButton2.Checked == true)
           {

                string find = "SELECT p.vaccinetype, p.centername, p.date,p.username,p.age,p.charges, c1.aadhar ,c1.addimage FROM seconddoseappointment AS p ,signup AS c1 where p.username = c1.username and p.referenceno=@referenceno";
                SqlCommand cmd = new SqlCommand(find, conn);
                cmd.Parameters.Add("@referenceno", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    conn.Close();

                    DetailsView1.Visible = true;
                    Button1.Visible = true;
                    TextBox1.Text = "";
                    Label3.Text = "";
                    conn.Close();
                    Label4.Visible = true;

                }
                else
                {
                    DetailsView1.Visible = false;
                    Label3.Visible = true;
                    Label3.Text = "The search Term " + TextBox1.Text + " Is Not Available";
                    conn.Close();

                }
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = cmd;
                DataSet ds = new DataSet();
                adapter.Fill(ds, "referenceno");
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                conn.Close();
            }
            }


       
        protected void Button2_Click(object sender, EventArgs e)
        {
            findMember();


        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }

    }
