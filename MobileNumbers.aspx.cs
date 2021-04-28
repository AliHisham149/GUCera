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
    public partial class MobileNumbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand addmobile = new SqlCommand("addMobile", conn);

            addmobile.CommandType = CommandType.StoredProcedure;

            String userid = id.Text;
            int user = Int16.Parse(userid);
            string mobile = num.Text;
            addmobile.Parameters.Add(new SqlParameter("@ID", user));
            addmobile.Parameters.Add(new SqlParameter("@mobile_number", mobile));

            try
            {
                conn.Open();
                addmobile.ExecuteNonQuery();
                conn.Close();
                Response.Write("Added successfully");
            }
            catch
            {
                Response.Write("Failed to add");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuceraHome.aspx");
        }
    }
}