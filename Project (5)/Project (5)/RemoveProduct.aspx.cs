using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class RemoveProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-6GG09VO\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand command = new SqlCommand($"select * from Product where Product_ID={id}", connection);
                SqlDataReader sdr = command.ExecuteReader();


                while (sdr.Read())
                {
                    Product_Name.InnerText = sdr[1].ToString();
                    Product_descrption.InnerText = sdr[2].ToString();
                    Product_quantity.InnerText = sdr[3].ToString();
                    sale.InnerText = sdr[4].ToString();
                    price.InnerText = sdr[5].ToString();
                    categoryList.InnerText = sdr[7].ToString();

                }


            }
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string query = $"delete from Product where Product_ID={id}";
            SqlCommand com = new SqlCommand(query, connection);
            com.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("Admin_product.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_product.aspx");
        }
    }
    }
