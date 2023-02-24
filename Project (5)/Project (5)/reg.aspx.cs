using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            //SqlConnection connection =
            //new SqlConnection("data source =  DESKTOP-6GG09VO\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            //SqlCommand command = new SqlCommand("select * from  customer ", connection);
            //SqlCommand command1 = new SqlCommand($"insert into customer values('{FName.Value}', '{LName.Value}' , '{email.Value}','{Password.Value}','{phone.Value}','{address.Value}')", connection);
            //try
            //{
            //    connection.Open();

            //    command1.ExecuteNonQuery();
            //}
            //catch (SqlException aa)
            //{
            //    switch (aa.Number)
            //    {
            //        case 2627:
            //            Label1.Text = "The email is already exixst";
            //            break;
            //        default:
            //            Label1.Text = "contact administrator";
            //            break;

            //    }

            //}

            SqlConnection connection =
            new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            SqlCommand command = new SqlCommand("select * from  customer ", connection);
            SqlCommand command1 = new SqlCommand($"insert into customer values('{FName.Value}', '{LName.Value}' , '{email.Value}','{phone.Value}','{adderss.Value}','{Password.Value}')", connection);
            connection.Open();
            SqlDataReader qqq = command.ExecuteReader();

            bool check = false;

            while (qqq.Read())
            {
                if (email.Value == qqq[3].ToString())
                {
                    check = true;
                }
            }
            connection.Close();

            if (check)
            {
                Label1.Text = "you are already registered";

            }
            else
            {
                connection.Open();
                command1.ExecuteNonQuery();
                connection.Close();
                Label1.Text = "Record Inserted Successfully";
                Response.Redirect("login.aspx");

            }
        }
    }
}
        