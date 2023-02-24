using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project__5_
{
    public partial class DeleteCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = project-5 ; integrated security=SSPI");
                connection.Open();



                //string folderPath = Server.MapPath("~/ImagesCategory/");

                ////Check whether Directory (Folder) exists.
                //if (!Directory.Exists(folderPath))
                //{
                //    //If Directory (Folder) does not exists Create it.
                //    Directory.CreateDirectory(folderPath);
                //}
                //formFileCat.SaveAs(folderPath + Path.GetFileName(formFileCat.FileName));


                int id = Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand command = new SqlCommand($"select * from Category where Category_ID={id}", connection);



                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Category_Name.InnerText = sdr[1].ToString();


                    //formFileLg.FileName = sdr[7].ToString();


                }
            }
        }

        protected void remove_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            int id = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand c = new SqlCommand($"select count (Product_ID) from Product where Category_ID={id}", connection);
            SqlDataReader r = c.ExecuteReader();
            int count = 0;
            while (r.Read())
            {
                count = Convert.ToInt16(r[0]);
            }

            if (count == 0)
            {
                string query = $"delete from Category where Category_ID={id}";
                connection.Close();
                connection.Open();
                SqlCommand com = new SqlCommand(query, connection);
                com.ExecuteNonQuery();
                Response.Redirect("Admin_Category.aspx");
            }
            else
            {
                Response.Write($"<script>alert(\" Can not Delete This Category cause it has {count} Products in it \")</script>");
            }
            connection.Close();
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Category.aspx");
        }
    }
    }
