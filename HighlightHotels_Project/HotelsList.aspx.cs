using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HotelsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightTelAviv.aspx");
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightHaifa.aspx");
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightEilat.aspx");
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightJerusalem .aspx");
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightDeadSea.aspx");
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Response.Redirect("HighlightHerzliya .aspx");
    }
}