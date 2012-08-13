using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class staffnew : System.Web.UI.Page
{
    int x;
    DataTable dt;
    staff_bal obj_staffBal = new staff_bal();
    static string qualification;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        //Panel2.Visible = false;
        //Panel3.Visible = false;
        drp_dualification.AutoPostBack = false;
        if (!IsPostBack)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("index.aspx");
            }
            qualification_bind();
        }
        
    }

    protected void FileUpload1_Load(object sender, EventArgs e)
    {

    }
   
    //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (CheckBox1.Checked == true)
    //    {
    //        Panel2.Visible = true;
    //        if (CheckBox2.Checked == true)
    //            Panel3.Visible = true;
    //        else
    //            Panel3.Visible = false;
    //    }
    //    else
    //    {
    //        Panel2.Visible = false;
    //        if (CheckBox2.Checked == true)
    //            Panel3.Visible = true;
    //        else
    //            Panel3.Visible = false;
    //    }
    //}
    //protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
    //{
    //    if (CheckBox2.Checked == true)
    //    {
    //        Panel3.Visible = true;
    //        if (CheckBox1.Checked == true)
    //            Panel2.Visible = true;
    //        else
    //            Panel2.Visible = false;
    //    }
    //    else
    //        if (CheckBox2.Checked != true)
    //    {
    //        Panel3.Visible = false;
            
    //        if (CheckBox1.Checked == true)
    //            Panel2.Visible = true;
    //        else
    //            Panel2.Visible = false;
    //    }
    //}

    private void qualification_bind()
    {
        dt = new DataTable();
        dt = obj_staffBal.Qualification_bind();
        drp_dualification.DataSource = dt;
        drp_dualification.DataTextField="Qualification";
        drp_dualification.DataValueField = "Qualification";
        drp_dualification.DataBind();
        
    }
    protected void btn_save_Click(object sender, ImageClickEventArgs e)
    {
        drp_dualification.AutoPostBack = false;    
        obj_staffBal.Staff_id = txt_id.Text;
            obj_staffBal.First_name = txt_name.Text;
            obj_staffBal.Address = txt_addrs.Text;
            obj_staffBal.Date_of_join = txt_doj.Text;
            obj_staffBal.Dob = txt_dob.Text;
            obj_staffBal.Gender = drp_gender.SelectedItem.Text;
            obj_staffBal.Mob1 = txt_mob.Text;
            obj_staffBal.Mob2 = txt_phone.Text;
            obj_staffBal.Pin_code = int.Parse(txt_pincode.Text);

           obj_staffBal.Qualification = drp_dualification.SelectedItem.Text.ToString();
            //obj_staffBal.Qualification = qualification;
            obj_staffBal.Salary = txt_salary.Text;
            obj_staffBal.Status = rdio_status.SelectedItem.Text;
            obj_staffBal.Subject = txt_subject.Text;
            obj_staffBal.Type = drp_type.SelectedValue.ToString();
            obj_staffBal.Last_name = txt_lname.Text;
            int i = obj_staffBal.staff_add();
            if (i == 1)
            {
                 if (FileUpload1.HasFile)
        {

            byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
            HttpPostedFile uploadedImage = FileUpload1.PostedFile;
            uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);

            obj_staffBal.Staff_id = txt_id.Text;
            obj_staffBal.Img  = imageSize;
            
          //obj_dal.Postedimage = uploadedImage;
         //   obj_dal.Postedimage2 = uploadedImage2;
          int  mes = obj_staffBal.staff_image();
                if(mes>0)
                     lbl_result.Text = "Added Sucessfully";
                     else
                     lbl_result.Text = "Some Error not inserted values";
                Panel2.Visible = true;
                Panel3.Visible = true;

            }
            else
            {
                lbl_result.Text = "Some Error not inserted values";
                Panel2.Visible = true;
                Panel3.Visible = true;

            }
        
    }
    }
    protected void drp_dualification_SelectedIndexChanged(object sender, EventArgs e)
    {
   
        qualification = drp_dualification.SelectedItem.Text;
    }

  
  
}