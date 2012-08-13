using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.IO;
using System.Net.Configuration;
using System.Web.Configuration;
using System.Web.SessionState;
using System.Collections;
using System.Data;

public partial class login : System.Web.UI.Page
{


    login_bal obj = new login_bal();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
          obj.User_name = txt_uid.Text;
        obj.Password = txt_pwd.Text;
        if (txt_uid.Text == "" || txt_pwd.Text == "")
        {
            Label3.Text = "not empty user name and passwoed";
        }
        else
        {

            obj.User_name = txt_uid.Text;
            obj.Password = txt_pwd.Text;
            obj.Oper = "select";
            int i = obj.Login_check();

            if (i > 0)
            {
                Session["uname"] = txt_uid.Text;
                Response.Redirect("Student_Serach.aspx");
            }
            else
            {
                Label3.Text = "<font color='red'>Not Authorized User </font>";

            }
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        obj.Email_id = txt_email.Text;
        obj.Oper = "forget";
        DataTable dt = new DataTable();
        dt = obj.forget_password();
        if (dt.Rows.Count > 0)
        {
            send_mail(dt.Rows[0][1].ToString());
        }
        else
        {
            lbl_emailresult.Text = "UR Mail Id not in Our Database";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        forget_panel.Visible = true;
    }
    public void send_mail(string pwd)
    {
        string to = txt_email.Text;
        Configuration config = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
        MailSettingsSectionGroup settings = (MailSettingsSectionGroup)config.GetSectionGroup("system.net/mailSettings");
        MailMessage objMsg = new MailMessage();
        objMsg.From = new MailAddress(settings.Smtp.From);
        objMsg.To.Add(to);
        // objMsg.CC.Add(lbl_email.Text);       
        objMsg.Subject = "Ur Paasword";
        objMsg.IsBodyHtml = true;
        //objMsg.Body = " + "</td></tr><tr><td> " + lbl_from1.Text + "</td></tr> <tr><td>" + lbl_to.Text + " </td></tr> <tr><td>" 

        objMsg.Body = "<html><body><Table><tr><td><b>Hello,</b></td></tr><tr><td><b>From:</b></td><td>" + " brillianceenglishschool.org" +
          "</td></tr><tr><td> </td></tr><tr><td><b>Your Password:</b></td><td>" + pwd
            + "</td></tr> <tr><td><b>Regards,</td></tr><tr><td><b>Peak Techno Links (P)Ltd.</td></tr><tr><td ><b>080-65658080/9090</td></tr></table></body></html>";

        SmtpClient objsmtp = new SmtpClient();
        objsmtp.Credentials = new System.Net.NetworkCredential(settings.Smtp.Network.UserName, settings.Smtp.Network.Password);
        objMsg.Priority = System.Net.Mail.MailPriority.High;
        objsmtp.Host = settings.Smtp.Network.Host;
        objsmtp.EnableSsl = settings.Smtp.Network.EnableSsl;
        objsmtp.Port = settings.Smtp.Network.Port;
        objsmtp.DeliveryMethod = settings.Smtp.DeliveryMethod;
        objMsg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

        try
        {
            objsmtp.Send(objMsg);
            Response.Write("<script>alert(' Password sent to  your mail')</script>");
        }
        catch
        {
            Response.Write("<script>alert('Operation Failed')</script>");
        }
    }
}