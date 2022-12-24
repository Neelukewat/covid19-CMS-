using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19_management_system
{
    public partial class user_certificate : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlConnection strcon= new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string referenceid()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_appointment where referenceno=@referenceno", strcon);
                cmd.Parameters.AddWithValue("@referenceno", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    user = dr.GetValue(9).ToString();
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

        public string referenceid_2()
        {
            try
            {
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from seconddoseappointment where referenceno=@referenceno", strcon);
                cmd.Parameters.AddWithValue("@referenceno", TextBox1.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    user = dr.GetValue(9).ToString();
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
        public void findCertificate()
        {

            if (RadioButton1.Checked == true)
            {
                string id = referenceid();

                if (TextBox1.Text==id)
                {
                    string find = "select p.vaccinetype, p.date,p.username, s.aadhar , pc.certificateno, pc.type FROM book_appointment AS p, signup AS s ,print_cer As pc  where p.username = s.username and s.username=pc.username and p.referenceno=@referenceno";
                    SqlCommand cmd = new SqlCommand(find, conn);
                    cmd.Parameters.Add("@referenceno", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "referenceno");
                    DetailsView1.DataSource = ds;
                    DetailsView1.DataBind();
                    DetailsView1.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Button1.Visible = true;
                    Image1.Visible = true;

                    conn.Close();
                }
            }

            else if (RadioButton2.Checked == true)
            {
                string id2 = referenceid_2();

                if (TextBox1.Text == id2)
                {
                    string find = "select p.vaccinetype, p.date,p.username, s.aadhar , pc.certificateno, pc.type FROM  seconddoseappointment  AS p, signup AS s ,print_cer2 As pc  where p.username = s.username and s.username=pc.username and p.referenceno=@referenceno";
                    SqlCommand cmd = new SqlCommand(find, conn);
                    cmd.Parameters.Add("@referenceno", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "referenceno");
                    DetailsView1.DataSource = ds;
                    DetailsView1.DataBind();
                    DetailsView1.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Button1.Visible = true;
                    Image1.Visible = true;
                    conn.Close();
                }
            }
            else
            {

                Label5.Visible = true;
                Label5.Text = "Please Select Which Dose Certificate You Want";
                conn.Close();
            }
        }
    
    protected void Button2_Click(object sender, EventArgs e)
        {
            findCertificate();
        }
    }
}