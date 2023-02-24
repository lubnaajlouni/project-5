using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class Del_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = null;
            try
            {

                connection = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5; integrated security = SSPI");

                //int Product_ID=  Convert.ToInt32(Session["userID"].ToString()) ;
                int cart_id = Convert.ToInt32(Request.QueryString["cart_id"]);
                SqlCommand sq = new SqlCommand($"delete from cart where cart_id = '{cart_id}'", connection);
                connection.Open();
                sq.ExecuteNonQuery();
                Response.Redirect("Cart.aspx");
            }

            catch (Exception B)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + B);
            }

            finally
            {
                connection.Close();
            }
            Response.Redirect("Cart.aspx");
        }
    }
    
}