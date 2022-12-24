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
    public partial class addVaccine : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["username"] == null)
                //{

                //    Response.Redirect("login.aspx");
                //}

            }
        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);  
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO addvaccine(vaccinename,gap,precautions) values(@vaccinename,@gap,@precautions)", con);
                cmd.Parameters.AddWithValue("@vaccinename", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@gap", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@precautions", TextBox3.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Page.RegisterStartupScript("Usermsg", "<script>alert('Vaccine Added Successfully'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}