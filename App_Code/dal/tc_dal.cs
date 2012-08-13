using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for tc_dal
/// </summary>
public class tc_dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataTable dt;    
    SqlDataReader dr;
	public tc_dal()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int save_tc_details(tc_bal obj_tc_bal)
    {
        cmd = new SqlCommand("tc_details", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@tc_id", obj_tc_bal.Tc_id);
        cmd.Parameters.AddWithValue("@school_name ", obj_tc_bal.School_name);
        cmd.Parameters.AddWithValue("@admission_no", obj_tc_bal.Admission_no);
        cmd.Parameters.AddWithValue("@cumulative_rec_no", obj_tc_bal.Cumulative_rec_no);
        cmd.Parameters.AddWithValue("@stud_name  ", obj_tc_bal.Stud_name);
        cmd.Parameters.AddWithValue("@sex ", obj_tc_bal.Sex);
        cmd.Parameters.AddWithValue("@nationality ", obj_tc_bal.Nationality);
        cmd.Parameters.AddWithValue("@religion", obj_tc_bal.Religion);
        cmd.Parameters.AddWithValue("@caste ", obj_tc_bal.Caste);
        cmd.Parameters.AddWithValue("@father_name", obj_tc_bal.Father_name);
        cmd.Parameters.AddWithValue("@mother_name", obj_tc_bal.Mother_name);
        cmd.Parameters.AddWithValue("@schedule_cast", obj_tc_bal.Schedule_cast);
        cmd.Parameters.AddWithValue("@promotion", obj_tc_bal.Promotion);
        cmd.Parameters.AddWithValue("@dob", obj_tc_bal.Dob);
        cmd.Parameters.AddWithValue("@place", obj_tc_bal.Place);
        cmd.Parameters.AddWithValue("@taluk", obj_tc_bal.Taluk);
        cmd.Parameters.AddWithValue("@district", obj_tc_bal.District);
        cmd.Parameters.AddWithValue("@current_std", obj_tc_bal.Current_std);
        cmd.Parameters.AddWithValue("@studied_lang ",obj_tc_bal.Studied_lang);
        cmd.Parameters.AddWithValue("@elective_studied ", obj_tc_bal.Elective_studied);
        cmd.Parameters.AddWithValue("@medium ", obj_tc_bal.Medium);
        cmd.Parameters.AddWithValue("@admission_date ", obj_tc_bal.Admission_date);
        cmd.Parameters.AddWithValue("@fee_paid ", obj_tc_bal.Fee_paid);
        cmd.Parameters.AddWithValue("@fee_discount ", obj_tc_bal.Fee_discount);
        cmd.Parameters.AddWithValue("@scholorship ", obj_tc_bal.Scholorship);
        cmd.Parameters.AddWithValue("@medically_examined ", obj_tc_bal.Medically_examined);
        cmd.Parameters.AddWithValue("@last_date ", obj_tc_bal.Last_date);
        cmd.Parameters.AddWithValue("@tc_received_date ", obj_tc_bal.Tc_received_date);
        cmd.Parameters.AddWithValue("@tc_issue_date ", obj_tc_bal.Tc_issue_date);
        cmd.Parameters.AddWithValue("@no_of_school_days ", obj_tc_bal.No_of_school_days);
        cmd.Parameters.AddWithValue("@attanded_days ", obj_tc_bal.Attanded_days);
        cmd.Parameters.AddWithValue("@charactor ", obj_tc_bal.Charactor);
        cmd.Parameters.AddWithValue("@select ", "insert");
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

    public DataTable auto_TC_ID()
    {
        string current_year = System.DateTime.Now.Year.ToString();
        SqlCommand sqlcmd = new SqlCommand("select 'TC'+'-'+'" + current_year + "'+'/'+ isnull(CONVERT(nvarchar,(max(SUBSTRING ( tc_id , CharIndex('/',tc_id)+1 , LEN(tc_id) )+1))),1) from transfer_certificate", con);
        adp = new SqlDataAdapter(sqlcmd);
        dt = new DataTable();
        adp.Fill(dt);
        return dt;
    }

    public int chk_tc_entry(tc_bal obj_tc_bal)
    {
        cmd = new SqlCommand("tc_details", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@admission_no", obj_tc_bal.Admission_no);       
        cmd.Parameters.AddWithValue("@select ", "select");
        int i = 0;
        try
        {
            con.Open();            
            dr = cmd.ExecuteReader();
            
            if (dr.Read())
            {
                i = 1;
            }
            return i;          
        }
        catch (Exception ex)
        {
            string s = ex.Message.ToString();            
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public DataTable bind_report(tc_bal obj_tc_bal)
        {
            cmd = new SqlCommand("tc_details", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@admission_no", obj_tc_bal.Admission_no);          
            cmd.Parameters.AddWithValue("@select ", "select");           
            try
            {
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adp.Fill(dt);
                
            }
            catch (Exception ex)
            {
                string s = ex.Message.ToString();                
            }
            finally
            {
                con.Close();
            }
            return dt;
        }
    
}