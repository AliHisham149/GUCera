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
    public partial class IssuePromocode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            string s = student.Text;
            int sid = Int16.Parse(s);
            string promocode = code.Text;
            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand issue = new SqlCommand("AdminIssuePromocodeToStudent", conn);
            issue.CommandType = CommandType.StoredProcedure;
            issue.Parameters.Add(new SqlParameter("@pid", promocode));
            issue.Parameters.Add(new SqlParameter("@sid", sid));

            try
            {
                conn.Open();
                issue.ExecuteNonQuery();
                conn.Close();
                Response.Write("Issued successfully");
            }
            catch
            {
                Response.Write("Failed to issue promocode");
            }
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}