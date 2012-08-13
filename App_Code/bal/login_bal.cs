using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for login_bal
/// </summary>
public class login_bal
{
	public login_bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string user_name, password, oper, email_id;

   
    login_dal obj = new login_dal();

    public string Email_id
    {
        get { return email_id; }
        set { email_id = value; }
    }
    public string Oper
    {
        get { return oper; }
        set { oper = value; }
    }

    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string User_name
    {
        get { return user_name; }
        set { user_name = value; }
    }
    public int Login_check()
    {
        return (obj.user_login(this));
    }
    public string  create_new_user()
    {
        return (obj.Create_new_user (this));
    }
    public DataTable forget_password()
    {
        return (obj.Forget_password(this));
    }
}