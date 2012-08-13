using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class staffsearch : System.Web.UI.Page
{
    int x, y;
    staff_bal obj_staffBal = new staff_bal();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
        qualification_bind();
    }


    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
       // Response.Redirect("staffupdate.aspx");
        obj_staffBal.Staff_id = txt_id.Text;
        obj_staffBal.First_name = txt_name.Text;
        obj_staffBal.Address = txt_addrss .Text;
        obj_staffBal.Date_of_join = txt_doj.Text;
        obj_staffBal.Dob = txt_dob.Text;
        obj_staffBal.Gender = drp_gender.SelectedItem.Text;
        obj_staffBal.Mob1 = txt_mob.Text;
        obj_staffBal.Mob2 = txt_phone.Text;
        obj_staffBal.Pin_code = int.Parse(txt_pincode.Text);

        obj_staffBal.Qualification = drp_qualification .SelectedItem.Text.ToString();

        obj_staffBal.Salary = txt_salary.Text;
        obj_staffBal.Status = rado_status.SelectedItem.Text;
        obj_staffBal.Subject = txt_subject.Text;
        obj_staffBal.Type = drp_type.SelectedValue.ToString();
        obj_staffBal.Last_name = txt_lname.Text;
        int i = obj_staffBal.staff_Update();
        if (i == 1)
        {
            lbl_result.Text = "Updated Sucessfully";
            

        }
        else
        {
            lbl_result.Text = "Some Error not inserted values";
          

        }
    }




    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        obj_staffBal.Staff_id = txt_search.Text;
        dt = new DataTable();
        dt = obj_staffBal.Search_staff();
        if (dt.Rows.Count > 0)
        {
            txt_id.Text=dt.Rows[0][0].ToString();
            txt_name.Text = dt.Rows[0][1].ToString();
            txt_lname.Text = dt.Rows[0][3].ToString();
            drp_gender.SelectedItem.Text = dt.Rows[0][4].ToString();
            String []s1 = (dt.Rows[0].ItemArray[5].ToString()).Split(' ');
            txt_dob.Text = s1[0];
            String[] s2 = (dt.Rows[0].ItemArray[6].ToString()).Split(' ');
            txt_doj.Text = s2[0];
             txt_mob.Text=dt.Rows[0][7].ToString();
           txt_phone.Text =dt.Rows[0][8].ToString();
            drp_qualification.SelectedItem.Text=dt.Rows[0][9].ToString();

            txt_addrss .Text=dt.Rows[0][10].ToString();
            txt_pincode.Text=dt.Rows[0][11].ToString();
            string s = dt.Rows[0][12].ToString();
            if (s == "Active")
                rado_status.SelectedIndex = 0;
            else
                rado_status.SelectedIndex = 1;
            drp_type.SelectedItem.Text=dt.Rows[0][13].ToString();
            txt_salary.Text=dt.Rows[0][14].ToString();
            txt_subject.Text = dt.Rows[0][15].ToString();
            Image1.ImageUrl = "Handler_photo.ashx?ID=" + dt.Rows[0][0].ToString();
           
        }
    }
    private void qualification_bind()
    {
        dt = new DataTable();
        dt = obj_staffBal.Qualification_bind();
        drp_qualification .DataSource = dt;
        drp_qualification.DataTextField = "Qualification";
        drp_qualification.DataValueField = "Qualification";
        drp_qualification.DataBind();

    }
}