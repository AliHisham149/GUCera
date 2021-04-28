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
    public partial class ViewNonacceptedCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand courses = new SqlCommand("AdminViewNonAcceptedCourses", conn);
            courses.CommandType = CommandType.StoredProcedure;


            conn.Open();

            SqlDataReader rdr = courses.ExecuteReader(CommandBehavior.CloseConnection);
            while (rdr.Read())
            {

                //name
                String courseName = rdr.GetString(rdr.GetOrdinal("name"));
                Label name = new Label();
                name.Text = courseName + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                form1.Controls.Add(name);

                //creditHours
                Int32 courseCreditHours = rdr.GetInt32(rdr.GetOrdinal("creditHours"));
                Label creditHours = new Label();
                creditHours.Text = courseCreditHours.ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                form1.Controls.Add(creditHours);

                //price
                decimal courseprice = rdr.GetDecimal(rdr.GetOrdinal("price"));
                Label price = new Label();
                price.Text = courseprice.ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                form1.Controls.Add(price);

                //content
                String coursecontent = rdr.GetString(rdr.GetOrdinal("content"));
                Label content = new Label();
                content.Text = coursecontent + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "  <br /> <br />";
                form1.Controls.Add(content);
            }
          


        }
    }
}