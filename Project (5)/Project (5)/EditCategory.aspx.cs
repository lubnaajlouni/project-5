using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class EditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
                connection.Open();



                string folderPath = Server.MapPath("~/ImagesCategory/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);
                }
                formFileCat.SaveAs(folderPath + Path.GetFileName(formFileCat.FileName));


                int id = Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand command = new SqlCommand($"select * from Category where Category_ID={id}", connection);
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Category_Name.Value = sdr[1].ToString();
                    Session["img"] = sdr[2].ToString();



                }
            }
        }



        protected void Edit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            SqlConnection connection =
            new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            string filelocation = "";
            if (formFileCat.HasFile)
            {
                string fullPath = Server.MapPath("~/images/") + formFileCat.FileName;
                filelocation = formFileCat.FileName;
                formFileCat.SaveAs(fullPath);

                string query = $" update Category set Category_Name='{Category_Name.Value}',category_PICTURE='{formFileCat.FileName}'where Category_ID={id}";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                connection.Close();

                Response.Redirect("Admin_Category.aspx");

            }

            else
            {
                filelocation = Session["img"].ToString();

                string query = $" update Category set Category_Name='{Category_Name.Value}',category_PICTURE='{formFileCat.FileName}'where Category_ID={id}";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                connection.Close();

                Response.Redirect("Admin_Category.aspx");
            }
            
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Category.aspx");
        }
    }
    }
