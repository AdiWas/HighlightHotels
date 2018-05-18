using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HighlightTelAviv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SetImageUrl();
        }
        DropDownListYear.Items.Clear();
        DropDownListYearL.Items.Clear();
        int year = DateTime.Now.Year;
        DropDownListYear.Items.Add(year.ToString());
        DropDownListYear.Items.Add((year+1).ToString());
        DropDownListYearL.Items.Add(year.ToString());
        DropDownListYearL.Items.Add((year + 1).ToString());
        UpdateMonth();
        UpdateDay();
        UpdateMonthL();
        UpdateDayL();


    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();

    }
    private void SetImageUrl()
    {
        if(ViewState["ImageDisplayed"]==null)
        {
            Image1.ImageUrl = "~/Highlight Tel Aviv Pictures/1.jpg";
            ViewState["ImageDisplayed"] = 1;
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if(i==8)
            {
                Image1.ImageUrl = "~/Highlight Tel Aviv Pictures/1.jpg";
                ViewState["ImageDisplayed"] = 1;

            }
            else
            {
                i = i + 1;
                Image1.ImageUrl = "~/Highlight Tel Aviv Pictures/" + i.ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Timer1.Enabled)
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

    protected void DropDownListYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        UpdateMonth();

    }

    private void UpdateMonth()
    {
        DropDownListMonth.Items.Clear();
        int start = 1;
        if (DropDownListYear.SelectedValue == DateTime.Now.Year.ToString())
        {
            start = DateTime.Now.Month;

        }
        for (int i = start; i <= 12; i++)
        {
            DropDownListMonth.Items.Add(i.ToString());
        }
    }
    private void UpdateMonthL()
    {

        DropDownListMonthL.Items.Clear();
        int start = 1;
        if (DropDownListYearL.SelectedValue == DateTime.Now.Year.ToString())
        {
            start = DateTime.Now.Month;

        }
        for (int i = start; i <= 12; i++)
        {
            DropDownListMonthL.Items.Add(i.ToString());
        }
    }
    public void UpdateDayL()
    {
        DropDownListDayL.Items.Clear();
        this.DropDownListDayL.Items.Clear();
        int Year = int.Parse(this.DropDownListYearL.SelectedValue);
        int month = int.Parse(this.DropDownListMonthL.SelectedValue);
        int endDay = DateTime.DaysInMonth(Year, month);
        int startday = 1;
        if (Year == DateTime.Now.Year && month == DateTime.Now.Month)
            startday = DateTime.Now.Day;
        for (int day = startday; day <= endDay; day++)
        {
            this.DropDownListDayL.Items.Add(day.ToString());
        }
    }
    public void UpdateDay()
    {
        DropDownListDay.Items.Clear();
        this.DropDownListDay.Items.Clear();
        int Year = int.Parse(this.DropDownListYear.SelectedValue);
        int month = int.Parse(this.DropDownListMonth.SelectedValue);
        int endDay = DateTime.DaysInMonth(Year, month);
        int startday = 1;
        if (Year == DateTime.Now.Year && month == DateTime.Now.Month)
            startday = DateTime.Now.Day;
        for (int day = startday; day <= endDay; day++)
        {
            this.DropDownListDay.Items.Add(day.ToString());
        }
    }
    protected void DropDownListMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        UpdateDay();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["day_a"] = DropDownListDay.SelectedValue;
        Session["month_a"] = DropDownListMonth.SelectedValue;
        Session["year_a"] = DropDownListYear.SelectedValue;
        Session["day_l"] = DropDownListDayL.SelectedValue;
        Session["month_l"] = DropDownListMonthL.SelectedValue;
        Session["year_l"] = DropDownListYearL.SelectedValue;
        Session["num_p"] = DropDownListNumPeople.SelectedValue;
        Response.Redirect("OrdersTelAviv.aspx");
    }

    protected void DropDownListDayL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownListMonthL_SelectedIndexChanged(object sender, EventArgs e)
    {
        UpdateDayL();
    }

    protected void DropDownListYearL_SelectedIndexChanged(object sender, EventArgs e)
    {
        UpdateMonthL();
    }

    protected void DropDownListDay_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}