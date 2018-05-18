using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    DataService d = new DataService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length != 9)
        {
            args.IsValid = false;
        }
        else
        {
            int sum = 0;
            for (int i = 0; i <= 8; i++)
            {
                if (i == 0 || i % 2 == 0)
                {
                    sum = sum + (int)(TextBox1.Text[i]) - 48;
                }
                else
                {
                    if (((int)(TextBox1.Text[i]) - 48) * 2 / 10 != 0)
                    {
                        sum = sum + ((int)(TextBox1.Text[i]) - 48) * 2 / 10 + ((int)(TextBox1.Text[i]) - 48) * 2 % 10;
                    }
                    else
                    {
                        sum = sum + ((int)(TextBox1.Text[i]) - 48) * 2;
                    }
                }

            }
            if (sum % 10 == 0)
            {
                args.IsValid = true;

            }
            else
            {
                args.IsValid = false;
                
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (!d.IsIdPasswordExist(TextBox1.Text, TextBox2.Text))
              {
                Label3.Visible = true;
                Label3.Text = "פרטי ההתחברות אינם תקינים";

              }
            else
            {
                //Label3.Text = " "+"ברוך הבא"+ " ";
                Session["login name"] = d.GetFirstName(TextBox1.Text);
                Session["id"] = TextBox1.Text;
                Response.Redirect("Home.aspx");

            }
       
        }

    }
}