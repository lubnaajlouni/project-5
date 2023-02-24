using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            SqlCommand command = new SqlCommand("select * from  customer ", connection);
            connection.Open();
            SqlDataReader qqq = command.ExecuteReader();


            while (qqq.Read())
            {

                if (email.Value == "nsreen@gmail.com" && Password.Value == "123")
                {
                    Response.Redirect("Admin.aspx");
                }

                else if (email.Value == qqq[3].ToString() && Password.Value == qqq[6].ToString())
                {
                    Session["id-user"] = Convert.ToString(qqq[0]);
                    //Session["name"] = qqq[1];
                    //Session["email"] = qqq[3];


                    Response.Redirect("HomePage.aspx");

                    break;
                }
                else
                {
                    Label1.Text = "Email Or Password InCorrect";
                }
            }
        }
    }
}