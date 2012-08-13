<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) 
    {
        //SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=onthought_db;Data Source=peak3004/SQLEXPRESS");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    
        try
        {
            // Create SQL Command
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from Image_Store where Image_id=@ID";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;

            SqlParameter ImageID = new SqlParameter
                                ("@ID", System.Data.SqlDbType.NVarChar);
            ImageID.Value = context.Request.QueryString["ID"];
            cmd.Parameters.Add(ImageID);
           con.Open();
            SqlDataReader dReader = cmd.ExecuteReader();
            dReader.Read();
            context.Response.BinaryWrite((byte[])dReader["photo"]);

            //context.Response.BinaryWrite((byte[])dReader["signature"]);
            dReader.Close();
            con.Close();
        }catch(Exception ex)
        {
        }

    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}