using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HighlightHaifa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    { 
        if (Timer1.Enabled)
        {
            Timer1.Enabled = false;
            Button1.Text = "הפעל גלריה";
        }
        else
        {
            Timer1.Enabled = true;
            Button1.Text = "הפסק גלריה";
        }
    
}

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
    private void SetImageUrl()
    {
        if (ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Highlight Haifa Pictures/1.jpg";
            ViewState["ImageDisplayed"] = 1;
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if (i == 8)
            {
                Image1.ImageUrl = "~/Highlight Haifa Pictures/1.jpg";
                ViewState["ImageDisplayed"] = 1;

            }
            else
            {
                i = i + 1;
                Image1.ImageUrl = "~/Highlight Haifa Pictures/" + i.ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
            }
        }
    }

}