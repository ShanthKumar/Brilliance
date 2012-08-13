using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_grid();
    }
    private void bind_grid()
    {
        staff_bal obj=new staff_bal();
        DataTable dt = new DataTable();
        dt = obj.Staff_all();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}