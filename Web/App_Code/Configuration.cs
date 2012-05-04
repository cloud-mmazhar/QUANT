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
/// Summary description for Configuration
/// </summary>
public class Configuration
{
       //Caches the connection string
    private static string dbConnectionString;
      //Caches the data provider name
    private static string dbProviderName;

      // Store the number of products per page
    //private readonly static int productsPerPage;
      // Store the prod descr length for product list
    //private readonly static int productDescriptionLength;
      // Store the name of shop
    //private readonly static string siteName;

    // no private or public ??
	static Configuration()
	{
        dbConnectionString = ConfigurationManager.ConnectionStrings["Quantum_Connection"].ConnectionString;
        dbProviderName     = ConfigurationManager.ConnectionStrings["Quantum_Connection"].ProviderName;
	
       // productsPerPage = System.Int32.Parse( ConfigurationManager.AppSettings["ProductsPerPage"] );
       // productDescriptionLength = System.Int32.Parse( ConfigurationManager.AppSettings["ProductDescriptionLength"] );
       // siteName = ConfigurationManager.AppSettings["SiteName"];
    }

    public static string DbConnectionString
    {
        get { return dbConnectionString; }
    }
    public static string DbProviderName
    { 
        get { return dbProviderName; }
    }

    //public static int ProductsPerPage
    //{
    //    get { return productsPerPage; }
    //}
    //public static int ProductDescriptionLength
    //{
    //    get { return productDescriptionLength; }
    //}
    //public static string SiteName
    //{
    //    get { return siteName; }
    //}

}
