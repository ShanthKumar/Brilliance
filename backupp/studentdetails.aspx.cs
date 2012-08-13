using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentdetails : System.Web.UI.Page
{
    Student_bal obj_studentbal = new Student_bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();   
    }

    private void checkbox()
    {
    if(CheckBox1.Checked==true)
        Panel1.Visible = true;
    else
        Panel1.Visible = false;
   
        if (CheckBox2.Checked == true)
        Panel2.Visible = true;
    else
        Panel2.Visible = false;
    
        if (CheckBox3.Checked == true)
        Panel3.Visible = true;
    else
        Panel3.Visible = false;
   
        if (CheckBox4.Checked == true)
        Panel4.Visible = true;
    else
  
            Panel4.Visible = false;
    if (CheckBox5.Checked == true)
        Panel5.Visible = true;
    else
        Panel5.Visible = false;
    if (CheckBox6.Checked == true)
        Panel6.Visible = true;
    else
        Panel6.Visible = false;

    if (CheckBox7.Checked == true)
        Panel7.Visible = true;
    else
        Panel7.Visible = false;
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();
    }
    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();
    }
    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();
    }
    protected void CheckBox6_CheckedChanged1(object sender, EventArgs e)
    {
        checkbox();
    }
    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        checkbox();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
      /*Admitted medium*/
       // obj_studentbal.Admited_medium = txt_std.Text;
        obj_studentbal.Batch = DateTime.Now.Date.ToShortDateString();
        obj_studentbal.Date_of_admission = txt_dateofadmiossion.Text;
        obj_studentbal.Station = txt_admitted_medium.Text;
        obj_studentbal.Std = drp_std.SelectedItem .Text;

        /*Student Details*/
        obj_studentbal.Name = txt_name.Text;
        obj_studentbal.Student_id = txt_studentid.Text;
        obj_studentbal.Younger_Brothers = int.Parse(txt_yun_bro.Text);
        obj_studentbal.Younger_sisters = int.Parse(txt_yun_sis.Text);
        obj_studentbal.DOB = txt_dob.Text;
        obj_studentbal.Elder_Brothers = int.Parse(txt_el_bro.Text);
        obj_studentbal.Elder_Sisters = int.Parse(txt_el_sis.Text);
        obj_studentbal.Gender = radio_gender.SelectedItem.Text;


        /*Contact Details*/

        obj_studentbal.Permanent_Address = txt_permanent_addr.Text;
        obj_studentbal.Permanent_city = txt_city.Text;
        obj_studentbal.Permanent_country = txt_country.Text;
        obj_studentbal.Permanent_pincode = txt_pincode.Text;
        obj_studentbal.Permenant_state = state.Text;
        obj_studentbal.Phone_No = txt_phone.Text;
        obj_studentbal.Present_Address = txt_present_adrr.Text;
        obj_studentbal.Guardian_Name = txt_guadianname.Text;
        obj_studentbal.Gurdian_address = txt_guadian_addrs.Text;
        obj_studentbal.Mobile_No = txt_mob.Text;

        /*Parants Details*/
        obj_studentbal.Father_Name = txt_fathername.Text;
        obj_studentbal.Father_Occupation = txt_father_occupation.Text;
        obj_studentbal.Father_qualification = txt_father_qualification.Text;
        obj_studentbal.Mother_Name = txt_mothername.Text;
        obj_studentbal.Mother_Occupation = txt_mother_occupation.Text;
        obj_studentbal.Mother_Qualification = txt_mother_quali.Text;
        obj_studentbal.Annual_Income = txt_income.Text;
        if (txt_noofdepend.Text != "")
        obj_studentbal.Noof_Depedents = int.Parse(txt_noofdepend.Text);
        obj_studentbal.Father_contact_no = txt_father_no.Text;
        obj_studentbal.Mother_contact_no = txt_mother_no.Text;

        /*Cast Categiry*/
        obj_studentbal.Religion = txt_religion.Text;
        obj_studentbal.Nationality = txt_natioality.Text;
        obj_studentbal.Caste_category = txt_caste.Text;
        obj_studentbal.Sub_caste = rado_caste.SelectedItem.Text;
        obj_studentbal.Mother_tongue = txt_mother_taungue.Text;

        /*Birth Details*/
        obj_studentbal.Birth_Place = txt_birthplace.Text;
        obj_studentbal.Taluk = txt_taulk.Text;
        obj_studentbal.Town = txt_town.Text;
        obj_studentbal.Village = txt_village.Text;
        obj_studentbal.District = txt_district.Text;

        /*last school*/
        obj_studentbal.Reasonfor_leaving = Txt_reason.Text;
        obj_studentbal.Date_LC = txt_lcdate.Text;
        obj_studentbal.Dateof_leaving = txt_lcdate.Text;
        obj_studentbal.LC = txt_lcno.Text;
       // obj_studentbal.Standard_withyear = txt_last_Std .Text + txt_standard_with_year0.Text;
        obj_studentbal.Optional_subjects = txt_optionalsubject.Text;
        obj_studentbal.Scholarship_withyear = txt_schallership.Text;
        obj_studentbal.School_Name = txt_schoolname.Text;
        obj_studentbal.Allergy = txt_dieses.Text;
        obj_studentbal.Medium_Taken = txt_medium.Text;
        obj_studentbal.Language_Studied = txt_language.Text;
        obj_studentbal.Oper = "insert";
        int i = obj_studentbal.Student_add();
        if (i>0)
        {
            Response.Write("<script>alert('sucess')</script>");
            obj_studentbal.Student_BirthUpdate();
            obj_studentbal.Student_parants_details();
            obj_studentbal.Student_caste_update();
            obj_studentbal.Student_Contact_update();
            obj_studentbal.Student_LastSchool_update();
            obj_studentbal.Medium_Taken = txt_medium.Text;
            obj_studentbal.Language_Studied = txt_language_spoken.Text;
          
        }
        else 
        {
            Response.Write("<script>alert('Error')</script>");
        }

    }
}