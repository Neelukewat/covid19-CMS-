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
    public partial class centerSetting : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["username"] == null)
                //{

                //    Response.Redirect("login.aspx");
                //}
                //else
                //{


                   
                //}
                BindGrid();

            }
            




        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string query = "SELECT * FROM addcenter";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

      

      
      

      

        

     

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string center = ((string)GridView1.DataKeys[e.RowIndex].Values[0]);
            string address = (row.FindControl("txtadd") as TextBox).Text;
            string contact = (row.FindControl("txtcontact") as TextBox).Text;
            string type = (row.FindControl("txttype") as TextBox).Text;
            string mail = (row.FindControl("txtmail") as TextBox).Text;
            string query = "UPDATE addcenter SET  address=@address, contact=@contact , email=@email, centertype=@centertype,centername=@centername WHERE centername=@centername";
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@centername", center);

                    cmd.Parameters.AddWithValue("@address", address);

                    cmd.Parameters.AddWithValue("@contact", contact);

                    cmd.Parameters.AddWithValue("@email", mail);

                    cmd.Parameters.AddWithValue("@centertype", type);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string center = ((string)GridView1.DataKeys[e.RowIndex].Values[0]);
            string query = "DELETE FROM addcenter WHERE centername=@centername";
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@centername", center);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            this.BindGrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();

        }
    }  }
