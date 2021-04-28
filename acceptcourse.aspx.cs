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
    public partial class acceptcourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand acceptacourse = new SqlCommand("AdminAcceptRejectCourse", conn);
            acceptacourse.CommandType = CommandType.StoredProcedure;

            int courseid = Int16.Parse(TextBox1.Text);
            acceptacourse.Parameters.Add(new SqlParameter("@courseId", courseid));
            int adminid = (int)Session["UserId"];
            acceptacourse.Parameters.Add(new SqlParameter("@adminid", adminid));

            try
            {
                conn.Open();
                acceptacourse.ExecuteNonQuery();
                conn.Close();
                Response.Write("Accepted successfully");
            }
            catch
            {
                Response.Write("Course not availabe");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}