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
    public partial class Find_center : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();
            }

        }
      void  getdata()
        {
            string find = "select * from addcenter where(centername=@centername)";
            SqlCommand cmd = new SqlCommand(find, strcon);
            cmd.Parameters.Add("@centername", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
            strcon.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds, "centername");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            strcon.Close();
        }
       

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string find = "select * from addcenter where(centername=@centername)";
            SqlCommand cmd = new SqlCommand(find, strcon);
            cmd.Parameters.Add("@centername", System.Data.SqlDbType.NVarChar).Value = TextBox1.Text;
            strcon.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                strcon.Close();

                getdata();
                GridView1.Visible = true;
                TextBox1.Text = "";
                Label3.Text = "";
                strcon.Close();

            }
            else
            {
                GridView1.Visible = false;
                Label3.Visible = true;
                Label3.Text = "The search Term " + TextBox1.Text + " Is Not Available";
                strcon.Close();

            }
        }
    }
}