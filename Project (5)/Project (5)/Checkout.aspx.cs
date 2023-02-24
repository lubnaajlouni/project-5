using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id-user"] != null)
            {
                login.InnerHtml = "Logout";
              

            }
            else
            {
              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FullName = fname.Value;
            string Email = email.Value;
            string Address = adr.Value;
            string Country = country.Value;
            string City = city.Value;
            string Zip = zip.Value;
            string q = $"insert into Checkout (Fullname , Email , Address , Country , City , Zip ) values ('{FullName}' , '{Email}' , '{Address}' , '{Country}', '{City}', '{Zip}')";
            SqlConnection con = new SqlConnection("data source=DESKTOP-EK069V4\\SQLEXPRESS; database = project-5; integrated security=SSPI");
            SqlCommand comand = new SqlCommand(q, con);
            con.Open();
            comand.ExecuteNonQuery();
            //Response.Redirect("HomePage.aspx");

            insertIntoOrders();
            insertIntoOrderDetails();
        }
        protected void insertIntoOrders()
        {
            int userID = Convert.ToInt32(Session["id-user"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-EK069V4\\SQLEXPRESS ;database=project-5; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select sum(total) from cart where customer_ID = {userID}", con);

            con.Open();
            DateTime d = DateTime.Now;
            int year = d.Year;
            int month = d.Month;
            int day = d.Day;


            string date = $"{month}-{day}-{year}";
            double totalPrice = Convert.ToDouble(com.ExecuteScalar());

            con.Close();

            con.Open();

            string insertIntoOreder = $"insert into orders(customer_ID,Odrer_Date,order_total)  values({userID} , '{date}' , {totalPrice} )";
            SqlCommand command = new SqlCommand(insertIntoOreder, con);

            command.ExecuteNonQuery();

        }

        protected void insertIntoOrderDetails()
        {
            int userID = Convert.ToInt32(Session["id-user"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-EK069V4\\SQLEXPRESS;database=project-5; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select Order_ID from Orders where customer_ID ={userID}", con);
            con.Open();
            SqlDataReader sdr = com.ExecuteReader();


            var orderIDs = new ArrayList();
            while (sdr.Read())
            {
                Response.Write(sdr[0]);
                orderIDs.Add(sdr[0]);
            }

            con.Close();

            con.Open();


            //SqlCommand com2 = new SqlCommand($"select * from cart where customer_ID ={userID}", con);
            //SqlDataReader sdr2 = com2.ExecuteReader();

            //string insertquery = "insert into Product_Order(product_ID,order_ID) values ";
            //int c = 0;
            //while (sdr2.Read())
            //{
            //    insertquery += $"( {sdr2[1]} , {orderIDs[c]}   ),";
            //    c++;
            //}
            //con.Close();
            //insertquery = insertquery.Substring(0, insertquery.Length - 1);

            //con.Open();
            //SqlCommand com3 = new SqlCommand(insertquery, con);
            //com3.ExecuteNonQuery();
            ////Response.Write(insertquery);
            //con.Close();

            deletefromcart();
        }

        protected void deletefromcart()
        {
            int userID = Convert.ToInt32(Session["id-user"]);
            SqlConnection con = new SqlConnection("data source=DESKTOP-EK069V4\\SQLEXPRESS ;database=project-5; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"delete from cart where customer_ID={userID}", con);
            con.Open();

            com.ExecuteNonQuery();
            //Response.Redirect("Home.aspx");
        }
    }
}