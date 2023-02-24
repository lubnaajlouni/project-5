using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class EditProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();

                string fullPath = Server.MapPath("~/ImagesProduct/");
                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(fullPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(fullPath);
                }
                formFilePro.SaveAs(fullPath + Path.GetFileName(formFilePro.FileName));


                SqlCommand c = new SqlCommand("select * from Category", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(c);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                categoryList.DataSource = dataTable;
                categoryList.DataTextField = "Category_Name";
                categoryList.DataValueField = "Category_ID";
                categoryList.DataBind();



                int id = Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand command = new SqlCommand($"select * from Product where Product_ID={id}", connection);
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Product_Name.Value = sdr[1].ToString();
                    Product_descrption.Value = sdr[2].ToString();
                    Product_quantity.Value = sdr[3].ToString();
                    sale.Value = sdr[4].ToString();
                    price.Value = sdr[5].ToString();
                    img.Src = fullPath + sdr[6].ToString();
                    Session["img"] = fullPath + sdr[6].ToString();
                    categoryList.SelectedValue = sdr[7].ToString();

                }


            }

        }

        protected void Edit_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["id"]);

            SqlConnection connection =
            new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
            connection.Open();
            string filelocation = "";
            if (formFilePro.HasFile)
            {
                string fullPath = Server.MapPath("~/ImagesProduct/") + formFilePro.FileName;
                filelocation = formFilePro.FileName;
                formFilePro.SaveAs(fullPath);
                string query = $" update Product set Product_Name='{Product_Name.Value}',Product_descrption='{Product_descrption.Value}',Product_quantity={Product_quantity.Value},sale={sale.Value},price={price.Value},img='{formFilePro.FileName}',category_ID={categoryList.SelectedValue} where Product_ID={id}";

                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();

                connection.Close();

                Response.Redirect("Admin_product.aspx");

            }

            else
            {
                filelocation = Session["img"].ToString();
                string query = $" update Product set Product_Name='{Product_Name.Value}',Product_descrption='{Product_descrption.Value}',Product_quantity={Product_quantity.Value},sale={sale.Value},price={price.Value},category_ID={categoryList.SelectedValue} where Product_ID={id}";

                SqlCommand command = new SqlCommand(query, connection);
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
