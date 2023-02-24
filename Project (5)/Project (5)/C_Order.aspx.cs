using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class C_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT Orders.Order_ID, Orders.Odrer_Date ,Orders.order_total FROM Orders INNER JOIN customer ON customer.customer_ID=Orders.customer_ID ",  connection);

            SqlDataReader rd = command.ExecuteReader();
            DateTime d = DateTime.Now;
            int year = d.Year;
            int month = d.Month;
            int day = d.Day;


            string date = $"{month}-{day}-{year}";
            string table = "<table class='table table-striped'>" +
          "<tr><th>Order_ID</th><th>Order_Date</th> " +
          " <th>Total Price</th></tr>";
            while (rd.Read())
            {

                table += $"<tr>" +
                    $"<td>{rd[0]}</td>" +
                    $"<td>{date}</td>" +
                    $"<td>{rd[2]}</td>" +

                    $"</tr>";

            }


            Orderlbl.Text += table;
            


            connection.Close();
        }
    }
    }
