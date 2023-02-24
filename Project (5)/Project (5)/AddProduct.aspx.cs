using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project__5_
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection =
                 new SqlConnection("data source = DESKTOP-6GG09VO\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();
                SqlCommand command = new SqlCommand("select * from Category", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                //DataSet data=new DataSet();
                adapter.Fill(dataTable);
                categoryList.DataSource = dataTable;
                categoryList.DataTextField = "Category_Name";
                categoryList.DataValueField = "Category_ID";
                categoryList.DataBind();
                connection.Close();
            }
        }
            protected void Add_Click(object sender, EventArgs e)
            {

                string folderPath = Server.MapPath("~/ImagesProduct/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);

                }

                formFilePro.SaveAs(folderPath + Path.GetFileName(formFilePro.FileName));


                if (formFilePro.HasFile)
                {


                    SqlConnection connection =
                    new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5   ; integrated security=SSPI");
                    connection.Open();
                    SqlCommand command = new SqlCommand
                    ($"insert into Product values('{Product_Name.Value}', '{Product_descrption.Value}' , {Product_quantity.Value},{sale.Value},{price.Value},'{formFilePro.FileName}',{categoryList.SelectedValue})", connection);
                    command.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("Admin_product.aspx");

                }


            }

            protected void cancel_Click(object sender, EventArgs e)
            {
                Response.Redirect("Admin_product.aspx");
            }
        }
    }
