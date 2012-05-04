using System;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
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
/// Summary description for FinanceAccess
/// </summary>
public class FinanceAccess
{
	public FinanceAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataTable GetInvoiceAR(int IMP_EXP, int MA_HO, int Air_Ocean)
    {

        DbCommand cmd = DataAccess.CreateCommand();
        cmd.CommandText = "Finance_GetInvoiceAR";

        DbParameter param;

        param = cmd.CreateParameter();
        param.ParameterName = "@IMP_EXP";
        param.Value = IMP_EXP;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        param = cmd.CreateParameter();
        param.ParameterName = "@MA_HO";
        param.Value = MA_HO;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        param = cmd.CreateParameter();
        param.ParameterName = "@Air_Ocean";
        param.Value = Air_Ocean;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        DataTable table = DataAccess.ExecuteSelectCommand(cmd);
        return table;


    }
}
