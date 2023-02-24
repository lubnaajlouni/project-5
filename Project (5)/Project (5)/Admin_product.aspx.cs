using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class Admin_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source =  DESKTOP-6GG09VO\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand("select * from Product ", connection);
            string table = "<table class='table table-striped'>" +
                "<tr><th>ID</th><th> Product_Name</th> " +
                " <th> Product_descrption</th><th>sale</th> " +
                "<th>price</th><th>img</th><th>category_ID</th><th>Links</th></tr>";



            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr>" +
                   $"<td>{sdr[0]}</td>" +
                   $"<td>{sdr[1]}</td>" +
                   $"<td>{sdr[2]}</td>" +
                   $"<td>{sdr[4]}</td>" +
                   $"<td>{sdr[5]}</td>" +
                   $"<td><img width='30px height='30px src='images/{sdr[6]}'/></td>" +
                 $"<td>{sdr[7]}</td>" +
                   $"<td>" +
                   $"<li class='list-inline-item'>" +
                   $"<a href='EditProduct.aspx?id={sdr[0]} '><asp:Button ID='Edit' runat='server' class='btn btn-warning btn-sm rounded-0' type='button' data-toggle='tooltip' data-placement='top' title='Edit'><i class='fa fa-edit'></a>" +
                   $"</i></button></li>" +
                   $"<li>" +
                   $"<a href='RemoveProduct.aspx?id={sdr[0]} '><asp:Button ID='Remove' runat='server' class='btn btn-danger btn-sm rounded-0 ' type='button' data-toggle='tooltip' data-placement='top' title='Delete'><i class='fa fa-trash' ></a>" +
                   $"</i></button></li></ul>" +
                   $"</tr>";

            }




            table1.Text = table;
            connection.Close();

        }
        protected void AddProduct_Click(object sender, EventArgs e)
        {
            string path = "AddProduct.aspx";
            Response.Redirect(path);
        }

    }
}