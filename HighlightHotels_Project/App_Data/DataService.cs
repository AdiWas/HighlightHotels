using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using localhost;

/// <summary>
/// Summary description for DataService
/// </summary>
public class DataService
{
    protected OleDbConnection myConnection;
    public DataService()
    {
        string connectionString = Connect.getConnectionString();
        myConnection = new OleDbConnection(connectionString);
    }
    public bool UserIsExist(string user)
    {
        string sSql = "SELECT * FROM tbl_users WHERE user_id=' " + user + "'";
        OleDbCommand Cmd = new OleDbCommand(sSql, this.myConnection);
        object userExist = null;
        try
        {
            myConnection.Open();
            userExist = Cmd.ExecuteScalar();
        }
        catch(Exception ex)
        {
            throw ex;
        }
        finally
        {
            myConnection.Close();
        }
        if (userExist == null)
            return false;
        return true;
    }
    public void AddUser(string user_id, string fname,string lname,string gender,string birthdate,string phone,string adress,string email,string password,string requestd_worker)
    {
        if(!UserIsExist(user_id))
        {
            string sSql = "INSERT INTO tbl_users(user_id,first_name,last_name,gender,birth_date,phone,address,email,[password],requestd_worker) VALUES(' " + user_id + "','" + fname + "','" + lname + "','" + gender + "','" + birthdate + "','" + phone + "','" + adress + "','" + email + "','" + password + "','" + requestd_worker + "');";
            OleDbCommand myCmd = new OleDbCommand(sSql, this.myConnection);
            try
            {
                myConnection.Open();
                myCmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                myConnection.Close();
            }
        }

    }

    //public object IsIdPasswordExist(string id, string password)
    //{
    //    //string sSql= "SELECT first_name FROM tbl_users WHERE user_id='" + id+ "' AND password='"+password+"'";
    //    //string sSql = "SELECT first_name FROM tbl_users WHERE user_id='" + id + "'AND password='" + password + "'";



    //    string sSql = "SELECT tbl_users.first_name FROM tbl_users WHERE tbl_users.user_id ='" + id + "' OR tbl_users.password ='" + password + "'";
    //    //string sSql = "SELECT tbl_users.first_name FROM tbl_users WHERE tbl_users.user_id ='" + id + "' AND tbl_users.password ='" + password + "'";
    //    OleDbCommand Cmd = new OleDbCommand(sSql, this.myConnection);
    //    object userExist = null;
    //    try
    //    {
    //        this.myConnection.Open();
    //        userExist = Cmd.ExecuteScalar();
    //    }
    //    catch (Exception ex)
    //    {
    //        throw ex;
    //    }
    //    finally
    //    {
    //        myConnection.Close();
    //    }
    //    return userExist;
    //}
    public bool IsIdPasswordExist(string id, string password)
    {
        if (!UserIsExist(id))
            return false;
        string sSql= "SELECT password FROM tbl_users WHERE user_id=' " + id + "'";
        OleDbCommand Cmd = new OleDbCommand(sSql, this.myConnection);
        string p = null;
        try
        {
            myConnection.Open();
            p = (string)(Cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            myConnection.Close();
        }
        if (p == password)
            return true;
        return false;

    }
    public string GetFirstName(string id)
    {
        string sSql = "SELECT first_name FROM tbl_users WHERE user_id=' " + id + "'";
        OleDbCommand Cmd = new OleDbCommand(sSql, this.myConnection);
        string  userExist = null;
        try
        {
            myConnection.Open();
            userExist = (string)(Cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            myConnection.Close();
        }
        return userExist;

    }

    //public static bool CheckId(string id)
    //{
    //    if (id.Length != 9)
    //    {
    //        return false;
    //    }
    //    int sum = 0; 
    //    for(int i=0;i<=8;i++)
    //    {
    //        if (i == 0 || i % 2 == 0)
    //            sum = sum + (int)(id[i]);
    //        else
    //        {
    //            if((int)(id[i])*2%10!=0)
    //            {
    //                sum = sum + (int)(id[i]) * 2 / 10 + (int)(id[i]) * 2 % 10;
    //            }
    //            else
    //            {
    //                sum = sum + (int)(id[i]);
    //            }
    //        }

    //    }
    //    if (sum % 10 == 0)
    //        return true;
    //    return false;
    //}
    //    int bikoret = ((int)id[8]) - 48;
    //    int sum = 0, num = 0;
    //    int num2 = 0;
    //    int j = 0;
    //    for (int i = 1; i < 9; i++)
    //    {
    //        if (j <= 7)
    //        {
    //            if (i % 2 != 0)
    //            {
    //                num = (((int)id[j]) - 48);
    //                num2 = num;
    //                if (num / 10 != 0)
    //                {
    //                    num2 = num / 10 + num % 10;
    //                }
    //                sum = sum + num2;
    //                j++;
    //            }
    //            else
    //            {
    //                num = ((((int)id[j]) - 48) * 2);
    //                num2 = num;
    //                if (num / 10 != 0)
    //                {
    //                    num2 = num / 10 + num % 10;
    //                }
    //                sum = sum + num2;
    //                j++;
    //            }
    //        }
    //    }
    //    sum = sum + bikoret;
    //    if (sum % 10 == 0)
    //        return true;
    //    else
    //        return false;
    //}

    public bool IsAvailable(int daya,int montha,int yeara,int dayl,int monthl, int yearl, int nump, int hotelcode)
    {
        string sql = "SELECT * FROM tbl_rooms WHERE (hotel_code=' " + hotelcode + "' and max_num_of_people='"+nump+"')";
        OleDbCommand command = new OleDbCommand(sql, myConnection);
        OleDbDataAdapter adapter = new OleDbDataAdapter();
        adapter.SelectCommand = command;
        DataSet dataSet = new DataSet();
        try
        {
            myConnection.Open();
            adapter.Fill(dataSet, "tbl_rooms");
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            myConnection.Close();
        }

        if (dataSet.Tables.Count == 0 || dataSet.Tables["tbl_rooms"].Rows.Count == 0) return false;
        DataRow d = dataSet.Tables["tbl_romms"].Rows[0];
        int numa = int.Parse(d["num_of_avilable_rooms"].ToString());
        int code= int.Parse(d["room_code"].ToString());
        sql = "Select * From tbl_orders Where room_code ='" + code + "'";
        command = new OleDbCommand(sql, myConnection);
        adapter = new OleDbDataAdapter();
        adapter.SelectCommand = command;
        dataSet = new DataSet();
        try
        {
            myConnection.Open();
            adapter.Fill(dataSet, "tbl_orders");
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            myConnection.Close();
        }

        DateTime arrive = new DateTime(yeara, montha, daya);
        DateTime leave = new DateTime(yearl, monthl, dayl);

        DataTable t = dataSet.Tables["tbl_orders"];
        for(int i=0;i<t.Rows.Count; i++)
        {
            DataRow r = t.Rows[i];
            DateTime arrive_o = new DateTime(
                int.Parse(r["arrival_day"].ToString()),
                int.Parse(r["arrival_month"].ToString()),
                int.Parse(r["arrival_year"].ToString()));
            DateTime leave_o = new DateTime(
                int.Parse(r["leaving_day"].ToString()),
                int.Parse(r["leaving_month"].ToString()),
                int.Parse(r["leaving_year"].ToString()));


            if (arrive.CompareTo(arrive_o) <= 0 && leave.CompareTo(arrive_o) >= 0)
            {
                numa--;
            }
            else if (arrive.CompareTo(leave_o) >= 0 && leave.CompareTo(leave_o) <= 0)
            {
                numa--;
            }
            else if (arrive.CompareTo(arrive_o) >= 0 && leave.CompareTo(arrive_o) <= 0)
            {
                numa--;
            }
        }

        if (numa > 0)
            return true;
        else
            return false;

    }
    public int GetCode(int hotel_code, int nump)
    {
        string sql = "SELECT * FROM tbl_rooms WHERE (hotel_code=' " + hotel_code + "' and max_num_of_people='" + nump + "')";
        OleDbCommand command = new OleDbCommand(sql, myConnection);
        OleDbDataAdapter adapter = new OleDbDataAdapter();
        adapter.SelectCommand = command;
        DataSet dataSet = new DataSet();
        try
        {
            myConnection.Open();
            adapter.Fill(dataSet, "tbl_rooms");
        }
        catch (Exception ex)
        {
            return 0;
        }
        finally
        {
            myConnection.Close();
        }
        DataRow d = dataSet.Tables["tbl_romms"].Rows[0];
        int code = int.Parse(d["room_code"].ToString());
        return code;

    }
    public bool AddOrder(int daya, int montha, int yeara, int dayl, int monthl, int yearl,int nump, int hotelcode, int num, string type, int monthc, int yearc, int userid)
    {
        CardsWS.cardsWS cards = new CardsWS.cardsWS();
        if (!cards.IsExist(num, type, monthc, yearc))
            return false;

        if (!cards.Pay(num, type, monthc, yearc, GetPrice(hotelcode, nump)))
            return false;

        string sql = "Insert into tbl_orders(room_code,user_id,arrival_day,arrival_month,arrival_year,leaving_day,leaving_month,leaving_year) values ('" +
            GetCode(hotelcode, nump) + "', '" + userid + "', '" + daya + "', '" + montha + "', '" + yeara + "', '" + dayl + "', '" + monthl + "', '" + yearl + "')";
        OleDbCommand myCmd = new OleDbCommand(sSql, this.myConnection);
        try
        {
            myConnection.Open();
            myCmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            myConnection.Close();
        }
        return true; 
    }

    public int GetPrice(int hotel_code, int nump)
    {
        string sql = "SELECT * FROM tbl_rooms WHERE (hotel_code=' " + hotel_code + "' max_num_of_people='" + nump + "')";
        OleDbCommand command = new OleDbCommand(sql, myConnection);
        OleDbDataAdapter adapter = new OleDbDataAdapter();
        adapter.SelectCommand = command;
        DataSet dataSet = new DataSet();
        try
        {
            myConnection.Open();
            adapter.Fill(dataSet, "tbl_rooms");
        }
        catch (Exception ex)
        {
            return 0;
        }
        finally
        {
            myConnection.Close();
        }

        if (dataSet.Tables.Count == 0 || dataSet.Tables["tbl_rooms"].Rows.Count == 0) return false;
        DataRow d = dataSet.Tables["tbl_romms"].Rows[0];
        return int.Parse(d["price"].ToString());
    }
}
