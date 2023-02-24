using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Project__5_
{
    public partial class Categories_page : System.Web.UI.Page
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
                SqlConnection conn = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
                SqlCommand comand = new SqlCommand("select * from Category", conn);
                SqlCommand comand1;
                if (Request.QueryString["category"] == "COVID-19")
                {
                    comand1 = new SqlCommand("select * from Product where category_ID = 1", conn);
                }
                else if (Request.QueryString["category"] == "Primary Care")
                {
                    comand1 = new SqlCommand("select * from Product where category_ID = 3", conn);
                }
                else if (Request.QueryString["category"] == "Equipments")
                {
                    comand1 = new SqlCommand("select * from Product where category_ID = 2", conn);
                }
                else
                {
                    comand1 = new SqlCommand("select * from Product", conn);
                }

                conn.Open();
                SqlDataReader sdr = comand.ExecuteReader();
                //Label1.Text = "";
                while (sdr.Read())
                {
                    //Label1.Text += sdr["ID"] + "<br/>" + sdr[1];
                    leftCard.InnerHtml += $"<div width='300px' height='300px'><a href='Categories-page.aspx?category={sdr[1]}'> <img style='width:230px; height:160px' src='images/{sdr[2]}' alt='alt'/></a><p style='font-size:25px;'>{sdr[1]}</p></div><br/>";
                    //leftCard.InnerHtml +=

                    //"<div class=\"card col-lg-6 mb-4\"> " +
                    //$" <a href='Categories-page.aspx?category={sdr[1]}'>  <img class=\"card-img-top\" src=\"images\\" + sdr[2] + "\" alt=\"Card image\" style=\"width:70%\"/></a>" +
                    //" <div class=\"card-body\">      <h4 class=\"card-title\">" + sdr[1] + "</h4>  " +
                    //"  </div>  </div";
                }

                conn.Close();
                conn.Open();
                SqlDataReader dr = comand1.ExecuteReader();
                // Label2.Text = "";
                while (dr.Read())
                {
                    rightCard.InnerHtml += $"<div class=\"card\" width='200px' height='100px' ><img class=\"card-img-top\" src=\"images/{dr[6]}\" alt=\"Card image\" style=\"width:200px;height:220px;\"/><div class=\"card-body\"><p class=\"card-text\"style='font-weight:bold'>{dr[1]}</p><p class=\"card-text\" style='color:blue'>{dr[5]}$</p><a href=\"product.aspx?id={dr[0]}\" class=\"btn btn-primary\">Read More</a></div></div>";


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string searchkey = search.Value;
            SqlConnection conn1 = new SqlConnection("data source = DESKTOP-6GG09VO\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            SqlCommand comand2 = new SqlCommand($"select * from Product WHERE Product_Name LIKE '%{searchkey}%'", conn1);
            conn1.Open();
            SqlDataReader sdr = comand2.ExecuteReader();
            while (sdr.Read())
            {
                rightCard.InnerHtml = $"<div class=\"card\" width='200px' height='300px' ><img class=\"card-img-top\" src=\"images/{sdr[6]}\" alt=\"Card image\" style=\"width:200px;height:220px;\"/><div class=\"card-body\"><p class=\"card-text\" style='font-weight:bold'>{sdr[1]}</p><p class=\"card-text\" style='color:blue' >{sdr[5]}$</p><a href=\"product.aspx?id={sdr[0]}\" class=\"btn btn-primary\">Read More</a></div></div>";
            }
        }
        }
}