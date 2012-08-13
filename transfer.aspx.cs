using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using System.Configuration;

public partial class transfer : System.Web.UI.Page
{
    Student_bal obj_studentbal = new Student_bal();
    tc_bal obj_tc_bal = new tc_bal();
    DataTable dt;
    DataSet ds;
    ReportDocument cr = new ReportDocument();   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("index.aspx");
            }
            auto_id();          
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        //try
        //{
            //obj_studentbal.Student_id = GridView1.SelectedRow.Cells[0].Text;
            //ds = obj_studentbal.FIll_All1();


            //string Emty_quatation = null;
            //Emty_quatation = Convert.ToString(ConfigurationSettings.AppSettings["report4"]);
           
           
            ////cr.Load(Emty_quatation);
            //cr.Load("C:/Documents and Settings/Piyush/Desktop/brilliance_final/Transfer Certificate.rpt");
            //cr.SetDataSource(ds);
            //CrystalReportViewer1.ReportSource = cr;            
        //}
        //catch (Exception ex)
        //{
        //    //MessageBox.Show(ex.Message.ToString());
        //}



    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        obj_studentbal.Class_ID1 = drpclass.SelectedItem.Text;
        obj_studentbal.Student_id = txtStudent.Text;
        dt = obj_studentbal.Student_Search();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
    }
    public void save()
    {
        obj_tc_bal.Admission_date=TextBox1.Text;
        obj_tc_bal.Admission_no = TextBox2.Text;
        obj_tc_bal.Attanded_days = TextBox3.Text;
        obj_tc_bal.Caste = TextBox4.Text;
        obj_tc_bal.Charactor = TextBox5.Text;
        obj_tc_bal.Cumulative_rec_no = TextBox6.Text;
        obj_tc_bal.Current_std = TextBox7.Text;
        obj_tc_bal.District = TextBox8.Text;
        obj_tc_bal.Dob = TextBox9.Text;
        obj_tc_bal.Elective_studied = TextBox10.Text;
        obj_tc_bal.Father_name = TextBox11.Text;
        obj_tc_bal.Fee_discount = TextBox12.Text;
        obj_tc_bal.Fee_paid = TextBox13.Text;
        obj_tc_bal.Last_date = TextBox14.Text;
        obj_tc_bal.Medically_examined = TextBox15.Text;
        obj_tc_bal.Medium = TextBox16.Text;
        obj_tc_bal.Mother_name = TextBox17.Text;
        obj_tc_bal.Nationality = TextBox18.Text;
        obj_tc_bal.No_of_school_days = TextBox19.Text;
        obj_tc_bal.Place = TextBox20.Text;
        obj_tc_bal.Promotion = TextBox21.Text;
        obj_tc_bal.Religion = TextBox22.Text;
        obj_tc_bal.Schedule_cast = TextBox23.Text;
        obj_tc_bal.Scholorship = TextBox24.Text;
        obj_tc_bal.School_name = TextBox25.Text;
        obj_tc_bal.Sex = TextBox26.Text;
        obj_tc_bal.Stud_name = TextBox27.Text;
        obj_tc_bal.Studied_lang = TextBox28.Text;
        obj_tc_bal.Taluk = TextBox29.Text;
        obj_tc_bal.Tc_id = TextBox30.Text;
        obj_tc_bal.Tc_issue_date = TextBox31.Text;
        obj_tc_bal.Tc_received_date = TextBox32.Text;

        obj_tc_bal.save_tc_details();
    }

    public void auto_id()
    {
        DataTable dt = new DataTable();
        dt = obj_tc_bal.auto_tc_id();
        TextBox1.Text = dt.Rows[0].ItemArray[0].ToString();
    }

    public void check_tc_entry()
    {
        //obj_tc_bal.Admission_no = GridView1.SelectedRow.Cells[0].Text;       
        int i = obj_tc_bal.chk_tc_entry();
        if (i > 0)
        {
            Response.Write("<script>alert('Transfer Certificate has been already created for this student')</script>");
        }
        else
        {
            save();
        }
    }

    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        check_tc_entry();
        Button1.Visible = true;
        string str = "View_Report.aspx?id=" + TextBox1.Text;
        Response.Redirect(str);
    }
}