using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

/// <summary>
/// Summary description for login_dal
/// </summary>
public class login_dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataTable dt;
    SqlDataReader rd;
    public login_dal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int user_login(login_bal obj)
    {
        int i = 0;

        cmd = new SqlCommand("Proc_login_user_Add", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@login_name", obj.User_name );
        cmd.Parameters.AddWithValue("@password", obj.Password);
        cmd.Parameters.AddWithValue("@oper", obj.Oper);
        try
        {
            con.Open();
                  rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                i = 1;
            }
        }
        finally
        {
            con.Close();
        }
        return i;

    }

    public string  Create_new_user(login_bal obj)
    {
       
        cmd = new SqlCommand("Proc_login_user_Add", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@login_name", obj.User_name);
        cmd.Parameters.AddWithValue("@password", obj.Password);
        cmd.Parameters.AddWithValue("@email_id", obj.Email_id );
        cmd.Parameters.AddWithValue("@oper", obj.Oper);
        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
            return i.ToString();
        }
        catch(Exception ex)
        {
            return (ex.Message.ToString());
        }
        finally
        {
            con.Close();
        }
       

    }
    public DataTable Forget_password(login_bal obj)
    {
        cmd = new SqlCommand("Proc_login_user_Add", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@email_id", obj.Email_id);
        cmd.Parameters.AddWithValue("@oper", obj.Oper);
        try
        {
            adp = new SqlDataAdapter(cmd);
            dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {

            string s = ex.Message.ToString();
            //  MessageBox.Show(s);
            return dt;
        }
        finally
        {
            con.Close();
        }
    }
}