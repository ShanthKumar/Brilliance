using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Student_Admission : System.Web.UI.Page
{
    FeeStructure objFees = new FeeStructure();
    Student_bal obj_studentbal = new Student_bal();
    DataTable dt;

    public int in_comp, in_material, in_special, in_smart, in_exam, in_admission, in_total,in_discount,in_applicationFee=50;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("index.aspx");
            }
            drpClasses.Items.Clear();
            drpClasses.DataTextField = "Class_Name";
            drpClasses.DataValueField = "Class_id";
            drpClasses.DataSource = objFees.getClasses();
            drpClasses.DataBind();

            drpPaymentModes.Items.Clear();
            drpPaymentModes.DataTextField = "PaymentMade";
            drpPaymentModes.DataValueField = "PaymentMode_id";
            drpPaymentModes.DataSource = objFees.getPaymentModes();
            drpPaymentModes.DataBind();
        }

        boundDetails();
    }

    protected void boundDetails()
    {
        objFees.className = drpClasses.SelectedItem.Text;
        DataRow ddr = objFees.getClassFeeStructure().Rows[0];
        lbladmissionfees.Text = "Rs " + ddr["New_Adm_Fee"] + "/-";
        in_admission = Convert.ToInt32(ddr["New_Adm_Fee"]);
        lblMaterial.Text = "Rs " + ddr["Material_Fee"] + "/-";
        in_material = Convert.ToInt32(ddr["Material_Fee"]);
        lblComp.Text = "Rs " + ddr["Computer_Fee"] + "/-";
        in_comp = Convert.ToInt32(ddr["Computer_Fee"]);
        lblSmart.Text = "Rs " + ddr["Smart_Class_Fee"] + "/-";
        in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]);
        lblSpl.Text = "Rs " + ddr["SpecialDay_Fee"] + "/-";
        in_special = Convert.ToInt32(ddr["SpecialDay_Fee"]);
        lblExam.Text = "Rs " + ddr["Exam_Fee"] + "/-";
        in_exam = Convert.ToInt32(ddr["Exam_Fee"]);

        if (drpPaymentModes.SelectedItem.Text.Equals("Monthly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"])/12 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"])/12;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 12 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"])/12;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 12 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"])/12;
        }
        else if (drpPaymentModes.SelectedItem.Text.Equals("Half-Yearly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"]) / 2 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"]) / 2;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 2 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"]) / 2;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 2 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]) / 2;
        }
        else if (drpPaymentModes.SelectedItem.Text.Equals("Quaterly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"]) / 4 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"]) / 4;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 4 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"]) / 4;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 4 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]) / 4;
        }

        if(rdNewAdm.Checked == true)
        {
            try
            {
                if (txt_Discount.Text.Equals(""))
                {
                    in_discount = 0;
                }
                else
                {
                    in_discount = Convert.ToInt32(txt_Discount.Text);
                }
                 
                in_total = in_comp + in_material + in_special + in_smart + in_exam + in_admission - in_discount + in_applicationFee;
            }
            catch
            {

            }
            
        }else if (rdReAdm.Checked == true)
        {
            in_total = in_comp + in_material + in_special + in_smart + in_exam + in_applicationFee;
        }

        lblTotal.Text = "Rs " + in_total + "/-";
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        obj_studentbal.Class_ID1 = drpclass.SelectedItem.Text;
        obj_studentbal.Student_id = txtStudent.Text;
        dt = obj_studentbal.Student_Search();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void reBind(object sender, EventArgs e)
    {
        boundDetails();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        obj_studentbal.Student_id = GridView1.SelectedRow.Cells[0].Text;
        dt = obj_studentbal.FIll_All();
        if (dt.Rows.Count > 0)
        {
            txt_studentid.Text = dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            if (dt.Rows[0][2].ToString().Equals("male") || dt.Rows[0][2].ToString().Equals("Male"))
            {
                radio_gender.SelectedValue = "male";
            }else if (dt.Rows[0][2].ToString().Equals("female") || dt.Rows[0][2].ToString().Equals("Female"))
            {
                radio_gender.SelectedValue = "female";
            }
            string[] dob = (dt.Rows[0][3].ToString()).Split(' ');
            txt_dob.Text = dob[0];
          
        }
    }
    protected void Unnamed1_CheckedChanged(object sender, EventArgs e)
    {
        phAdmission.Visible = false;
    }
    protected void Unnamed2_CheckedChanged(object sender, EventArgs e)
    {
        phAdmission.Visible = true;
    }
    protected void drpClasses_SelectedIndexChanged(object sender, EventArgs e)
    {
        boundDetails();
    }
    protected void drpPaymentModes_SelectedIndexChanged(object sender, EventArgs e)
    {
        boundDetails();
    }
    protected void ImageButton4_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        if (txt_studentid.Text.Equals(""))
        {
            lblErrors.Text = "Please Select a Student !!!";
            return;
        }
        float application = 50.0F;
        try
        {
            if (rdNewAdm.Checked == true)
            {
                objFees.AdmittStudent(txt_studentid.Text, drpClasses.SelectedItem.Text, application, in_admission, in_discount, (application + in_admission - in_discount), txt_DiscountReason.Text);
            }
            objFees.PayFees(txt_studentid.Text,drpClasses.SelectedItem.Text,in_material,in_comp,in_smart,in_special,in_exam,(in_material+in_comp+in_smart+in_special+in_exam),drpPaymentModes.SelectedItem.Text,"cash");
            //Response.Redirect("Student_Admission.aspx");

        }
        catch
        {
        }
        
    }

    protected void ImageButton5_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        Response.Redirect("Student_Admission.aspx");
    }
}