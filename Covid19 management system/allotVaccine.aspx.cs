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
    public partial class allotVaccine : System.Web.UI.Page
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
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkAllotVaccinationExits())
            {
                Page.RegisterStartupScript("Usermsg", "<script>alert('Vaccine is Alreay Alloted'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

            }
            else
            {
                addAllotVaacination();
            }

            // user defined method
            bool checkAllotVaccinationExits()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from allot_Vaccine where Vaccine ='" +TextBox4.Text.Trim() + "';", con);
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
            void addAllotVaacination()
            {

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO allot_Vaccine(State,City,Center,Vaccine,Age_above45,Age_above18,Charges)values(@State,@City,@Center,@Vaccine,@Age_above45,@Age_above18,@Charges)", con);
                    cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@City", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Center", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Vaccine",TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Age_above45", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Age_above18", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Charges", TextBox3.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Page.RegisterStartupScript("Usermsg", "<script>alert('Vaccine Alloted Successfully'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs e)
        {

            if (e.Value.Length>45)
                e.IsValid = true;
            else
                e.IsValid = false;
        }
        }
}