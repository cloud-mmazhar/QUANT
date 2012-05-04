using System;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{

    public static DbCommand CreateCommand()
    {
        string dataProvider = Configuration.DbProviderName;

        string connectionString = Configuration.DbConnectionString;
                                 
        DbProviderFactory factory = DbProviderFactories.GetFactory(dataProvider);
        DbConnection conn = factory.CreateConnection();

        conn.ConnectionString = connectionString;

        DbCommand cmd = conn.CreateCommand();

        cmd.CommandType = CommandType.StoredProcedure;

        return cmd;
    }

    // executes a command and returns the result as a DataTable obj
    public static DataTable ExecuteSelectCommand(DbCommand cmd)
    {
        DataTable table;
        // Execute cmd and check to close connection
        try
        {
            cmd.Connection.Open();
            DbDataReader reader = cmd.ExecuteReader();
            table = new DataTable();
            table.Load(reader);
            reader.Close();
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
            throw;
        }
        finally
        {
            cmd.Connection.Close();
        }
        return table;
    }

    public static DbDataReader ExecuteSelectCommand_Reader(DbCommand cmd)
    {
        DbDataReader reader;
        // Execute cmd and check to close connection
        try
        {
            cmd.Connection.Open();
            reader = cmd.ExecuteReader();
            // reader.Read();
            //reader.Close();
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
            throw;
        }
        finally
        {
            cmd.Connection.Close();
        }
        return reader;
    }



    public static int ExecuteNonQuery(DbCommand cmd)
    {
        int affectedRows = -1;
        try
        {
            cmd.Connection.Open();
            affectedRows = cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
            throw;
        }
        finally
        { cmd.Connection.Close(); }
        return affectedRows;
    }

    public static string ExcuteScalar(DbCommand cmd)
    {
        string value = "";
        try
        {
            cmd.Connection.Open();

            value = cmd.ExecuteScalar().ToString();
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
            throw;
        }
        finally { cmd.Connection.Close(); }

        return value;
    }


	public DataAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
