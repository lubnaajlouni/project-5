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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Total.Text = getTotal().ToString() + "$";
                if (Session["id-user"] != null)
                {
                    login.InnerHtml = "Logout";


                }
                else
                {
                    //Session.RemoveAll();
                    Response.Redirect("login.aspx");
                    Response.Write("<script>alert(' You must login to show your cart ')</script>");
                }

                if (!IsPostBack)
                {
                    int userID = Convert.ToInt32(Session["id-user"].ToString());
                    SqlConnection con = new SqlConnection("data source =DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                    con.Open();
                    SqlCommand getCatCom = new SqlCommand($"SELECT*  from cart where customer_ID = {userID}", con);
                    SqlDataReader dr = getCatCom.ExecuteReader();

                    while (dr.Read())
                    {


                        item.Text +=
                       "<div class='row mb-4 d-flex justify-content-between align-items-center'>  " +
                       " <div class='col-md-2 col-lg-2 col-xl-2'>         " +
                       $"<img src='images/{dr[2]}' class='img-fluid rounded-3'>" +
                       "</div> <div class='col-md-3 col-lg-3 col-xl-3'> " +
                       $"<h6 class='text-muted'>{dr[3]}</h6>" +
                       "</div>         " +
                       "<div class='col-md-3 col-lg-3 col-xl-2 d-flex'>" +
                       $"<input id='form1' min='1' value='{dr[4]}' name='quantity' type='number' class='form-control form-control-sm' /> " +
                       "   items </div>" +
                         //" <div class='col-md-3 col-lg-2 col-xl-2 offset-lg-1'>" +
                         //$" <h6 class='mb-0'>{dr[1]}$</h6>" +
                         //" </div>" +
                         " <div class='col-md-3 col-lg-2 col-xl-2 offset-lg-1'>" +
                       $" <h6 class='mb-0'>{dr[6]}$</h6>" +
                       " </div>" +
                       " <div class='col-md-1 col-lg-1 col-xl-1 text-end'>" +
                       $" <a href='Del_item.aspx?cart_id={dr[5]}' class='text-muted'><i class='fas fa-times'></i></a>" +
                       "</div>  </div> <hr class='my-4'>";
                    }
                }


            }
            catch
            {
                Response.Redirect("login.aspx");
            }
            }
        protected void apply_Click(object sender, EventArgs e)
        {
            double total = getTotal();
            string userCode = btnTotal.Value;
            string code = "12345";

            if (userCode == code) {
                total = total-(.10 * total);
            }

            final.Text = total.ToString()+"$";
        }

        protected double getTotal()
        {
           
            int userID = Convert.ToInt32(Session["id-user"].ToString());
            SqlConnection con = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            con.Open();
            SqlCommand getCatCom = new SqlCommand($"SELECT sum(total)  from cart where customer_ID = {userID}", con);
            string total = getCatCom.ExecuteScalar().ToString();

            Total.Text = total;

            return double.Parse(total);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}