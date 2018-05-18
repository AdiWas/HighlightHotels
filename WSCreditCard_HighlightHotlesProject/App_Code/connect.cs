using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for connect
/// </summary>
public class connect
{
    const string FILE_NAME = "Database31.accdb";
    public static string getConnectionString()
    {
        string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FILE_NAME);
        string ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + location;
        return ConnectionString;

    }
}