using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    int k = DateTime.Now.Year;
        //    for (int i = 1950; i <= k; i++)
        //    {
        //        DropDownList2.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
        //        //DropDownList2.Items.Add(new ListItem(i.ToString(), i.ToString()));
        //    }
        //    int[] arr = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        //    if (Convert.ToInt32(DropDownList2.SelectedValue) % 4 == 0)
        //        arr[1] = 29;
        //    else
        //        arr[1] = 28;
        //    int month = arr[Convert.ToInt32(DropDownList3.SelectedValue) - 1];
        //    for (int i = month; i >= 1; i--)
        //    {
        //        DropDownList4.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
        //    }
        //}
        if (!this.IsPostBack)
            this.AddBirthYears();

    }
    private void AddBirthYears()
    {
        int endYear = DateTime.Now.Year - 120;
        for(int year=DateTime.Now.Year;year>endYear;year--)
        {
            this.DropDownList4.Items.Add(new ListItem(year.ToString(), year.ToString()));
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }



    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //if (TextBox3.Text.Length != 9)
        if(args.Value.Length!=9)
        {
            args.IsValid = false;
            //Label15.Text = "אנא הזן תעודת זהות תקינה";
        }
        else
        {
            int sum = 0;
            for (int i = 0; i <= 8; i++)
            {
                if (i == 0 || i % 2 == 0)
                {
                    sum = sum + (int)(TextBox3.Text[i])-48;
                }
                else
                {
                    if (((int)(TextBox3.Text[i])-48) * 2 / 10 != 0)
                    {
                        sum = sum + ((int)(TextBox3.Text[i])-48) * 2 / 10 + ((int)(TextBox3.Text[i])-48) * 2 % 10;
                    }
                    else
                    {
                        sum = sum + ((int)(TextBox3.Text[i])-48)*2;
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
                //Label15.Text = "אנא הזן תעודת זהות תקינה";
            }
        }

    }
    //args.IsValid = DataService.CheckId(args.Value);
    //args.IsValid = DataService.IdStandardization(args.Value);

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string x;
            DataService d = new DataService();
            if (CheckBox1.Checked)
                x = "כן";
            else
            {
                x = "לא";

            }
            d.AddUser(TextBox3.Text, TextBox1.Text, TextBox2.Text, DropDownList1.Text, DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text, TextBox6.Text, TextBox4.Text, TextBox5.Text, TextBox8.Text, x);
            //Session["login name"] = TextBox1.Text;
            //Response.Redirect("Home.aspx");
         


        }


        //if (Page.IsValid)
        //{
        //    string connectionString = Connect.getConnectionString();
        //    OleDbConnection cnn = new OleDbConnection(connectionString);
        //    try
        //    {
        //        cnn.Open(); // פתיחת קשר
        //        Label14.Text = "עובד";
        //    }
        //    catch { Label14.Text = "faill"; }
        //    finally
        //    {
        //        cnn.Close();
        //    }
        //}
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.DropDownList2.Items.Clear();
        int birthYear = int.Parse(this.DropDownList4.SelectedValue);
        int endDay = DateTime.DaysInMonth(birthYear, int.Parse(this.DropDownList3.SelectedValue));
        for(int day=1;day<=endDay;day++)
        {
            this.DropDownList2.Items.Add(new ListItem(day.ToString(), day.ToString()));
        }
        
    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //שנה מעוברת
        
    }
}
