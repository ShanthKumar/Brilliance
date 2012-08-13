using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


/// <summary>
/// Summary description for staff_bal
/// </summary>
public class staff_bal
{
    Staf_dal obj_staffdal = new Staf_dal();
    public staff_bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string staff_id, first_name, last_name, middle_name, gender, phone, mob1, mob2, address, city, subject, salary, dob, date_of_join, qualification, status, type;
    int pin_code;
    byte[] img;

    public byte[] Img
    {
        get { return img; }
        set { img = value; }
    }
    public string Type
    {
        get { return type; }
        set { type = value; }
    }

    public string Status
    {
        get { return status; }
        set { status = value; }
    }



    public string Qualification
    {
        get { return qualification; }
        set { qualification = value; }
    }

    public string Date_of_join
    {
        get { return date_of_join; }
        set { date_of_join = value; }
    }

    public string Dob
    {
        get { return dob; }
        set { dob = value; }
    }

    public string Salary
    {
        get { return salary; }
        set { salary = value; }
    }

    public string Subject
    {
        get { return subject; }
        set { subject = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    public string Mob2
    {
        get { return mob2; }
        set { mob2 = value; }
    }

    public string Mob1
    {
        get { return mob1; }
        set { mob1 = value; }
    }

    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }

    public string Gender
    {
        get { return gender; }
        set { gender = value; }
    }

    public string Middle_name
    {
        get { return middle_name; }
        set { middle_name = value; }
    }

    public string Last_name
    {
        get { return last_name; }
        set { last_name = value; }
    }

    public string First_name
    {
        get { return first_name; }
        set { first_name = value; }
    }

    public string Staff_id
    {
        get { return staff_id; }
        set { staff_id = value; }
    }

    public int Pin_code
    {
        get { return pin_code; }
        set { pin_code = value; }
    }

    /*Function Starts*/
    public DataTable Qualification_bind()
    {
        return (obj_staffdal.qualification_bind());
    }
    public int staff_add()
    {
        return (obj_staffdal.Staff_add(this));
    }
    public int staff_Update()
    {
        return (obj_staffdal.Staff_Update (this));
    }
    public DataTable Search_staff()
    {
        return (obj_staffdal.Staff_search(this ));
    }

    public int staff_image()
    {
        return (obj_staffdal.image_update(this));
    }
    public DataTable Staff_all()
    {
        return (obj_staffdal.Staff_All(this));
    }
}