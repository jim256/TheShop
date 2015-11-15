using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheShop
{
    public partial class RepairStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string repairID = Request.QueryString["repairID"];

            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                uploader.Visible = true;
            }
            else
            {
                uploader.Visible = false;
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            Boolean fileOK = false;
            String path = Server.MapPath("~/Images/Jobs/");
            if (FileUpload1.HasFile)
            {
                String fileExtension =
                    System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions =
                    {".gif", ".png", ".jpeg", ".jpg"};
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    

                    //insert to database
                    SqlConnection conn = new SqlConnection(sqlJobStatus.ConnectionString);
                    SqlCommand insert = new SqlCommand("insert into JobImages(Name, Path, JobID) values(@Name, @Path, @JobID)", conn);
                    insert.Parameters.AddWithValue("@Name", FileUpload1.FileName);
                    insert.Parameters.AddWithValue("@Path", path + FileUpload1.FileName);
                    insert.Parameters.AddWithValue("@JobID", Request.QueryString["jobID"]);

                    try
                    {
                        conn.Open();
                        insert.ExecuteNonQuery();

                        FileUpload1.PostedFile.SaveAs(path
                        + FileUpload1.FileName);
                        lblSuccess.Text = "File uploaded!";

                        lstImages.DataBind();
                    }
                    catch
                    {
                        lblSuccess.Text = "Error when saving to database";
                        conn.Close();
                    }
                }
                catch (Exception ex)
                {
                    lblSuccess.Text = "File could not be uploaded.";
                }
            }
            else
            {
                lblSuccess.Text = "Cannot accept files of this type.";
            }
        }
    }
}