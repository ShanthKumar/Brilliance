using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for FeeStructure
/// </summary>
public class FeeStructure
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter adp;
    SqlCommand cmd;
    DataTable dt;
    SqlDataReader rd;
    public float newAd,ReAd,mat,comp,smart,special,exam,total;
    public string className;

	public FeeStructure()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GetFeeStructure()
    {
        cmd = new SqlCommand("select * from Fee_Structure", con);

        cmd.CommandType = CommandType.Text;
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

    public void updateFeeRecord()
    {
        cmd = new SqlCommand("update Fee_Structure set New_Adm_Fee = @New_Adm_Fee,  Re_Adm_Fee = @Re_Adm_Fee,Material_Fee = @Material_Fee, Computer_Fee = @Computer_Fee, Smart_Class_Fee = @Smart_Class_Fee, SpecialDay_Fee = @SpecialDay_Fee,Exam_Fee = @Exam_Fee,Total_Fee = @Total_Fee where Class_Name = @Class_Name  ", con);
        cmd.Parameters.AddWithValue("@Class_Name", this.className);
        cmd.Parameters.AddWithValue("@New_Adm_Fee", this.newAd);
        cmd.Parameters.AddWithValue("@Re_Adm_Fee", this.ReAd);
        cmd.Parameters.AddWithValue("@Material_Fee", this.mat);
        cmd.Parameters.AddWithValue("@Computer_Fee", this.comp);
        cmd.Parameters.AddWithValue("@Smart_Class_Fee", this.smart);
        cmd.Parameters.AddWithValue("@SpecialDay_Fee", this.special);
        cmd.Parameters.AddWithValue("@Exam_Fee", this.exam);
        float total = this.newAd + this.ReAd + this.mat + this.comp + this.smart + this.special + this.exam;
        cmd.Parameters.AddWithValue("@Total_Fee", total);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            string s = ex.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }


    public DataTable getClasses()
    {
        cmd = new SqlCommand("select Class_id,Class_Name from Fee_Structure", con);

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
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

    public DataTable getPaymentModes()
    {
        cmd = new SqlCommand("select PaymentMode_id,PaymentMade from PaymentModes", con);

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
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

    public DataTable getClassFeeStructure()
    {
        cmd = new SqlCommand("select * from Fee_Structure where Class_Name=@Class_Name", con);
        cmd.Parameters.AddWithValue("@Class_Name", this.className);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();

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

    public void AdmittStudent(string Studentid, string class_name, float application, float admission, float discount, float total, string reason)
    {
        cmd = new SqlCommand("insert into Admissions (StudentID,Class_Name,AdmissionDate,ApplicationFee,AdmissionFee,Discount,DiscountReason,Total) values (@StudentID,@Class_Name,@AdmissionDate,@ApplicationFee,@AdmissionFee,@Discount,@DiscountReason,@Total)", con);
        cmd.Parameters.AddWithValue("@Class_Name", class_name);
        cmd.Parameters.AddWithValue("@StudentID", Studentid);
        cmd.Parameters.AddWithValue("@AdmissionDate", DateTime.Now);
        cmd.Parameters.AddWithValue("@ApplicationFee", application);
        cmd.Parameters.AddWithValue("@AdmissionFee", admission);
        cmd.Parameters.AddWithValue("@Discount", discount);
        cmd.Parameters.AddWithValue("@DiscountReason", reason);
        cmd.Parameters.AddWithValue("@Total", total);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            string s = ex.Message.ToString();
        }
        finally
        {
            con.Close();
            changeclass(Studentid,class_name);
        }
    }


    public void changeclass (String studid, string classname)
{
    cmd = new SqlCommand("update Student_Details set Class=@Class_Name where Student_id=@StudentID", con);
    cmd.Parameters.AddWithValue("@Class_Name", classname);
    cmd.Parameters.AddWithValue("@StudentID", studid);
    cmd.CommandType = CommandType.Text;
    cmd.Connection = con;
    con.Open();

    try
    {
        cmd.ExecuteNonQuery();
    }
    catch (Exception ex)
    {
        string s = ex.Message.ToString();
    }
    finally
    {
        con.Close();
    }
}
    public void PayFees(string Studentid, string class_name,float mat, float comp,float smart, float special,float exam, float total,string paymode, string paytype)
    {

        cmd = new SqlCommand("insert into Student_Fees (StudentID,Class_Name,PaymentDate,Material_Fee,Computer_Fee,SmartClass_Fee,SpecialDay_Fee,Exam_Fee,Total,PaymentMode,PaymentType) values (@StudentID,@Class_Name,@PaymentDate,@Material_Fee,@Computer_Fee,@SmartClass_Fee,@SpecialDay_Fee,@Exam_Fee,@Total,@PaymentMode,@PaymentType)", con);
        cmd.Parameters.AddWithValue("@Class_Name", class_name);
        cmd.Parameters.AddWithValue("@StudentID", Studentid);
        cmd.Parameters.AddWithValue("@PaymentDate", DateTime.Now);
        cmd.Parameters.AddWithValue("@Material_Fee", mat);
        cmd.Parameters.AddWithValue("@Computer_Fee", comp);
        cmd.Parameters.AddWithValue("@SmartClass_Fee", smart);
        cmd.Parameters.AddWithValue("@SpecialDay_Fee", special);
        cmd.Parameters.AddWithValue("@Exam_Fee", exam);
        cmd.Parameters.AddWithValue("@Total", total);
        cmd.Parameters.AddWithValue("@PaymentMode", paymode);
        cmd.Parameters.AddWithValue("@PaymentType", paytype);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            string s = ex.Message.ToString();
        }
        finally
        {
            con.Close();
            changeclass(Studentid, class_name);
        }

    }


    public DataTable getStudentFeeDetails(string studid)
    {

        cmd = new SqlCommand("select Class_Name,PaymentDate,Material_Fee,Computer_Fee,SmartClass_Fee,SpecialDay_Fee,Exam_Fee,Total,PaymentMode,PaymentType from Student_Fees where StudentID=@StudentID order by PaymentDate Asc", con);
        cmd.Parameters.AddWithValue("@StudentID", studid);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();

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

    public string getStudentClass(string studentid)
    {
        cmd = new SqlCommand("select top 1 Class_Name from Admissions where StudentID=@StudentID", con);
        cmd.Parameters.AddWithValue("@StudentID", studentid);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();

        try
        {
            adp = new SqlDataAdapter(cmd);
            dt = new DataTable();
            adp.Fill(dt);
            string val= "";
            if (dt.Rows.Count <= 0)
            {
                con.Close();
                cmd = new SqlCommand("select Class from [Student_Details] where Student_id=@StudentID", con);
                cmd.Parameters.AddWithValue("@StudentID", studentid);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                adp = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adp.Fill(dt);
                DataRow row = dt.Rows[0];
                val = row["Class"].ToString();
                return val;
            }
            DataRow row1 = dt.Rows[0];
            val = row1["Class_Name"].ToString();
            return val;
        }
        catch (Exception ex)
        {
            string s = ex.Message.ToString();
            return s;
        }
        finally
        {
            con.Close();
        }
    }

  
}