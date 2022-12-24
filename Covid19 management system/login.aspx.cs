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
    public partial class login : System.Web.UI.Page
    {
       SqlConnection con = new SqlConnection (ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                
        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Select1.Value == "user")
            {


                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                        SqlCommand cmd = new SqlCommand("select * from  signup  where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                        SqlDataReader dr = cmd.ExecuteReader();



                        if (dr.HasRows)
                        {
                           if (dr.Read())
                            {
                                Session["username"] = dr.GetValue(2).ToString();
                                Session["fullname"] = dr.GetValue(0).ToString();
                                Session["role"] = Select1.Value;
                                Session["firstvac"] = dr.GetValue(8).ToString();
                                Session["secondvac"] = dr.GetValue(10).ToString();
                                Session["email"] = dr.GetValue(4).ToString();
                                con.Close();

                            Page.RegisterStartupScript("Usermsg", "<script>alert('Login Successfully'); if (alert) { window.location = 'userpanel.aspx'; }</script>");
                               
                            }
                        


                    }
                    else
                        {
                        con.Close();

                        Page.RegisterStartupScript("Usermsg", "<script>alert('Invalid credentials'); if (alert) { window.location = 'homepage.aspx'; }</script>");
                           
                        }
                    




                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");


                }
            }
            else if (Select1.Value == "admin")
            {

                if (TextBox1.Text == "admin" && TextBox2.Text == "123@admin")
                {
                    Session["role"] = Select1.Value;

                    Page.RegisterStartupScript("Usermsg", "<script>alert('Login Successfully'); if (alert) { window.location = 'adminhomepage.aspx'; }</script>");

                }
                else
                {

                    Page.RegisterStartupScript("Usermsg", "<script>alert('Invalid credentials'); if (alert) { window.location = 'homepage.aspx'; }</script>");

                }


            }

            else
            {
                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();


                        SqlCommand cmd = new SqlCommand("select * from  addcenter where centername='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                        SqlDataReader dr = cmd.ExecuteReader();



                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                Session["cname"] = dr.GetValue(2).ToString();
                                Session["role"] = Select1.Value;
                                Page.RegisterStartupScript("Usermsg", "<script>alert('Login Successfully'); if (alert) { window.location = 'hospitalhomepage.aspx'; }</script>");

                            }
                            con.Close();


                        }
                        else
                        {

                            Page.RegisterStartupScript("Usermsg", "<script>alert('Invalid credentials'); if (alert) { window.location = 'homepage.aspx'; }</script>");
                            con.Close();

                        }
                    }



                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                
                }
            }
        }
    }

} 
