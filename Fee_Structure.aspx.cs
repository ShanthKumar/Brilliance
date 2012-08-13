using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Fee_Structure : System.Web.UI.Page
{
    public String recordClass;
    FeeStructure objFees = new FeeStructure();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
        GridView1.DataSource = objFees.GetFeeStructure();
        GridView1.DataBind();
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        recordClass = GridView1.SelectedRow.Cells[0].Text;
        txt_classname.Text = GridView1.SelectedRow.Cells[0].Text;
        txt_newAdFee.Text = GridView1.SelectedRow.Cells[1].Text;
        txt_ReAdFee.Text = GridView1.SelectedRow.Cells[2].Text;
        txt_material.Text = GridView1.SelectedRow.Cells[3].Text;
        txt_comp.Text = GridView1.SelectedRow.Cells[4].Text;
        txt_smart.Text = GridView1.SelectedRow.Cells[5].Text;
        txt_special.Text = GridView1.SelectedRow.Cells[6].Text;
        txt_exam.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            objFees.className = txt_classname.Text;
            objFees.newAd = float.Parse(txt_newAdFee.Text);
            objFees.ReAd = float.Parse(txt_ReAdFee.Text);
            objFees.mat = float.Parse(txt_material.Text);
            objFees.comp = float.Parse(txt_comp.Text);
            objFees.smart = float.Parse(txt_smart.Text);
            objFees.special = float.Parse(txt_special.Text);
            objFees.exam = float.Parse(txt_exam.Text);

            objFees.updateFeeRecord();

            Response.Redirect("Fee_Structure.aspx");
        }
        catch
        {

        }

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Fee_Structure.aspx");
    }
}