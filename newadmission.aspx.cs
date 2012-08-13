using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


public partial class newadmission : System.Web.UI.Page
{
    Student_bal obj_studentbal = new Student_bal();
    DataTable dt;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
   

    protected void btnSave_Click(object sender, EventArgs e)
    {
        

        obj_studentbal.Class_ID1 = drpClass.SelectedItem.Text;
        obj_studentbal.Application_Fee1 = txtApplicationFees.Text;        
        obj_studentbal.Readmission_Fee1 = txtReaddmission.Text;
        obj_studentbal.Admission_Fee1 = txtAdmission.Text;
        obj_studentbal.Material_Fee1 = txtMaterilaFees.Text;
        obj_studentbal.Computer_Fee1 = txtComputer.Text;
        obj_studentbal.SmartClass_Fee1 = txtSmartClass.Text;
        obj_studentbal.SpecialDay_Fee1 = txtSpScDay.Text;
        obj_studentbal.Exam_Fee1 = txtExam.Text;

        obj_studentbal.Oper = "insert";
        int i = obj_studentbal.Student_Admission_Fees();
        if (i > 0)
        {

             Response.Write("<script>alert('sucessful creation')</script>");
        }
         
        else 
        {
            Response.Write("<script>alert('Error')</script>");
        }
        txtAdmission.Text = "";
        txtApplicationFees.Text = "";
        txtApplicationFees.Text = "";
        txtMaterilaFees.Text = "";
        txtExam.Text = "";
        txtReaddmission.Text = "";
        txtSmartClass.Text = "";
        txtSpScDay.Text = "";
        drpClass.SelectedIndex = 0;
        txtMaterilaFees.Text = "";
        txtComputer.Text = "";
        

        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtAdmission.Text = "";
        txtMaterilaFees.Text = "";
        txtApplicationFees.Text = "";
        txtExam.Text = "";
        txtReaddmission.Text = "";
        txtSmartClass.Text = "";
        txtSpScDay.Text = "";
        drpClass.SelectedIndex = 0;
        txtMaterilaFees.Text = "";
        txtComputer.Text = "";
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        obj_studentbal.Class_ID1 = drpClass.SelectedItem.Text;
        obj_studentbal.Application_Fee1 = txtApplicationFees.Text;        
        obj_studentbal.Readmission_Fee1 = txtReaddmission.Text;
        obj_studentbal.Admission_Fee1 = txtAdmission.Text;
        obj_studentbal.Material_Fee1 = txtMaterilaFees.Text;
        obj_studentbal.Computer_Fee1 = txtComputer.Text;
        obj_studentbal.SmartClass_Fee1 = txtSmartClass.Text;
        obj_studentbal.SpecialDay_Fee1 = txtSpScDay.Text;
        obj_studentbal.Exam_Fee1 = txtExam.Text;

        obj_studentbal.Oper = "update";
        int i1 = obj_studentbal.Student_Admission_Fees();
        if (i1 > 0)
        {

            Response.Write("<script>alert('sucessful updation')</script>");
        }

        else
        {
            Response.Write("<script>alert('Error')</script>");
        }
        txtAdmission.Text = "";
        txtMaterilaFees.Text = "";
        txtApplicationFees.Text = "";
        txtExam.Text = "";
        txtReaddmission.Text = "";
        txtSmartClass.Text = "";
        txtSpScDay.Text = "";
        drpClass.SelectedIndex = 0;
        txtMaterilaFees.Text = "";
        txtComputer.Text = "";

    }
   
    protected void drpClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj_studentbal.Class_ID1 = drpClass.SelectedItem.Text;
        dt = new DataTable();
        dt = obj_studentbal.addmission_fees_fill();
        if (dt.Rows.Count > 0)
        {
            drpClass.SelectedItem.Text = dt.Rows[0][0].ToString();
            txtApplicationFees.Text = dt.Rows[0][1].ToString();
            txtReaddmission.Text = dt.Rows[0][3].ToString();
            txtAdmission.Text = dt.Rows[0][2].ToString();
            txtMaterilaFees.Text = dt.Rows[0][4].ToString();
            txtComputer.Text = dt.Rows[0][5].ToString();
            txtSmartClass.Text = dt.Rows[0][6].ToString();            
            txtSpScDay.Text = dt.Rows[0][7].ToString();
            txtExam.Text = dt.Rows[0][8].ToString();
        }   

    }
    
}