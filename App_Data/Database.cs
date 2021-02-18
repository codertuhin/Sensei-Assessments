using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for database
/// </summary>
public class Database
{
  
    public Database()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string GetValueFromAppSettings(string key)
    {
        string strValue = string.Empty;
        System.Collections.Specialized.NameValueCollection appSettings = System.Configuration.ConfigurationManager.AppSettings;
        if (appSettings.GetValues(key) != null)
        {
            strValue = appSettings.GetValues(key)[0].ToString();
        }
        return strValue;
    }

    public static string cooporsConnection
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString;
        }
    }

   

    public double GetConRate(string sql)
    {
        double conRate = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                object obj = cmd.ExecuteScalar();
                if (Convert.IsDBNull(obj))
                    conRate = 0;
                else
                    conRate = Convert.ToDouble(obj);
            }
        }
        return conRate;
    }


    public string GetOrderTypeId(string sql)
    {
        string OrderTypeId = "";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                object obj = cmd.ExecuteScalar();
                if (Convert.IsDBNull(obj))
                    OrderTypeId = "1";
                else
                    OrderTypeId = (obj).ToString();
            }
        }
        return OrderTypeId;
    }




    public long InsertRecWithIdentiry(string _sql, string tableName)
    {

        using (SqlConnection cn = new SqlConnection(Database.cooporsConnection))
        {
            cn.Open();
            using (SqlCommand cm = cn.CreateCommand())
            {
                cm.CommandType = CommandType.StoredProcedure;
                cm.CommandText = "ExecuteSQL_ReturnCurVal";
                cm.Parameters.Add(new SqlParameter("@pStrSql", _sql));
                cm.Parameters.Add(new SqlParameter("@ptableName", tableName));
                SqlParameter recsaffected = new SqlParameter("@pRecsAffected", SqlDbType.BigInt);
                cm.Parameters.Add(recsaffected);
                recsaffected.Direction = ParameterDirection.Output;
                cm.ExecuteNonQuery();

                long _Outval = Convert.ToInt64(recsaffected.Value);


                
                return _Outval;
            }
        }
    }



    public short GetFilterDurationDays(string sql)
    {
        short FilterDurationDays = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                object obj = cmd.ExecuteScalar();
                if (Convert.IsDBNull(obj))
                    FilterDurationDays = 1;
                else
                    FilterDurationDays = Convert.ToInt16(obj);
            }
        }
        return FilterDurationDays;
    }

    public bool ExecuteInsertUpdate(string sql)
    {
        //double conRate = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                cmd.ExecuteScalar();
                //if (Convert.IsDBNull(obj))
                //    conRate = 0;
                //else
                //    conRate = Convert.ToDouble(obj);
            }
        }
        return true;
    }


    public static bool Runsql(string sql)
    {
        
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                cmd.ExecuteNonQuery();
            }
        }
        return true;
    }

public string GetItemGroup(string sql)
    {
        string ItemGroup = "";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                object obj = cmd.ExecuteScalar();
                if (Convert.IsDBNull(obj))
                    ItemGroup = "1";
                else
                    ItemGroup = (obj).ToString();
            }
            
        }
        return ItemGroup;
    }
    
 public short GetFilterBatchingFinalIns(string sql)
    {
        short GetFilterBatchingFinalIns = 0;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
        {
            con.Open();
            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                object obj = cmd.ExecuteScalar();
                if (Convert.IsDBNull(obj))
                    GetFilterBatchingFinalIns = 1;
                else
                    GetFilterBatchingFinalIns = Convert.ToInt16(obj);
            }
        }
        return GetFilterBatchingFinalIns;
    }

public int GetIntData(string sql)
 {
     int conRate = 0;
     using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
     {
         con.Open();
         using (SqlCommand cmd = con.CreateCommand())
         {
             cmd.CommandType = CommandType.Text;
             cmd.CommandText = sql;

             object obj = cmd.ExecuteScalar();
             if (Convert.IsDBNull(obj))
                 conRate = 0;
             else
                 conRate = Convert.ToInt16(obj);
         }
     }
     return conRate;
 }

public static string GetStringData(string sql)
{
    string conRate = string.Empty;
    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
    {
        con.Open();
        using (SqlCommand cmd = con.CreateCommand())
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            string result = string.Empty;
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    result = reader[0].ToString();
                }
            }
           
            if (string.IsNullOrEmpty(result))
                conRate = "0";
            else
                conRate = result;
        }
    }
    return conRate;
}


public static short GetSequence(string sql)
{
    short GetSequence = 0;
    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
    {
        con.Open();
        using (SqlCommand cmd = con.CreateCommand())
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;

            object obj = cmd.ExecuteScalar();
            if (obj != null)
            {
                if (Convert.IsDBNull(obj))
                    GetSequence = 1;
                else
                    GetSequence = Convert.ToInt16(obj);
            }
        }
    }
    return GetSequence;
}


public static string GetString(string sql)
{
    string GetSequence = "";
    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cooporsDBConnectionString"].ConnectionString))
    {
        con.Open();
        using (SqlCommand cmd = con.CreateCommand())
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;

            object obj = cmd.ExecuteScalar();
            if (obj != null)
            {
                if (Convert.IsDBNull(obj))
                    GetSequence = "";
                else
                    GetSequence = obj.ToString();
            }
        }
    }
    return GetSequence;
}

}
