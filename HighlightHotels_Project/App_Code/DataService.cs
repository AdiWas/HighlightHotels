using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

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
        catch (Exception ex)
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
    public void AddUser(string user_id, string fname, string lname, string gender, string birthdate, string phone, string adress, string email, string password, string requestd_worker)
    {
        if (!UserIsExist(user_id))
        {
            string sSql = "INSERT INTO tbl_users(user_id,first_name,last_name,gender,birth_date,phone,address,email,[password],requestd_worker) VALUES(' " + user_id + "','" + fname + "','" + lname + "','" + gender + "','" + birthdate + "','" + phone + "','" + adress + "','" + email + "','" + password + "','" + requestd_worker + "');";
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
        string sSql = "SELECT password FROM tbl_users WHERE user_id=' " + id + "'";
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
        string userExist = null;
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
   /* public bool IsAvailable(int daya,int montha, int yeara,int dayl, int monthl, int yearl, int numPeople,int hotel_code)
    {
        string sSql = "SELECT * FROM tbl_orders WHERE user_id=' " + user + "'";
        OleDbCommand Cmd = new OleDbCommand(sSql, this.myConnection);
        object userExist = null;
        try
        {
            myConnection.Open();
            userExist = Cmd.ExecuteScalar();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            myConnection.Close();
        }
    }*/
}

