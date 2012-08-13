using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studentdetails : System.Web.UI.Page
{
    Student_bal obj_studentbal = new Student_bal();
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
        ImageButton5.Attributes.Add("onclick", "window.open('http://msdn.microsoft.com', '', '');" ); 
    }
   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
     {
        obj_studentbal.Class_ID1 = drpclass.SelectedItem.Text;
        obj_studentbal.Student_id = txtStudent.Text;
        dt = obj_studentbal.Student_Search();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
   {
       /*Admitted medium*/
       obj_studentbal.Admited_medium = txt_admitted_medium.Text;
       obj_studentbal.Batch = txt_batchstart.Text;
       obj_studentbal.Date_of_admission = txt_dateofadmiossion.Text;
       //obj_studentbal.Station = txt_station1.Text;
       obj_studentbal.Std = drp_std.SelectedItem.Text;

       /*Student Details*/
       obj_studentbal.Name = txt_name.Text;
       obj_studentbal.Student_id = txt_studentid.Text;
       obj_studentbal.Younger_Brothers = int.Parse(txt_yun_bro.Text);
       obj_studentbal.Younger_sisters = int.Parse(txt_yun_sis.Text);
       obj_studentbal.DOB = txt_dob.Text;

       obj_studentbal.Elder_Brothers = int.Parse(txt_el_bro.Text);
       obj_studentbal.Elder_Sisters = int.Parse(txt_el_sis.Text);
       obj_studentbal.Gender = radio_gender.SelectedItem.Value;


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
      // obj_studentbal.Town = txt_town.Text;
       obj_studentbal.Village = txt_village.Text;
       obj_studentbal.District = txt_district.Text;

       /*last school*/
       obj_studentbal.Reasonfor_leaving = Txt_reason.Text;
       obj_studentbal.Dateof_leaving = txt_lcdate.Text;
       obj_studentbal.Lc_no = txt_lcno.Text;
       obj_studentbal.Standard_withyear = drp_last_std.SelectedItem.Text + '_' + txt_standard_with_year0.Text;
       obj_studentbal.Optional_subjects = txt_optionalsubject.Text;
       obj_studentbal.Scholarship_withyear = txt_schallership.Text;
       obj_studentbal.School_Name = txt_schoolname.Text;
       obj_studentbal.Allergy = txt_dieses.Text;
       obj_studentbal.Medium_Taken = txt_medium.Text;
       obj_studentbal.Language_Studied = txt_language.Text;


       //int i = obj_studentbal.student_update();
       //if (i == 1)
       //{
           obj_studentbal.Student_BirthUpdate();
           obj_studentbal.Student_parants_details();
           obj_studentbal.Student_caste_update();
           obj_studentbal.Student_Contact_update();
           obj_studentbal.Student_LastSchool_update();
           obj_studentbal.Student_Admittedmedium_update();
           obj_studentbal.student_update();
           lbl_result.Text = "updated Successfully";
          // Response.Write("<script>alert('Updated Successfully')</script>");
       //}
       //else
       //{
       //    Response.Write("<script>alert('Error... UnSuccessfull updation')</script>");
       //}
   }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Student_Serach.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        phAdmissions.Visible = false;
        obj_studentbal.Student_id = GridView1.SelectedRow.Cells[0].Text;
        dt = obj_studentbal.FIll_All();
        if (dt.Rows.Count > 0)
        {
            txt_studentid.Text = dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            Image2.ImageUrl = "Handler_photo1.ashx?ID=" + dt.Rows[0][0].ToString();
            //radio_gender.SelectedItem = dt.Rows[0][2].ToString();
            if (dt.Rows[0][2].ToString().Equals(""))
            {
                radio_gender.SelectedValue = "male";
                
            }
            else
            {
                radio_gender.SelectedValue = dt.Rows[0][2].ToString().ToLower();
            }
            

            string[] dob = (dt.Rows[0][3].ToString()).Split(' ');
            txt_dob.Text=dob[0];

         
            txt_el_bro.Text = dt.Rows[0][4].ToString();
            txt_el_sis.Text = dt.Rows[0][5].ToString();
            txt_yun_bro.Text = dt.Rows[0][6].ToString();
            txt_yun_sis.Text = dt.Rows[0][7].ToString();
            txt_birthplace.Text = dt.Rows[0][8].ToString();
            txt_village.Text = dt.Rows[0][9].ToString();
            txt_taulk.Text = dt.Rows[0][10].ToString();
            //txt_town.Text = dt.Rows[0][11].ToString();
            txt_district.Text = dt.Rows[0][12].ToString();
            txt_fathername.Text = dt.Rows[0][13].ToString();
            txt_father_qualification.Text = dt.Rows[0][14].ToString();
            txt_mothername.Text = dt.Rows[0][15].ToString();
            txt_mother_quali.Text = dt.Rows[0][16].ToString();
            txt_father_occupation.Text = dt.Rows[0][17].ToString();
            txt_mother_occupation.Text = dt.Rows[0][18].ToString();
            txt_noofdepend.Text = dt.Rows[0][19].ToString();
            txt_income.Text = dt.Rows[0][20].ToString();
            txt_father_no.Text = dt.Rows[0][21].ToString();
            txt_mother_no.Text = dt.Rows[0][22].ToString();
            txt_natioality.Text = dt.Rows[0][23].ToString();
            txt_religion.Text = dt.Rows[0][24].ToString();
            txt_caste.Text = dt.Rows[0][25].ToString();
            txt_mother_taungue.Text = dt.Rows[0][26].ToString();
            rado_caste.SelectedValue = dt.Rows[0][27].ToString();
            txt_permanent_addr.Text = dt.Rows[0][28].ToString();
            txt_pincode.Text = dt.Rows[0][29].ToString();
            txt_city.Text = dt.Rows[0][30].ToString();
            state.Text = dt.Rows[0][31].ToString();
            txt_country.Text = dt.Rows[0][32].ToString();
            txt_present_adrr.Text = dt.Rows[0][33].ToString();
            txt_guadianname.Text = dt.Rows[0][34].ToString();
            txt_guadian_addrs.Text = dt.Rows[0][35].ToString();
            txt_phone.Text = dt.Rows[0][36].ToString();
            txt_mob.Text = dt.Rows[0][37].ToString();
            txt_schoolname.Text = dt.Rows[0][38].ToString();
            txt_schallership.Text = dt.Rows[0][39].ToString();

            string[] sy = (dt.Rows[0][40].ToString()).Split('_');//standars with year
            drp_last_std.SelectedItem.Text = sy[0];
            txt_standard_with_year0.Text = sy[1];

            txt_lcdate.Text = dt.Rows[0][41].ToString();
            Txt_reason.Text = dt.Rows[0][42].ToString();
            txt_lcno.Text = dt.Rows[0][43].ToString();
            txt_language.Text = dt.Rows[0][44].ToString();
            txt_optionalsubject.Text = dt.Rows[0][45].ToString();
            txt_medium.Text = dt.Rows[0][46].ToString();
            txt_dieses.Text = dt.Rows[0][47].ToString();
            try
            {
                txt_admitted_medium.Text = dt.Rows[0][48].ToString();
                drp_std.SelectedItem.Text = dt.Rows[0][49].ToString();

                string[] da = (dt.Rows[0][50].ToString()).Split(' ');//admission year no time only date
                txt_dateofadmiossion.Text = da[0];

                //txt_station1.Text = dt.Rows[0][51].ToString();

                txt_batchstart.Text = dt.Rows[0][51].ToString();
                int next = Convert.ToInt32(dt.Rows[0][51].ToString()) + 1;
                txt_batchend.Text = next.ToString();
                phAdmissions.Visible = true;
            }
            catch
            {
            }

            
        }
    }
}


 
