using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;



public partial class studentdetails : System.Web.UI.Page
{
    Student_bal obj_studentbal = new Student_bal();
     static  byte[] imageSize;
    protected void Page_Load(object sender, EventArgs e)
     {
         if (Session["uname"] == null)
         {
             Response.Redirect("index.aspx");
         }
        Panel1.Visible = true;
        Panel11.Visible = false;
        
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        if (drp_stay_with.SelectedIndex == 1)
        {
            Panel9.Visible = true;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        /*Student Details*/
        obj_studentbal.Lastname = txt_lastname.Text;
        obj_studentbal.Name = txt_name.Text;
        obj_studentbal.Student_id = lbl_student_id .Text;
        if (txt_yun_bro.Text !="")
        obj_studentbal.Younger_Brothers = int.Parse(txt_yun_bro.Text);
        else
            obj_studentbal.Younger_Brothers = 0;
        if (txt_yun_sis.Text != "")
            obj_studentbal.Younger_sisters = int.Parse(txt_yun_sis.Text);
        else
            obj_studentbal.Younger_sisters = 0;
        obj_studentbal.DOB = txt_dob.Text;
        if (txt_el_bro.Text != "")
        obj_studentbal.Elder_Brothers = int.Parse(txt_el_bro.Text);
        else
            obj_studentbal.Elder_Brothers = 0;
        if (txt_el_sis.Text != "")
        obj_studentbal.Elder_Sisters = int.Parse(txt_el_sis.Text);
        else
            obj_studentbal.Elder_Sisters = 0;
        obj_studentbal.Gender = radio_gender.SelectedItem.Text;
        obj_studentbal.Std = drp_std.SelectedItem.Text;

        /*Contact Details*/

        obj_studentbal.Permanent_Address = txt_present_addr.Text;
        obj_studentbal.Permanent_city = txt_city.Text;
        obj_studentbal.Permanent_country = txt_country.Text;
        obj_studentbal.Permanent_pincode = txt_pincode.Text;
        obj_studentbal.Permenant_state = txt_state .Text;
        obj_studentbal.Phone_No = txt_phone.Text;
        obj_studentbal.Present_Address = txt_permanent_addr.Text;
        obj_studentbal.Guardian_Name = txt_guadianname.Text;
        obj_studentbal.Gurdian_address = txt_guadian_addrs.Text;
        obj_studentbal.Mobile_No = txt_mob.Text;
        obj_studentbal.Staywith = drp_stay_with.SelectedItem.Text;
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
       
        obj_studentbal.Village = txt_village0.Text;
        obj_studentbal.District =  txt_district1.Text;

        /*last school*/
        obj_studentbal.Reasonfor_leaving = Txt_reason.Text;


        obj_studentbal.Dateof_leaving = txt_lcdate.Text;
        obj_studentbal.Lc_no = txt_lcno.Text;
        obj_studentbal.Standard_withyear = drp_std.SelectedItem.Text + '_' + txt_last_std_year.Text;
        obj_studentbal.Optional_subjects = txt_optionalsubject.Text;
        obj_studentbal.Scholarship_withyear = txt_schallership.Text;
        obj_studentbal.School_Name = txt_schoolname.Text;
        obj_studentbal.Allergy = txt_dieses.Text;
        obj_studentbal.Medium_Taken = txt_medium.Text;
        obj_studentbal.Language_Studied = txt_language_studied.Text;
        obj_studentbal.Oper = "insert";
        int i = obj_studentbal.Student_add();
        if (i > 0)
        {

            obj_studentbal.Student_BirthUpdate();
            obj_studentbal.Student_parants_details();
            obj_studentbal.Student_caste_update();
            obj_studentbal.Student_Contact_update();
            obj_studentbal.Student_LastSchool_update();
            obj_studentbal.Student_Admittedmedium_update();
            obj_studentbal.Img = imageSize;
            int r = obj_studentbal.Student_image();
            
            lbl_result.Text = "Student Details Added Suessfully";

        }
        else
        {
            lbl_result.Text = "Opps Error  check Correctly";
        }

    }
   


    protected void drp_stay_with_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_stay_with.SelectedIndex == 1)
        {
            Panel9.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_name.Text == "")
        {
            lbl_p_validation.Text = "Enter First Name";
            lbl_p_validation.Visible = true;
        }
        else if (txt_dob.Text=="")
        {
            lbl_p_validation.Text = "Enter Date Of Birth";
            lbl_p_validation.Visible = true;
        }
        else if (drp_std.SelectedIndex == 0)
        {
            lbl_p_validation.Text = "Select Standard";
            lbl_p_validation.Visible = true;
        }
         else
        {
            try
            {
                //string s = radio_gender.SelectedItem.Text;
                lbl_student_id.Text = txt_studentid.Text;
                lbl_firstname.Text = txt_name.Text;
                lbl_lastname.Text = txt_lastname.Text;
                lbl_dob.Text = txt_dob.Text;
                lbl_elbro.Text = txt_el_bro.Text;
                lbl_elsister.Text = txt_el_sis.Text;
                lbl_yngbro.Text = txt_yun_bro.Text;
                lbl_yngsister.Text = txt_yun_sis.Text;
                lbl_gender.Text = radio_gender.SelectedItem.Text;
                lbl_std.Text = drp_std.SelectedItem.Text;
               


                Panel1.Visible = false;
                Panel11.Visible = true;
                Panel2.Visible = true;
                Panel3.Visible = true;
                Panel7.Visible = false;
                if (FileUpload1.HasFile)
                {
                    imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                    HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                    uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);
                }
               
            }
            catch
            {
                //lbl_p_validation.Text = "Select Gender";
            }
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel10.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lbl_birthplace.Text = txt_birthplace.Text;
        lbl_village.Text = txt_village0.Text;
        lbl_taulk.Text = txt_taulk.Text;
        lbl_dist.Text = txt_district1.Text;

        lbl_fathername.Text = txt_father_no.Text;
        lbl_father_qualification .Text=txt_father_qualification.Text;  
            lbl_father_ocupation.Text=txt_father_occupation.Text; 
        lbl_father_contact.Text =txt_father_no.Text ;

        lbl_mother_contactno .Text=txt_mother_no.Text;
        lbl_mother_qalification.Text=txt_mother_quali.Text;
        
        lbl_mothername.Text=txt_mothername.Text;
        lbl_mather_occupation.Text =txt_mother_occupation.Text; 
        lbl_income .Text=txt_income .Text;
        lbl_dependents .Text=txt_noofdepend.Text;

        Panel1.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = true;
        Panel4.Visible = true;
        Panel5.Visible = true;
        Panel7.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = true;
        Panel4.Visible = true;
        Panel5.Visible = true;
        Panel7.Visible = false;
    }
   
    protected void pre_2(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel11.Visible = true;
        Panel2.Visible = true;
        Panel7.Visible = false;
        Panel3.Visible = true;
    }
    protected void next_last(object sender, EventArgs e)
    {
        if (txt_mother_taungue.Text == "")
        {
            lbl_caste_validation .Text = "Enter First mother taungue";
            lbl_caste_validation.Visible = true;
        }
        else if (txt_caste.Text == "")
        {
            lbl_caste_validation.Text = "Enter Caste ";
            lbl_caste_validation.Visible = true;
        }
        else if (txt_mob.Text == "")
        {
            lbl_caste_validation.Text = "Enter Contact Mobile Number ";
            lbl_caste_validation.Visible = true;
        }
         else
         {
             try
             {
                // string s = rado_caste .SelectedItem.Text;
                 lbl_mother_tongue.Text = txt_mother_taungue.Text;
                 lbl_nationality.Text = txt_natioality.Text;
                 lbl_religon.Text = txt_religion.Text;
                 lbl_caste_catogiry.Text = txt_caste.Text;
                 lbl_caste.Text = rado_caste.SelectedItem.Text;
                 lbl_otherlanguage.Text = txt_language_spoken.Text;


                 lbl_stayingwith.Text = drp_stay_with.SelectedItem.Text;
                 lbl_contact_no.Text = txt_phone.Text;
                 lbl_contact_mobile.Text = txt_mob.Text;
                 lbl_present_address.Text = txt_present_addr.Text + txt_pers_city.Text + txt_pers_state.Text + txt_pers_country.Text + txt_pers_pincode.Text;
                 lbl_permenent_address.Text = txt_permanent_addr.Text;
                 lbl_city.Text = txt_city.Text;
                 lbl_state.Text = txt_state.Text;
                 lbl_pincode.Text = txt_pincode.Text;
                 lbl_country.Text = txt_country.Text;
                 lbl_guardianname.Text = txt_guadianname.Text;
                 lbl_guardianaddress.Text = txt_guadian_addrs.Text;
                 Panel1.Visible = false;
                 Panel10.Visible = true;

                 Panel6.Visible = true;
                 Panel12.Visible = false;
                 Panel11.Visible = false;
                 Panel7.Visible = false;
             }
             catch
             {
                 //lbl_caste_validation.Text = "Select Caste";
             }
            
         }
    }
    protected void Button6_Click1(object sender, EventArgs e)
    {
      
        Panel1.Visible = false;
        Panel10.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = true;
        Panel6.Visible = false;
        Panel12.Visible = true;
        Panel11.Visible = false;
        Panel7.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        
        DataTable dt = new DataTable();
        dt=obj_studentbal.Generate_student_id();
        if (dt.Rows.Count > 0)
        {
            lbl_student_id.Text = dt.Rows[0][0].ToString();
        }
        lbl_last_school.Text=txt_schoolname.Text ;
        lbl_last_std.Text=Drp_last_std.SelectedItem.Text;
        lbl_year.Text=txt_last_std_year .Text;
        lbl_lcno .Text=txt_lcno .Text;
        lbl_lcdate .Text=txt_lcdate .Text;
        lbl_reason .Text=Txt_reason .Text;
        lbl_allergy .Text=txt_dieses.Text;
        lbl_optional .Text=txt_optionalsubject.Text;
        lbl_last_medium .Text=txt_medium.Text;
        lbl_lanu_studied.Text=txt_language_studied .Text;
        lbl_scolership.Text = txt_schallership.Text;
        
        Panel1.Visible = false;
        Panel10.Visible = false;
        Panel7.Visible = true;
        Panel11.Visible = false;
        Panel12.Visible = false;
    }
    protected void txt_dob_TextChanged(object sender, EventArgs e)
    {
        try
        {
            DateTime now = DateTime.Now;
            DateTime bday = Convert.ToDateTime(txt_dob.Text);
            int age = now.Year - bday.Year;
            if (now < bday.AddYears(age)) age--;
            txt_age.Text = age.ToString();
        }
        catch
        {
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            txt_permanent_addr.Text = txt_present_addr.Text;
            txt_city.Text = txt_pers_city.Text;
            txt_state.Text=txt_pers_state.Text;
            txt_pincode.Text=txt_pers_pincode.Text;
            txt_country.Text=txt_pers_country.Text;
  
        }
    }
    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {

        {
            if (txt_name.Text == "")
            {
                lbl_p_validation.Text = "Enter First Name";
                lbl_p_validation.Visible = true;
            }
            else if (txt_dob.Text == "")
            {
                lbl_p_validation.Text = "Enter Date Of Birth";
                lbl_p_validation.Visible = true;
            }
            else if (drp_std.SelectedIndex == 0)
            {
                lbl_p_validation.Text = "Select Standard";
                lbl_p_validation.Visible = true;
            }
            else
            {
                try
                {
                    //string s = radio_gender.SelectedItem.Text;
                    lbl_student_id.Text = txt_studentid.Text;
                    lbl_firstname.Text = txt_name.Text;
                    lbl_lastname.Text = txt_lastname.Text;
                    lbl_dob.Text = txt_dob.Text;
                    lbl_elbro.Text = txt_el_bro.Text;
                    lbl_elsister.Text = txt_el_sis.Text;
                    lbl_yngbro.Text = txt_yun_bro.Text;
                    lbl_yngsister.Text = txt_yun_sis.Text;
                    lbl_gender.Text = radio_gender.SelectedItem.Text;
                    lbl_std.Text = drp_std.SelectedItem.Text;



                    Panel1.Visible = false;
                    Panel11.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel7.Visible = false;
                    if (FileUpload1.HasFile)
                    {
                        imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                        HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                        uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);
                    }

                }
                catch
                {
                    //lbl_p_validation.Text = "Select Gender";
                }

            }
        }
    }
    protected void btn_reset_Click(object sender, ImageClickEventArgs e)
    {

    }
}
 
