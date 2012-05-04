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
/// Summary description for AccountAccess
/// </summary>
public class AccountAccess
{
    public static bool Account_Create( int AccountTypeID, string CompanyName, string URL1, string URL2, bool CreditHold, bool Active,
        int AddressTypeID, string Address1, string Address2, string City, string State, string PostCode,
        int ContactTypeID, string Phone, string Fax, string Email, string ContactName)
    {

        DbCommand cmd = DataAccess.CreateCommand();
        cmd.CommandText = "Account_Create";

        DbParameter param;

        param = cmd.CreateParameter();
        param.ParameterName = "@AccountTypeID";
        param.Value = AccountTypeID;
        param.DbType = DbType.Int32;
        cmd.Parameters.Add(param);

        if (CompanyName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CompanyName";
            param.Value = CompanyName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (URL1.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@URL1";
            param.Value = URL1;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (URL2.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@URL2";
            param.Value = URL2;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        param = cmd.CreateParameter();
        param.ParameterName = "@CreditHold";
        param.Value = CreditHold;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        param = cmd.CreateParameter();
        param.ParameterName = "@Active";
        param.Value = Active;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        //
        param = cmd.CreateParameter();
        param.ParameterName = "@AddressTypeID";
        param.Value = AddressTypeID;
        param.DbType = DbType.Int32;
        cmd.Parameters.Add(param);

        if (Address1.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Address1";
            param.Value = Address1;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (Address2.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Address2";
            param.Value = Address2;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (City.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@City";
            param.Value = State;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if (State.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@State";
            param.Value = State;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( PostCode.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@PostCode";
            param.Value = PostCode;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        //
        param = cmd.CreateParameter();
        param.ParameterName = "@ContactTypeID";
        param.Value = ContactTypeID;
        param.DbType = DbType.Int32;
        cmd.Parameters.Add(param);

        if (Phone.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Phone";
            param.Value = Phone;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (Fax.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Fax";
            param.Value = Fax;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (Email.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Email";
            param.Value = Email;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if (ContactName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ContactName";
            param.Value = ContactName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        int result = -1;
        try { result = DataAccess.ExecuteNonQuery(cmd); }
        catch { }//error pop from DataAccess  

        return (result != -1);
    }




	public AccountAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
