using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for cardsWS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class cardsWS : System.Web.Services.WebService
{

    public cardsWS()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }


    private DataRow GetCard(int num, string type,int month, int year)
    {
        OleDbConnection myConnection = new OleDbConnection(connect.getConnectionString());
        string sql = "Select * From tbl_credit_cards Where ( credit_code = " + num + " and type=" + type + "and exmonth=" + month + "and exyear=" + year + ")";
        OleDbCommand command = new OleDbCommand(sql, myConnection);
        OleDbDataAdapter adapter = new OleDbDataAdapter();
        adapter.SelectCommand = command;
        DataSet dataSet = new DataSet();
        try
        {
            myConnection.Open();
            adapter.Fill(dataSet, "tbl_credit_cards");
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            myConnection.Close();
        }
        if (dataSet.Tables.Count == 0 || dataSet.Tables["tbl_credit_cards"].Rows.Count == 0) return null;
        return dataSet.Tables["tbl_credit_cards"].Rows[0];

    }
    [WebMethod]
   public bool IsExist(int num, string type, int month, int year)
    {
        DataRow d = GetCard(num, type, month, year);
        if(d==null)
        {
            return false;
        }
        return true;
    }

    [WebMethod]
    public bool Pay(int num, string type, int month, int year, decimal p)
    {
        if(IsExist(num,type,month,year))
        {
            DataRow d = GetCard(num, type, month, year);
            decimal money = (decimal)d["money"];
            if (p > money)
                return false;
            else
            {
                OleDbConnection myConnection = new OleDbConnection(connect.getConnectionString());
                string sql = "Update tbl_credit_cards Set money='"+(money-p)+"' Where credit_code = " + num+ "";
                OleDbCommand command = new OleDbCommand(sql, myConnection);
                try
                {
                    myConnection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    return false;
                }
                finally
                {
                    myConnection.Close();
                }
                return true;

            }
            
        }
        return false;

    }
}
