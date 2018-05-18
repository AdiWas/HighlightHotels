using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrdersTelAviv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataService d = new DataService();
        int daya = int.Parse(Session["day_a"].ToString());
        int montha = int.Parse(Session["month_a"].ToString());
        int yeara = int.Parse(Session["year_a"].ToString());
        int dayl = int.Parse(Session["day_l"].ToString());
        int monthl = int.Parse(Session["month_l"].ToString());
        int yearl = int.Parse(Session["year_l"].ToString());
        int numPeople = int.Parse(Session["num_p"].ToString());
        if(d.IsAvailable(daya,montha,yeara,dayl,monthl,yearl,numPeople,1))
        {
            TextBoxNum.Visible = true;

            Label1.Text = "";


        } 
        else
        {
            Label1.Text = "";
        }


        }



    protected void TextBoxNum_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string num = TextBoxNum.Text;
        string exM = TextBoxExM.Text;
        string exY = TextBoxExY.Text;
    }
}