using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class InstructorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Get the information of the connection to the database
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);

            string firstname = fname.Text;
            if (firstname.Length > 10)
            {
                Response.Write("First name is too long" + "  <br /> <br />");
            }
            string lastname = lname.Text;
            if (lastname.Length > 10)
            {
                Response.Write("Last name is too long" + "  <br /> <br />");
            }
            string address = add.Text;
            if (address.Length > 10)
            {
                Response.Write("Address is too long" + "  <br /> <br />");
            }
            string email = mail.Text;
            if (email.Length > 10)
            {
                Response.Write("Email is too long" + "  <br /> <br />");
            }
            string gender = gend.Text;
            int gen = Int16.Parse(gender);
            string password = pass.Text;
            if (password.Length > 10)
            {
                Response.Write("Password is too long" + "  <br /> <br />");
            }
            SqlCommand reg = new SqlCommand("InstructorRegister", conn);
            reg.CommandType = CommandType.StoredProcedure;
            reg.Parameters.Add(new SqlParameter("@first_name", firstname));
            reg.Parameters.Add(new SqlParameter("@last_name", lastname));
            reg.Parameters.Add(new SqlParameter("@password", password));
            reg.Parameters.Add(new SqlParameter("@email", email));
            reg.Parameters.Add(new SqlParameter("@gender", gen));
            reg.Parameters.Add(new SqlParameter("@address", address));




            try
            {
                conn.Open();
                reg.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("GuceraHome.aspx");
            }
            catch
            {
                Response.Write("Failed to register");
            }

        }
    }
}