using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager : System.Web.UI.Page
{
    DataService d = new DataService();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string script = "<script languge='javascript'>";
        //script += "window.open('Manager.aspx','Manager','width=1050,height=850')</script>";
        //Page.RegisterStartupScript("Openpopup", script);

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
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
        if(Page.IsValid)
        {
            if(TextBox1.Text=="211458294"&&TextBox2.Text=="1234")
            {
                Response.Redirect("Manager.aspx");
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "פרטי מנהל שגויים";
            }

        }
    }
}