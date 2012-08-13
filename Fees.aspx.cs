using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Fees : System.Web.UI.Page
{
    FeeStructure objFees = new FeeStructure();
    Student_bal obj_studentbal = new Student_bal();
    DataTable dt;

    public int in_comp, in_material, in_special, in_smart, in_exam, in_admission, in_total, in_discount, in_applicationFee = 50;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("index.aspx");
            }
            drpPaymentModes.Items.Clear();
            drpPaymentModes.DataTextField = "PaymentMade";
            drpPaymentModes.DataValueField = "PaymentMode_id";
            drpPaymentModes.DataSource = objFees.getPaymentModes();
            drpPaymentModes.DataBind();
        }
    }

    protected void drpPaymentModes_SelectedIndexChanged(object sender, EventArgs e)
    {
        boundDetails();
    }

    protected void boundDetails()
    {

        objFees.className = GridView1.SelectedRow.Cells[4].Text;
        lblClass.Text = GridView1.SelectedRow.Cells[4].Text;
        DataRow ddr = objFees.getClassFeeStructure().Rows[0];
        lblMaterial.Text = "Rs " + ddr["Material_Fee"] + "/-";
        in_material = Convert.ToInt32(ddr["Material_Fee"]);
        lblComp.Text = "Rs " + ddr["Computer_Fee"] + "/-";
        in_comp = Convert.ToInt32(ddr["Computer_Fee"]);
        lblSmart.Text = "Rs " + ddr["Smart_Class_Fee"] + "/-";
        in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]);

        in_special = 0;
        in_exam = 0;

        if (drpPaymentModes.SelectedItem.Text.Equals("Monthly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"]) / 12 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"]) / 12;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 12 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"]) / 12;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 12 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]) / 12;
        }
        else if (drpPaymentModes.SelectedItem.Text.Equals("Half-Yearly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"]) / 2 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"]) / 2;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 2 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"]) / 2;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 2 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]) / 2;
        }
        else if (drpPaymentModes.SelectedItem.Text.Equals("Quaterly"))
        {
            lblMaterial.Text = "Rs " + Convert.ToInt32(ddr["Material_Fee"]) / 4 + "/-";
            in_material = Convert.ToInt32(ddr["Material_Fee"]) / 4;
            lblComp.Text = "Rs " + Convert.ToInt32(ddr["Computer_Fee"]) / 4 + "/-";
            in_comp = Convert.ToInt32(ddr["Computer_Fee"]) / 4;
            lblSmart.Text = "Rs " + Convert.ToInt32(ddr["Smart_Class_Fee"]) / 4 + "/-";
            in_smart = Convert.ToInt32(ddr["Smart_Class_Fee"]) / 4;
        }

        in_total = in_material + in_comp + in_smart;

        lblTotal.Text = "Rs " + in_total + "/-";

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        obj_studentbal.Class_ID1 = drpclass.SelectedItem.Text;
        obj_studentbal.Student_id = txtStudent.Text;
        dt = obj_studentbal.Student_Search();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Panel2.Visible = true;
    }

   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string studentid = GridView1.SelectedRow.Cells[0].Text;
        GridView2.DataSource = objFees.getStudentFeeDetails(studentid);
        GridView2.DataBind();
        Panel1.Visible = true;
        boundDetails();
    }

    protected void ImageButton4_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {

        boundDetails();
        try
        {
            objFees.PayFees(GridView1.SelectedRow.Cells[0].Text, lblClass.Text,in_material, in_comp, in_smart, in_special, in_exam, (in_material + in_comp + in_smart + in_special + in_exam), drpPaymentModes.SelectedItem.Text, "cash");
            Response.Redirect("Fees.aspx");

        }
        catch
        {
        }
    }

    protected void ImageButton5_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        Response.Redirect("Fees.aspx");
    }
}