using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Student_bal
/// </summary>
public class Student_bal
{
    Student_dal obj_student = new Student_dal();
    public Student_bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int elder_Brothers, elder_Sisters, younger_Brothers, younger_sisters, noof_Depedents;

    
    string caste_category, mother_tongue, sub_caste, birth_Place, village, taluk, town, district, father_Name, father_qualification, mother_Name, mother_Qualification, father_Occupation, mother_Occupation,  annual_Income;

   
    string student_id, name, gender, dOB,  permanent_Address,
        permanent_pincode, permanent_city, permenant_state, permanent_country, present_Address, guardian_Name, gurdian_address, phone_No,
        mobile_No, nationality, religion;

    string school_Name, scholarship_withyear, standard_withyear, dateof_leaving, reasonfor_leaving, lC,
        date_LC, language_Studied, optional_subjects, medium_Taken;
    string lc_no, admited_medium, std, date_of_admission, batch, anual_income, station, father_contact_no, mother_contact_no, allergy;


    string Class_ID, Readmission_Fee, Admission_Fee, Material_Fee, Computer_Fee, SmartClass_Fee, SpecialDay_Fee, Exam_Fee, Application_Fee;
    string staywith, lastname;
    byte[] img;

    public byte[] Img
    {
        get { return img; }
        set { img = value; }
    }
    public string Lastname
    {
        get { return lastname; }
        set { lastname = value; }
    }

    public string Staywith
    {
        get { return staywith; }
        set { staywith = value; }
    }
    public string Application_Fee1
    {
        get { return Application_Fee; }
        set { Application_Fee = value; }
    }

   
    public string Exam_Fee1
    {
        get { return Exam_Fee; }
        set { Exam_Fee = value; }
    }

    public string SpecialDay_Fee1
    {
        get { return SpecialDay_Fee; }
        set { SpecialDay_Fee = value; }
    }

    public string SmartClass_Fee1
    {
        get { return SmartClass_Fee; }
        set { SmartClass_Fee = value; }
    }

    public string Computer_Fee1
    {
        get { return Computer_Fee; }
        set { Computer_Fee = value; }
    }

    public string Material_Fee1
    {
        get { return Material_Fee; }
        set { Material_Fee = value; }
    }

    public string Admission_Fee1
    {
        get { return Admission_Fee; }
        set { Admission_Fee = value; }
    }

    public string Readmission_Fee1
    {
        get { return Readmission_Fee; }
        set { Readmission_Fee = value; }
    }

    public string Class_ID1
    {
        get { return Class_ID; }
        set { Class_ID = value; }
    }
    


    public object Image_id1 { get; set; }
    public object Photo { get; set; }

    public string Lc_no
    {
        get { return lc_no; }
        set { lc_no = value; }
    }

    

    public string Allergy
    {
        get { return allergy; }
        set { allergy = value; }
    }

    public string Father_contact_no
    {
        get { return father_contact_no; }
        set { father_contact_no = value; }
    }

    public string Mother_contact_no
    {
        get { return mother_contact_no; }
        set { mother_contact_no = value; }
    }
    string oper;

    public string Oper
    {
        get { return oper; }
        set { oper = value; }
    }
    public string Admited_medium
    {
        get { return admited_medium; }
        set { admited_medium = value; }
    }
    
    public string Std
    {
        get { return std; }
        set { std = value; }
    }

    public string Date_of_admission
    {
        get { return date_of_admission; }
        set { date_of_admission = value; }
    }

    public string Batch
    {
        get { return batch; }
        set { batch = value; }
    }

    public string Anual_income
    {
        get { return anual_income; }
        set { anual_income = value; }
    }

    public string Station
    {
        get { return station; }
        set { station = value; }
    }

    public string Medium_Taken
    {
        get { return medium_Taken; }
        set { medium_Taken = value; }
    }

    public string Optional_subjects
    {
        get { return optional_subjects; }
        set { optional_subjects = value; }
    }

    public string Language_Studied
    {
        get { return language_Studied; }
        set { language_Studied = value; }
    }

    public string Date_LC
    {
        get { return date_LC; }
        set { date_LC = value; }
    }

    public string LC
    {
        get { return lC; }
        set { lC = value; }
    }

    public string Reasonfor_leaving
    {
        get { return reasonfor_leaving; }
        set { reasonfor_leaving = value; }
    }

    public string Dateof_leaving
    {
        get { return dateof_leaving; }
        set { dateof_leaving = value; }
    }

    public string Standard_withyear
    {
        get { return standard_withyear; }
        set { standard_withyear = value; }
    }

    public string Scholarship_withyear
    {
        get { return scholarship_withyear; }
        set { scholarship_withyear = value; }
    }

    public string School_Name
    {
        get { return school_Name; }
        set { school_Name = value; }
    }

  
    public string Mother_tongue
    {
        get { return mother_tongue; }
        set { mother_tongue = value; }
    }
    public string Permanent_city
    {
        get { return permanent_city; }
        set { permanent_city = value; }
    }
    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public string Student_id
    {
        get { return student_id; }
        set { student_id = value; }
    }

    public string Gender
    {
        get { return gender; }
        set { gender = value; }
    }

    public string DOB
    {
        get { return dOB; }
        set { dOB = value; }
    }

    public int Elder_Brothers
    {
        get { return elder_Brothers; }
        set { elder_Brothers = value; }
    }

    public int Elder_Sisters
    {
        get { return elder_Sisters; }
        set { elder_Sisters = value; }
    }

    public int Younger_Brothers
    {
        get { return younger_Brothers; }
        set { younger_Brothers = value; }
    }

    public int Younger_sisters
    {
        get { return younger_sisters; }
        set { younger_sisters = value; }
    }

    public string Permanent_Address
    {
        get { return permanent_Address; }
        set { permanent_Address = value; }
    }

    public string Permanent_pincode
    {
        get { return permanent_pincode; }
        set { permanent_pincode = value; }
    }

    public string Permenant_state
    {
        get { return permenant_state; }
        set { permenant_state = value; }
    }

    public string Present_Address
    {
        get { return present_Address; }
        set { present_Address = value; }
    }

    public string Permanent_country
    {
        get { return permanent_country; }
        set { permanent_country = value; }
    }

    public string Guardian_Name
    {
        get { return guardian_Name; }
        set { guardian_Name = value; }
    }

    public string Gurdian_address
    {
        get { return gurdian_address; }
        set { gurdian_address = value; }
    }

    public string Phone_No
    {
        get { return phone_No; }
        set { phone_No = value; }
    }

    public string Mobile_No
    {
        get { return mobile_No; }
        set { mobile_No = value; }
    }

    public string Nationality
    {
        get { return nationality; }
        set { nationality = value; }
    }

    public string Religion
    {
        get { return religion; }
        set { religion = value; }
    }
   

    public string Caste_category
    {
        get { return caste_category; }
        set { caste_category = value; }
    }

    public string Sub_caste
    {
        get { return sub_caste; }
        set { sub_caste = value; }
    }

    public string Birth_Place
    {
        get { return birth_Place; }
        set { birth_Place = value; }
    }

    public string Village
    {
        get { return village; }
        set { village = value; }
    }

    public string Taluk
    {
        get { return taluk; }
        set { taluk = value; }
    }

    public string Town
    {
        get { return town; }
        set { town = value; }
    }

    public string District
    {
        get { return district; }
        set { district = value; }
    }

    public string Father_Name
    {
        get { return father_Name; }
        set { father_Name = value; }
    }

    public string Father_qualification
    {
        get { return father_qualification; }
        set { father_qualification = value; }
    }

    public string Mother_Name
    {
        get { return mother_Name; }
        set { mother_Name = value; }
    }

    public string Mother_Qualification
    {
        get { return mother_Qualification; }
        set { mother_Qualification = value; }
    }

    public string Father_Occupation
    {
        get { return father_Occupation; }
        set { father_Occupation = value; }
    }

    public string Mother_Occupation
    {
        get { return mother_Occupation; }
        set { mother_Occupation = value; }
    }

    public int Noof_Depedents
    {
        get { return noof_Depedents; }
        set { noof_Depedents = value; }
    }

    public string Annual_Income
    {
        get { return annual_Income; }
        set { annual_Income = value; }
    }

   /*Methoeds For dataaccess operation*/

    /*Student Add Method*/
    public int  Student_add()
    {
        return (obj_student.Student_add(this));
    }
    public int student_update()
    {
        return (obj_student.student_update(this));
    }
    public int Student_BirthUpdate()
    {
        return (obj_student.Student_birthdetails_update (this));
    }
    public int Student_parants_details()
    {
        return (obj_student.Student_parants_update (this));
    }
    public int Student_caste_update()
    {
        return (obj_student.Student_CastCategory_update (this));
    }
    public int Student_Contact_update()
    {
        return (obj_student.Student_Student_Contact_update (this));
    }
    public int Student_LastSchool_update()
    {
        return (obj_student.Student_Student_LastSchool_update (this));        
    }
    public int Student_Admittedmedium_update()
    {
        return (obj_student.Student_Admittedmedium_update(this));
    }
  
    public int Student_Admission_Fees()
    {
        return (obj_student.Student_Admission_Fees(this));
    }
    public  DataTable addmission_fees_fill()
    {
        return (obj_student.Addmission_fees_fill(this));
    }
    public DataTable Student_Search()
    {
        return (obj_student.student_search(this));
    }
    public DataTable FIll_All()
    {
        return (obj_student.details_FillAll(this));
    }

    public DataTable Generate_student_id()
    {
        return (obj_student.Student_auto_id ());
    }

    public int Student_image()
    {
        return (obj_student .image_update(this));
    }

}