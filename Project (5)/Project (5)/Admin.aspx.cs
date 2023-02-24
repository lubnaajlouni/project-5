using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source =DESKTOP-EK069V4\\SQLEXPRESS; database = project5  ; integrated security=SSPI");
            connection.Open();


            SqlCommand command = new SqlCommand("select * from Customer ", connection);
            string table = "<table class='table table-striped'>" +
                "<tr><th>ID</th><th> Name</th> " +
                " <th>Email</th> <th>Phone</th><th>Address</th> " +
                //"<th>Image</th>" +
                "<th>Action</th></tr>";


            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr>" +
                    $"<td>{sdr[0]}</td>" +
                    $"<td>{sdr[1]} {sdr[2]} </td>" +
                    $"<td>{sdr[3]}</td>" +

                    $"<td>{sdr[5]}</td>" +
                    $"<td>{sdr[6]}</td>" +
                    //$"<td><img width='30px height='30px src='Images/{sdr[7]}'/></td>" +
                    //$"<td>{sdr[8]}</td>" +
                    $"<td>" +
                    $"</i></button></li>" +
                    $"<li class='list-inline-item'>" +
             //$"<a href='RemoveAdmin.aspx?id={sdr[0]} '><asp:Button ID='Remove' runat='server' class='btn btn-danger btn-sm rounded-0 ' type='button' data-toggle='tooltip' data-placement='top' title='Delete'><i class='fa fa-trash' ></a>" +

             $"</i></button></li>" +
                    $"<li><a href='C_Order.aspx?id={sdr[0]} '> Orders </li>" +
                    $"</ul>" +
                    $"</tr>";

            }

            table1.Text = table;
            connection.Close();



        }
    }
    
}