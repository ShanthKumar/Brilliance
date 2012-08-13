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
/// Summary description for Student_dal
/// </summary>
public class Student_dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataTable dt;
    SqlDataReader rd;
    

	public Student_dal()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int Student_Admission_Fees(Student_bal obj_studentbal)
    {
        cmd = new SqlCommand("proc_Fee_Structure_AddOrupdate", con);
      
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Class_ID", obj_studentbal.Class_ID1);
        cmd.Parameters.AddWithValue("@Application_Fee  ", obj_studentbal.Application_Fee1);
        cmd.Parameters.AddWithValue("@Readmission_Fee  ", obj_studentbal.Readmission_Fee1);        
        cmd.Parameters.AddWithValue("@Admission_Fee", obj_studentbal.Admission_Fee1);
        cmd.Parameters.AddWithValue("@Material_Fee  ", obj_studentbal.Material_Fee1);
        cmd.Parameters.AddWithValue("@Computer_Fee ", obj_studentbal.Computer_Fee1);
        cmd.Parameters.AddWithValue("@SmartClass_Fee ", obj_studentbal.SmartClass_Fee1);
        cmd.Parameters.AddWithValue("@SpecialDay_Fee", obj_studentbal.SpecialDay_Fee1);
        cmd.Parameters.AddWithValue("@Exam_Fee ", obj_studentbal.Exam_Fee1);
        cmd.Parameters.AddWithValue("@operation", obj_studentbal.Oper);

       
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

    public int Student_add(Student_bal obj_studentbal)
    {
        cmd = new SqlCommand("proc_student_addOrupdate", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@FirstName  ",obj_studentbal.Name  );
        cmd.Parameters.AddWithValue("@Gender", obj_studentbal.Gender);
        cmd.Parameters.AddWithValue("@LastName", obj_studentbal.Lastname );
        cmd.Parameters.AddWithValue("@DOB  ", obj_studentbal.DOB );
        cmd.Parameters.AddWithValue("@Elder_Brothers ",obj_studentbal.Elder_Brothers  );
        cmd.Parameters.AddWithValue("@Elder_Sisters ",obj_studentbal.Elder_Sisters  );
        cmd.Parameters.AddWithValue("@Younger_Brothers",obj_studentbal.Younger_Brothers  );
        cmd.Parameters.AddWithValue("@Younger_sisters ",obj_studentbal.Younger_sisters  );
        cmd.Parameters.AddWithValue("@operation",obj_studentbal.Oper);
        cmd.Parameters.AddWithValue("@Std ",obj_studentbal.Std  );
       
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

    public int Student_birthdetails_update(Student_bal obj_studentbal)
    {
        
     cmd = new SqlCommand("Student_Birth_Details_Update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@Birth_Place", obj_studentbal.Birth_Place );
        cmd.Parameters.AddWithValue("@Village", obj_studentbal.Village );
        cmd.Parameters.AddWithValue("@Taluk",obj_studentbal.Taluk  );
        cmd.Parameters.AddWithValue("@District", obj_studentbal.District );

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

    public DataTable Addmission_fees_fill(Student_bal obj_studentbal)
    {
        cmd = new SqlCommand("proc_addmission_fees_select",con);
        cmd.Parameters.AddWithValue("@Class_ID", obj_studentbal.Class_ID1);

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
            return dt;
        }
        finally
        {
            con.Close();
        }

    }

    public int Student_parants_update(Student_bal obj_studentbal)
    {

        cmd = new SqlCommand("student_Parents_Details_update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@Father_Name", obj_studentbal.Father_Name);
        cmd.Parameters.AddWithValue("@Father_qualification", obj_studentbal.Father_qualification);
        cmd.Parameters.AddWithValue("@Mother_Name", obj_studentbal.Mother_Name);
        cmd.Parameters.AddWithValue("@Mother_Qualification", obj_studentbal.Mother_Qualification);
        cmd.Parameters.AddWithValue("@Father_Occupation", obj_studentbal.Father_Occupation);
        cmd.Parameters.AddWithValue("@Mother_Occupation", obj_studentbal.Mother_Occupation);
        cmd.Parameters.AddWithValue("@Noof_Depedents", obj_studentbal.Noof_Depedents);
        cmd.Parameters.AddWithValue("@Annual_Income", obj_studentbal.Annual_Income);
        cmd.Parameters.AddWithValue("@father_contact_no", obj_studentbal.Father_contact_no );
        cmd.Parameters.AddWithValue("@mother_contact_no", obj_studentbal.Mother_contact_no );
        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
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
    public int Student_CastCategory_update(Student_bal obj_studentbal)
    {

        cmd = new SqlCommand("proc_cast_category_update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@Nationality", obj_studentbal.Nationality);
        cmd.Parameters.AddWithValue("@Religion", obj_studentbal.Religion);
        cmd.Parameters.AddWithValue("@Caste_category", obj_studentbal.Caste_category);
        cmd.Parameters.AddWithValue("@Mother_tongue", obj_studentbal.Mother_tongue );
        cmd.Parameters.AddWithValue("@caste", obj_studentbal.Sub_caste);

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

    public int Student_Admittedmedium_update(Student_bal obj_studentbal)
    {

        cmd = new SqlCommand("proc_Student_Admitted_medium_update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@Admitted_medium", obj_studentbal.Admited_medium);
        cmd.Parameters.AddWithValue("@Std", obj_studentbal.Std);
        cmd.Parameters.AddWithValue("@Dateof_Admision", obj_studentbal.Date_of_admission);
        cmd.Parameters.AddWithValue("@station", obj_studentbal.Station);
        cmd.Parameters.AddWithValue("@Batch", obj_studentbal.Batch);

        try
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
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

    public int Student_Student_Contact_update(Student_bal obj_studentbal)
    {
        cmd = new SqlCommand("proc_student_contact_update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@Permanent_Address", obj_studentbal.Permanent_Address);
        cmd.Parameters.AddWithValue("@Permanent_pincode", obj_studentbal.Permanent_pincode);
        cmd.Parameters.AddWithValue("@Permanent_city", obj_studentbal.Permanent_city);
        cmd.Parameters.AddWithValue("@Permenant_state", obj_studentbal.Permenant_state);
        cmd.Parameters.AddWithValue("@Permanent_country", obj_studentbal.Permanent_country);
        cmd.Parameters.AddWithValue("@Present_Address", obj_studentbal.Present_Address);
        cmd.Parameters.AddWithValue("@Guardian_Name", obj_studentbal.Guardian_Name);
        cmd.Parameters.AddWithValue("@Gurdian_address", obj_studentbal.Gurdian_address);
        cmd.Parameters.AddWithValue("@Phone_No", obj_studentbal.Phone_No);
        cmd.Parameters.AddWithValue("@Mobile_No", obj_studentbal.Mobile_No);
        cmd.Parameters.AddWithValue("@staying_with ", obj_studentbal.Staywith );

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
           // Response.Write("<script>alert('sucessful creation')</script>");
            
            return 0;
        }
        finally
        {
            con.Close();
        }
    }

    public int student_update(Student_bal obj_studentbal)
    {
            cmd = new SqlCommand("proc_Student_details_update", con);
            cmd.CommandType = CommandType.StoredProcedure;            
            cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
            cmd.Parameters.AddWithValue("@FirstName", obj_studentbal.Name);            
            cmd.Parameters.AddWithValue("@Gender", obj_studentbal.Gender);
            cmd.Parameters.AddWithValue("@DOB", obj_studentbal.DOB);
            cmd.Parameters.AddWithValue("@Elder_Brothers", obj_studentbal.Elder_Brothers);
            cmd.Parameters.AddWithValue("@Elder_Sisters", obj_studentbal.Elder_Sisters);
            cmd.Parameters.AddWithValue("@Younger_Brothers", obj_studentbal.Younger_Brothers);
            cmd.Parameters.AddWithValue("@Younger_sisters", obj_studentbal.Younger_sisters);
        
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
    public int Student_Student_LastSchool_update(Student_bal obj_studentbal)
    {
        cmd = new SqlCommand("proc_Student_lastschool_update", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Student_id", obj_studentbal.Student_id);
        cmd.Parameters.AddWithValue("@School_Name", obj_studentbal.School_Name);
        cmd.Parameters.AddWithValue("@Scholarship_withyear", obj_studentbal.Scholarship_withyear);
        cmd.Parameters.AddWithValue("@Standard_withyear", obj_studentbal.Standard_withyear);
        cmd.Parameters.AddWithValue("@Dateof_leaving", obj_studentbal.Dateof_leaving);
        cmd.Parameters.AddWithValue("@Reasonfor_leaving", obj_studentbal.Reasonfor_leaving);
        cmd.Parameters.AddWithValue("@Lc_no", obj_studentbal.Lc_no);
        cmd.Parameters.AddWithValue("@Language_Studied", obj_studentbal.Language_Studied);
        cmd.Parameters.AddWithValue("@Optional_subjects", obj_studentbal.Optional_subjects);
        cmd.Parameters.AddWithValue("@Medium_Taken", obj_studentbal.Medium_Taken);
        cmd.Parameters.AddWithValue("@Allergy", obj_studentbal.Allergy );
        
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


    public DataTable Student_auto_id()
    {
        SqlCommand sqlcmd = new SqlCommand("select 'Stud-' + isnull(CONVERT(varchar,(max(SUBSTRING (Student_id , CharIndex('-',Student_id)+1 , LEN(Student_id) )+1))),1) from Student_Details", con);
        adp = new SqlDataAdapter(sqlcmd);
        dt = new DataTable();
        adp.Fill(dt);
        return dt;
    }
    public int image_update(Student_bal  obj)
    {
        int j = 0;
        try
        {

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("Proc_Student_image", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Student_id", SqlDbType.NVarChar).Value = obj.Student_id ;
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
    

   

    public DataTable student_search(Student_bal obj_studentbal)
    {
        try
        {
        cmd = new SqlCommand("Proc_Search_STudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@class", obj_studentbal.Class_ID1);
        cmd.Parameters.AddWithValue("@select", obj_studentbal.Class_ID1);
        cmd.Parameters.AddWithValue("@id", obj_studentbal.Student_id);        
       
            adp = new SqlDataAdapter(cmd);
            dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {

            string s = ex.Message.ToString();
         
            return dt;
        }
        finally
        {
            con.Close();
        }
    }

    public DataTable details_FillAll(Student_bal obj_studentbal)
    {

        SqlCommand sqlcmd = new SqlCommand("select * from Admissions where StudentID=@StudentID", con);
        sqlcmd.Parameters.AddWithValue("@StudentID", obj_studentbal.Student_id);
        adp = new SqlDataAdapter(sqlcmd);
        dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            try
            {
                cmd = new SqlCommand("proc_fill_all_details");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", obj_studentbal.Student_id);
                cmd.Parameters.AddWithValue("@admission", "Yes");
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();


                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();

                adp.Fill(dt);
                return dt;
                con.Close();
            }
            catch (Exception ex)
            {
                string s = ex.Message.ToString();
                return dt;
            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            try
            {
                cmd = new SqlCommand("proc_fill_all_details");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", obj_studentbal.Student_id);
                cmd.Parameters.AddWithValue("@admission", "No");
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();


                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();

                adp.Fill(dt);
                return dt;
                con.Close();
            }
            catch (Exception ex)
            {
                string s = ex.Message.ToString();
                return dt;
            }
            finally
            {
                con.Close();
            }
        }
        
    }
    


}