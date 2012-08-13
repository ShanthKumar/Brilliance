using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for tc_bal
/// </summary>
public class tc_bal
{
    tc_dal obj_tc_dal = new tc_dal();
	public tc_bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string tc_id, school_name, admission_no, cumulative_rec_no, stud_name, sex, nationality, religion, caste, father_name, mother_name, schedule_cast, promotion, dob, place, taluk, district, current_std, studied_lang, elective_studied, medium, admission_date, fee_paid, fee_discount, scholorship, medically_examined, last_date, tc_received_date, tc_issue_date, no_of_school_days, attanded_days, charactor;

    public string Charactor
    {
        get { return charactor; }
        set { charactor = value; }
    }

    public string Attanded_days
    {
        get { return attanded_days; }
        set { attanded_days = value; }
    }

    public string No_of_school_days
    {
        get { return no_of_school_days; }
        set { no_of_school_days = value; }
    }

    public string Tc_issue_date
    {
        get { return tc_issue_date; }
        set { tc_issue_date = value; }
    }

    public string Tc_received_date1
    {
        get { return tc_received_date; }
        set { tc_received_date = value; }
    }

    public string Last_date
    {
        get { return last_date; }
        set { last_date = value; }
    }

    public string Medically_examined
    {
        get { return medically_examined; }
        set { medically_examined = value; }
    }

    public string Scholorship
    {
        get { return scholorship; }
        set { scholorship = value; }
    }

    public string Fee_discount
    {
        get { return fee_discount; }
        set { fee_discount = value; }
    }

    public string Fee_paid
    {
        get { return fee_paid; }
        set { fee_paid = value; }
    }

    public string Admission_date
    {
        get { return admission_date; }
        set { admission_date = value; }
    }

    public string Medium
    {
        get { return medium; }
        set { medium = value; }
    }

    public string Elective_studied
    {
        get { return elective_studied; }
        set { elective_studied = value; }
    }

    public string Studied_lang
    {
        get { return studied_lang; }
        set { studied_lang = value; }
    }

    public string Current_std
    {
        get { return current_std; }
        set { current_std = value; }
    }

    public string District
    {
        get { return district; }
        set { district = value; }
    }

    public string Taluk
    {
        get { return taluk; }
        set { taluk = value; }
    }

    public string Place
    {
        get { return place; }
        set { place = value; }
    }

    public string Dob
    {
        get { return dob; }
        set { dob = value; }
    }

    public string Tc_received_date
    {
        get { return tc_received_date; }
        set { tc_received_date = value; }
    }

    public string Promotion
    {
        get { return promotion; }
        set { promotion = value; }
    }

    public string Schedule_cast
    {
        get { return schedule_cast; }
        set { schedule_cast = value; }
    }

    public string Mother_name
    {
        get { return mother_name; }
        set { mother_name = value; }
    }

   
    public string Father_name
    {
        get { return father_name; }
        set { father_name = value; }
    }

    public string Caste
    {
        get { return caste; }
        set { caste = value; }
    }

    public string Religion
    {
        get { return religion; }
        set { religion = value; }
    }

    public string Nationality
    {
        get { return nationality; }
        set { nationality = value; }
    }

    public string Sex
    {
        get { return sex; }
        set { sex = value; }
    }

    public string Stud_name
    {
        get { return stud_name; }
        set { stud_name = value; }
    }

    public string Cumulative_rec_no
    {
        get { return cumulative_rec_no; }
        set { cumulative_rec_no = value; }
    }

    public string Admission_no
    {
        get { return admission_no; }
        set { admission_no = value; }
    }

    public string School_name
    {
        get { return school_name; }
        set { school_name = value; }
    }

    public string Tc_id
    {
        get { return tc_id; }
        set { tc_id = value; }
    }

    public int save_tc_details()
    {
        return (obj_tc_dal.save_tc_details(this));
    }

    public DataTable auto_tc_id()
    {
        return (obj_tc_dal.auto_TC_ID());
    }

    public int chk_tc_entry()
    {
        return (obj_tc_dal.chk_tc_entry(this));
    }

    public DataTable report_bind()
    {
        return (obj_tc_dal.bind_report(this));
    }
}