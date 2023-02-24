using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class Admin_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            connection.Open();


            SqlCommand command = new SqlCommand("select * from Category ", connection);
            string table = "<table class='table table-striped'>" +
                "<tr><th>ID</th><th>Category_Name</th> " +
                "<th>category_PICTURE</th>  " +
                "<th>Links</th>  " +
                "</tr>";


            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr>" +
                    $"<td>{sdr[0]}</td>" +
                    $"<td>{sdr[1]}</td>" +

                    $"<td><img width='30px height='30px src='Images/{sdr[2]}'/></td>" +

                    $"<td>" +
                    $"<li class='list-inline-item'>" +
                    $"<a href='EditCategory.aspx?id={sdr[0]} '><asp:Button ID='Edit' runat='server' class='btn btn-warning btn-sm rounded-0' type='button' data-toggle='tooltip' data-placement='top' title='Edit'><i class='fa fa-edit'></a>" +

                    $"</i></button></li>" +
                    $"<li>" +
                    $"<a href='DeleteCategory.aspx?id={sdr[0]} '><asp:Button ID='Remove' runat='server' class='btn btn-danger btn-sm rounded-0 ' type='button' data-toggle='tooltip' data-placement='top' title='Delete'><i class='fa fa-trash' ></a>" +
                    $"</i></button></li></ul>" +
                    $"</tr>";

            }

            table1.Text = table;
            connection.Close();
        }
        protected void AddCategory_Click(object sender, EventArgs e)
        {
            string path = "AddCategory.aspx";
            Response.Redirect(path);
        }
    }
    }
