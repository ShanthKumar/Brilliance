using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Staf_dal
/// </summary>
public class Staf_dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataTable dt;
    SqlDataReader rd;
  //  staff_bal obj_staffbal = new staff_bal();
	public Staf_dal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable qualification_bind()
    {
        cmd = new SqlCommand("Proc_Qualification_bind", con);


        cmd.CommandType = CommandType.StoredProcedure;
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
    public int Staff_add(staff_bal obj_staffbal)
    {
        cmd = new SqlCommand("Proc_Staff_ADD", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@staff_id", obj_staffbal.Staff_id);
        cmd.Parameters.AddWithValue("@first_name", obj_staffbal.First_name);
        cmd.Parameters.AddWithValue("@middle_name", null);
        cmd.Parameters.AddWithValue("@last_name", obj_staffbal.Last_name);
        cmd.Parameters.AddWithValue("@gender", obj_staffbal.Gender);
        cmd.Parameters.AddWithValue("@dob", obj_staffbal.Dob);
        cmd.Parameters.AddWithValue("@dataofjoining", obj_staffbal.Date_of_join);
        cmd.Parameters.AddWithValue("@mobile1", obj_staffbal.Mob1);
        cmd.Parameters.AddWithValue("@mobile2", obj_staffbal.Mob2);
        cmd.Parameters.AddWithValue("@qualification", obj_staffbal.Qualification);
        cmd.Parameters.AddWithValue("@address", obj_staffbal.Address);

        cmd.Parameters.AddWithValue("@pincode", obj_staffbal.Pin_code);
        cmd.Parameters.AddWithValue("@Status", obj_staffbal.Status);
        cmd.Parameters.AddWithValue("@salary", obj_staffbal.Salary);
        cmd.Parameters.AddWithValue("@subject", obj_staffbal.Subject);
        cmd.Parameters.AddWithValue("@type", obj_staffbal.Type);
        cmd.Parameters.AddWithValue("@operation", "insert");

        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {

            string s = ex.Message.ToString();
            // MessageBox.Show(s);
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public int Staff_Update(staff_bal obj_staffbal)
    {
        cmd = new SqlCommand("Proc_Staff_ADD", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@staff_id", obj_staffbal.Staff_id);
        cmd.Parameters.AddWithValue("@first_name", obj_staffbal.First_name);
        cmd.Parameters.AddWithValue("@middle_name", null);
        cmd.Parameters.AddWithValue("@last_name", obj_staffbal.Last_name);
        cmd.Parameters.AddWithValue("@gender", obj_staffbal.Gender);
        cmd.Parameters.AddWithValue("@dob", obj_staffbal.Dob);
        cmd.Parameters.AddWithValue("@dataofjoining", obj_staffbal.Date_of_join);
        cmd.Parameters.AddWithValue("@mobile1", obj_staffbal.Mob1);
        cmd.Parameters.AddWithValue("@mobile2", obj_staffbal.Mob2);
        cmd.Parameters.AddWithValue("@qualification", obj_staffbal.Qualification);
        cmd.Parameters.AddWithValue("@address", obj_staffbal.Address);

        cmd.Parameters.AddWithValue("@pincode", obj_staffbal.Pin_code);
        cmd.Parameters.AddWithValue("@Status", obj_staffbal.Status);
        cmd.Parameters.AddWithValue("@salary", obj_staffbal.Salary);
        cmd.Parameters.AddWithValue("@subject", obj_staffbal.Subject);
        cmd.Parameters.AddWithValue("@type", obj_staffbal.Type);
        cmd.Parameters.AddWithValue("@operation", "update");

        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {

            string s = ex.Message.ToString();
            // MessageBox.Show(s);
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public DataTable Staff_search(staff_bal obj_staffbal)
    {
        cmd = new SqlCommand("Proc_Search_Staff", con);
        cmd.Parameters.AddWithValue("@id", obj_staffbal.Staff_id);

        cmd.CommandType = CommandType.StoredProcedure;
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

    public int image_update(staff_bal obj)
    {
        int j = 0;
        try
        {
          
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("Proc_image", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Image_id", SqlDbType.NVarChar).Value = obj.Staff_id;
            cmd.Parameters.Add("@photo", SqlDbType.Image).Value = obj.Img;

            j = cmd.ExecuteNonQuery();

            // MessageBox.Show("Image Save Successfully!!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

            return j;
        }
        catch (Exception ex)
        {
          
            return j;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    public DataTable Staff_All(staff_bal obj_staffbal)
    {
      
        try
        {
            adp = new SqlDataAdapter("select * from Staff_Details",con );
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