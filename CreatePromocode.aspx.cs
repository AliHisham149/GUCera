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
    public partial class CreatePromocode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand createpromocode = new SqlCommand("AdminCreatePromocode", conn);

            createpromocode.CommandType = CommandType.StoredProcedure;

            string promocode = code.Text;
            if (promocode.Length > 6)
            {
                Response.Write("Code is too long" + "  <br /> <br />");
            }
            createpromocode.Parameters.Add(new SqlParameter("@code", promocode));
            try
            {
                DateTime issue = DateTime.Parse(issuedate.Text);
                createpromocode.Parameters.Add(new SqlParameter("@issueDate", issue));
            }
            catch
            {
                Response.Write("Date not in right format. Please make sure it's writen as dd/mm/yyyy" + "  <br /> <br />");
            }

            try
            {
                DateTime expiry = DateTime.Parse(expirydate.Text);
                createpromocode.Parameters.Add(new SqlParameter("@expiryDate", expiry));
            }
            catch
            {
                Response.Write("Date not in right format. Please make sure it's writen as dd/mm/yyyy" + "  <br /> <br />");
            }
            try
            {
                Decimal disountammount = Decimal.Parse(discount.Text);
                createpromocode.Parameters.Add(new SqlParameter("@discount", disountammount));
            }
            catch
            {
                Response.Write("Amount is too large" + "  <br /> <br />");
            }
            int adminid = (int)Session["UserId"];
            createpromocode.Parameters.Add(new SqlParameter("@adminId", adminid));

            try
            {
                conn.Open();
                createpromocode.ExecuteNonQuery();
                conn.Close();
                Response.Write("Created successfully");
            }
            catch
            {
                Response.Write("Failed to create");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}