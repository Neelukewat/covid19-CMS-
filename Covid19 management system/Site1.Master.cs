using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19_management_system
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton2.Visible = true; // user login link button
                    LinkButton3.Visible = true; // sign up link button

                    LinkButton4.Visible = false; // logout link button
                    LinkButton5.Visible = false; // hello user link button

                    LinkButton1.Visible = false;

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false; // user login link button
                    LinkButton3.Visible = false; // sign up link button

                    LinkButton4.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton5.Text = "Hello " + Session["username"].ToString();
                    LinkButton1.Visible = false;


                }
                else if (Session["role"].Equals("center"))
                {
                    LinkButton2.Visible = false; // user login link button
                    LinkButton3.Visible = false; // sign up link button
                    LinkButton7.Visible = false; 

                    LinkButton4.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button

                    LinkButton5.Text = "Hello " + Session["cname"].ToString();
                    LinkButton1.Visible = false;
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false; // user login link button
                    LinkButton3.Visible = false; // sign up link button
                    LinkButton7.Visible = false;
                    LinkButton6.Visible = false;

                    LinkButton4.Visible = true; // logout link button
                    LinkButton5.Visible = true; // hello user link button
                    LinkButton1.Visible = true;

                    LinkButton8.Visible = true;
                    LinkButton5.Text = "Hello admin";
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = " ";
            LinkButton2.Visible = true; // user login link button
            LinkButton3.Visible = true; // sign up link button
            LinkButton4.Visible = false; // logout link button
            LinkButton5.Visible = false; // hello user link button
            LinkButton1.Visible = false; // user login link button

            Response.Redirect("homepage.aspx");



        }

      

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");

           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhomepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

            Response.Redirect("Find_center.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {

        }
    }
}