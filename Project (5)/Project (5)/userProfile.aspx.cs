using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class userProfile : System.Web.UI.Page
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

                SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();

                int id = Convert.ToInt32(Session["id-user"]);
                SqlCommand comman = new SqlCommand($"select * from customer where customer_ID={id}", connection);



                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {
                    fn.Text += sdr[1].ToString() + sdr[2].ToString();
                    em.Text += sdr[3].ToString();


                    firstName.Value += sdr[1].ToString();
                    lastName.Value += sdr[2].ToString();
                    emailAddress.Value += sdr[3].ToString();
                    phon.Value += 0 + sdr[4].ToString();
                    Address.Value += sdr[5].ToString();
                    Pass.Value += sdr[6].ToString();
                }


                connection.Close();
            }


        }

        protected void editProf_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id-user"]);
            SqlConnection connection =
            new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            connection.Open();



            string query = $" update customer set FName='{firstName.Value}',LName='{lastName.Value}',email='{emailAddress.Value}',phone='{phon.Value}',adderss='{Address.Value}' ,Password='{Pass.Value}' where customer_id={id}";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();

            connection.Close();

            Response.Redirect("profile.aspx");
        }






    }
}

        