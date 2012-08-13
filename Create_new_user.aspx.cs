using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Create_new_user : System.Web.UI.Page
{
    login_bal obj = new login_bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        obj.User_name = txt_uid.Text;
        obj.Password = txt_pwd.Text;
        obj.Email_id = txt_email.Text;
        obj.Oper = "insert";
        string s = obj.create_new_user();
        try
        {
            int i = int.Parse(s);
            if (i > 0)
            {
                lbl_result.Text = "User Created Suessfully";
                lbl_result.Visible = true;

            }
        }
        catch
        {
            lbl_result.Text = "Opps Error !! " + s;
            lbl_result.Visible = true;
        }
        
    }
}