using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class product : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                string x = Request.QueryString["id"];
                SqlConnection conn = new SqlConnection("data source =DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
                SqlCommand comand = new SqlCommand($"select * from product where Product_ID ='{x}'", conn);
                conn.Open();
                SqlDataReader sdr = comand.ExecuteReader();
                while (sdr.Read())
                {
                    leftCard.InnerHtml = $"<div width='300px' height='300px'><img style='width:370px; height:390px' src='images/{sdr[6]}' alt='alt'/></div><br/>";
                }

                conn.Close();
                conn.Open();
                SqlDataReader dr = comand.ExecuteReader();
                while (dr.Read())
                {
                    rightCard.InnerHtml = $"<div class=\"card\" width='200px' height='100px' ><h1 style='font-size:75px'>{dr[1]}</h1><div class=\"card-body\"><p class=\"card-text\" style='font-size:20px'>{dr[2]}</p><p class=\"card-text\" style='font-size:30px ; color:blue'>{dr[5]}$</p>" + $"</div></div>";


                }

                //< a runat = 'server' onserverclick = 'one' href =\"product.aspx?id={dr[0]}cart.aspx\" class=\"btn btn-primary\">Bye Now</a>
            }


        }

        protected void send_Click(object sender, EventArgs e)
        {
            //Session["id-user"] = "1";
            string productname = "", productpic = "";
            float price =0;
            string x = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            SqlCommand comand = new SqlCommand($"select * from product where Product_ID ='{x}'", conn);
            conn.Open();
            SqlDataReader sdr = comand.ExecuteReader();
            sdr.Read();
            
                productname = sdr[1].ToString();
                productpic = sdr[6].ToString();
                price = float.Parse(sdr[5].ToString());

            
            
            conn.Close();
            if (!string.IsNullOrEmpty(Session["id-user"] as string))
            {
                //Response.Write(productname);
                conn.Open();
                int quantity = Convert.ToInt32(countervalue.Value);
                int IDs = Convert.ToInt32(Session["id-user"].ToString()); 
                SqlCommand comand2 = new SqlCommand($"insert into cart(customer_ID,Product_ID,product_img,Product_Name,Product_quantity,total) values ( {IDs}, {x} ,'{productpic}' , '{productname}',{quantity},{quantity*price})", conn);
                comand2.ExecuteNonQuery();




            }
            else
            {
                conn.Open();

                Response.Redirect("login.aspx");
            }
            conn.Close();

        }
        protected void Send_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(Session["id-user"] as string))
            {
                Response.Redirect("Categories-page.aspx");

            }
            else
            {

                Response.Redirect("login.aspx");
            }
        }
    }
}