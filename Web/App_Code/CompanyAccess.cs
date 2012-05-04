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
/// Summary description for CompanyAccess
/// </summary>
public class CompanyAccess
{
    // 25 stringinput 
    public static bool Company_Create( string CompanyName, string Address1, string Address2, string City, string State, string PostCode, string Phone, string Fax, string Email, string URL1, string URL2, string IATA, string FMCNo, string IssuePlace,
                                       string TaxIDType,   string TaxIDNo,  string TSANo, string TSAExpDate, string AESContact, string AESCity, string AESState, string AESPostCode, string AESCountry, string AESEmail, string AESPartyType)
    {
        DbCommand cmd = DataAccess.CreateCommand();
        cmd.CommandText = "Company_Create";

        DbParameter param;

        if (CompanyName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CompanyName";
            param.Value = CompanyName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
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

        if (PostCode.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@PostCode";
            param.Value = PostCode;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
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
        if (IATA.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@IATA";
            param.Value = IATA;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (FMCNo.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FMCNo";
            param.Value = FMCNo;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (IssuePlace.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@IssuePlace";
            param.Value = IssuePlace;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (TaxIDType.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@TaxIDType";
            param.Value = TaxIDType;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (TaxIDNo.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@TaxIDNo";
            param.Value = TaxIDNo;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (TSANo.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@TSANo";
            param.Value = TSANo;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (TSAExpDate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@TSAExpDate";
            param.Value = TSAExpDate;
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        }
        if (AESContact.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESContact";
            param.Value = AESContact;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (AESCity.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESCity";
            param.Value = AESCity;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (AESState.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESState";
            param.Value = AESState;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (AESPostCode.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESPostCode";
            param.Value = AESPostCode;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (AESCountry.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESCountry";
            param.Value = AESCountry;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( AESEmail.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESEmail";
            param.Value = AESEmail;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( AESPartyType.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AESPartyType";
            param.Value = AESPartyType;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        int result = -1;
        try { result = DataAccess.ExecuteNonQuery(cmd); }
        catch { }//error pop from DataAccess  

        return (result != -1);
    }

	public CompanyAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
