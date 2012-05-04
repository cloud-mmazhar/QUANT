using System;
using System.Data;
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
/// Summary description for Utilities
/// </summary>
public class Utilities
{
    public static void LogError(Exception ex)
    {
        string errorMsg = "Exeception generated on ";
        errorMsg = "  " + ex.Message + "  " + ex.Source + "  " + ex.TargetSite;

        //return errorMsg;
    }


	public Utilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
