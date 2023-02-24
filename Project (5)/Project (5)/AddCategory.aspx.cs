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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }
            formFileCat.SaveAs(folderPath + Path.GetFileName(formFileCat.FileName));

            SqlConnection connection =
            new SqlConnection("data source =DESKTOP-EK069V4\\SQLEXPRESS; database = project-5  ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand
            ($"insert into Category values('{Category_Name.Value}','{formFileCat.FileName}')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("admin_Category.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Category.aspx");
        }
    }
}