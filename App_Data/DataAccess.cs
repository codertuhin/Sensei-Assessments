using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using DevExpress.Utils.OAuth.Provider;
using coopors.Codes;

namespace coopors
{
    public class DataAccess
    {
        public static int RunSqlMax(string strSQL)
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = strSQL;
                    object retval = cmd.ExecuteScalar();
                    int maxVal = Convert.ToInt32((Convert.IsDBNull(retval) ? 0 : retval));
                    return maxVal;
                }
            }
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
        public static int? RunSqlMaxNL(string strSQL)
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = strSQL;
                    object retval = cmd.ExecuteScalar();
                    int? maxVal = Convert.ToInt32((Convert.IsDBNull(retval) ? null : retval));
                    return maxVal;
                }
            }
        }
        public static object ExecSqlScalar(string strSQL)
        {
            object ret = null;
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = strSQL;
                    try
                    {
                        ret = cmd.ExecuteScalar();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }

                    return ret;
                }
            }
        }
        public static string RunSqlString(string strSQL)
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = strSQL;
                    object retval = cmd.ExecuteScalar();
                    string maxVal = Convert.IsDBNull(retval) ? "" : Convert.ToString( retval); ;
                    return maxVal;
                }
            }
        }
        public static object ExecSProc(string sProcName, SqlParameter[] sqlParams)
        {
            object ret = null;
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = sProcName;
                    cmd.Parameters.AddRange(sqlParams);
                    try
                    {
                        ret = cmd.ExecuteScalar();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                    return ret;
                }
            }
        }


        public static void ImportData()
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportData";
                    cmd.ExecuteNonQuery();                   

                }          

            }
        }
        public static void RestoreData()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
                {
                    con.Open();

                    using (SqlCommand cmd = con.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "restoreDatabase";
                        cmd.ExecuteNonQuery();

                    }




                }
            }
            catch (Exception ex)
            { throw ex; }
        }
        private static string LogString(string fStrSQL, string tableName)
        {
            string sql = string.Empty;
            sql = "Insert into tblTransaction (Terminal,LogText,tableName)values('" + Environment.MachineName + "','" + fStrSQL.Replace("'", "''") + "','" + tableName  + "')";
            return sql;
        }
        public static bool CreateCommiteeMember(long AppID, long ScoietiesID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
                {
                    con.Open();
                    using (SqlCommand cmd = con.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "CreateCommiteeMember";
                        cmd.Parameters.Add(new SqlParameter("@AppID", AppID)); 
                        cmd.Parameters.Add(new SqlParameter("@ScoietiesID", @ScoietiesID));
                        cmd.ExecuteNonQuery();
                     }
                }

            }
            catch (Exception ex)
            {
                return false;
           }
            return true;
        }
        public static void UpdateAppDoc(long AppID)
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UpdateAppDoc";
                    cmd.Parameters.Add(new SqlParameter("@AppID", SqlDbType.BigInt)).Value = AppID;
                    cmd.ExecuteNonQuery();
                }

            }
        }
        public static int UpdateCommiteeMember(long AppID, long ScoietiesID, int MemNO)
        {
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UpdateCommiteeMember";
                  cmd.Parameters.Add(new SqlParameter("@AppID", SqlDbType.BigInt)).Value = AppID;
                  cmd.Parameters.Add(new SqlParameter("@ScoietiesID", SqlDbType.BigInt)).Value = ScoietiesID;
                  cmd.Parameters.Add(new SqlParameter("@MemNO", SqlDbType.Int)).Value = MemNO;
                    cmd.Parameters.Add(new SqlParameter("@RecCount", SqlDbType.Int)).Direction = ParameterDirection.Output;
                    int ret = cmd.ExecuteNonQuery();
                    return Convert.ToInt32(cmd.Parameters["@RecCount"].Value);
                }

            }
        }

        public static bool RunSql(string strSQL)
        {

            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                int affectedRows = 0;
                SqlTransaction transaction;
                con.Open();
                transaction = con.BeginTransaction();
                try
                {

                    SqlCommand cmd = new SqlCommand(strSQL, con, transaction);
                    affectedRows = cmd.ExecuteNonQuery();

                    transaction.Commit();
                }
                catch (SqlException sqlError)
                {

                    transaction.Rollback();
                    throw new Exception(sqlError.Message);
                }
                con.Close();
                if (affectedRows > 0)
                    return true;
                else
                    return false;
            }
        }

       
        public  class User {
            public string UserName { get; set; }
            public string UserTypesId { get; set; }
            
        public User()
        { 
        
        }
       
        }
        public static clsUser UserLoginCheck(string userid, string pwd)
        {
            clsUser u = new clsUser();
            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                string userName = ""; string SecurityLevel = "";
                try
                {
                    con.Open();
                    using (SqlCommand cmd = con.CreateCommand())
                    {
                       
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "select UserTypesId,ID,UserName from Users where Email='" + userid + "' and Password='"+pwd+"'";
                        //cmd.Parameters.Add(new SqlParameter("@EmailId", userid));
                        //cmd.Parameters.Add(new SqlParameter("@Password", pwd));
                        using (SqlDataReader r = cmd.ExecuteReader())
                        {
                            while (r.Read())
                            {
                                u.Id = Convert.ToString(r["ID"]);
                                u.UserName = r["UserName"].ToString();
                                u.UserTypesId = r["UserTypesId"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw ex; //ExceptionUtility.LogException(ex, "User Login");
                }
                return u;

            }

        }

        public static void LoadToTable(string strSQL, out DataTable dt)
        {

            DataTable dt1 = new DataTable();

            using (SqlConnection con = new SqlConnection(Database.cooporsConnection))
            {
                con.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(strSQL, con))
                {
                    adapter.Fill(dt1);

                }
            }

            dt = dt1;
        }


    }

}
