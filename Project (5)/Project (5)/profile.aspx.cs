using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["id-user"] != null)
            {
                login.InnerHtml = "Logout";
              

            }
            else
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {

                SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();

                int id = Convert.ToInt32(Session["id-user"]);
                SqlCommand comman = new SqlCommand($"select * from customer where customer_ID={id}", connection);


                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {
                    fn.Text += sdr[1].ToString() + " " + sdr[2].ToString();
                    em.Text += sdr[3].ToString();


                    name.InnerText += sdr[1].ToString() + " " + sdr[2].ToString();
                    mail.InnerText += sdr[3].ToString();
                    phone.InnerText += 0 + sdr[4].ToString();
                    add.InnerText += sdr[5].ToString();
                }


                connection.Close();

            }

        }

        protected void editProf_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile.aspx");
        }

        protected void UserOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserOrders.aspx");
        }
    }

        
    }

