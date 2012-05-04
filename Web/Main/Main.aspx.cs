using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Main_Main : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindInfo();

        }
    }

    protected void BindInfo()
    {
        string connSTR = Configuration.DbConnectionString;

        string query1 = "SELECT TOP 5  MAWB_ImpID, RefNo, BL_Vendor, PostDate, CloseDate FROM MAWB_Imp ORDER BY MAWB_ImpID DESC;";
        string query2 = "SELECT TOP 5  HAWB_ImpID, Customer, Agent,  PostDate, CloseDate FROM HAWB_Imp ORDER BY HAWB_ImpID DESC;";
        string query3 = "SELECT TOP 5  MOBL_ImpID, RefNo, BL_Vendor, PostDate, CloseDate FROM MOBL_Imp ORDER BY MOBL_ImpID DESC;";
        string query4 = "SELECT TOP 5  HOBL_ImpID, Customer, Agent,  PostDate, CloseDate FROM HOBL_Imp ORDER BY HOBL_ImpID DESC;";

        string query5 = "SELECT TOP 5  MAWB_ExpID, RefNo, BL_Vendor, PostDate, CloseDate FROM MAWB_Exp ORDER BY MAWB_ExpID DESC;";
        string query6 = "SELECT TOP 5  HAWB_ExpID, RefNo, BL_Vendor, PostDate, CloseDate FROM HAWB_Exp ORDER BY HAWB_ExpID DESC;";
        string query7 = "SELECT TOP 5  MOBL_ExpID, RefNo, BL_Vendor, PostDate, CloseDate FROM MOBL_Exp ORDER BY MOBL_ExpID DESC;";
        string query8 = "SELECT TOP 5  HOBL_ExpID, RefNo, BL_Vendor, PostDate, CloseDate FROM HOBL_Exp ORDER BY HOBL_ExpID DESC;";

        string queryInv1 = "SELECT TOP 5 InvoiceID, BL_ID, IMP_EXP, MA_HO, Air_Ocean, InvNo, Date_Post, Total, Balance FROM Invoice_AR ORDER BY InvoiceID DESC;";
        string queryInv2 = "SELECT TOP 5 InvoiceID, BL_ID, IMP_EXP, MA_HO, Air_Ocean, InvNo, Date_Post, Total, Balance FROM Invoice_AP ORDER BY InvoiceID DESC;";

        SqlConnection conn = null;
        SqlDataReader reader = null;

        try
        {
            conn = new SqlConnection(connSTR);

            SqlCommand comm1 = new SqlCommand(query1, conn);
            SqlCommand comm2 = new SqlCommand(query2, conn);

            SqlCommand commInv1 = new SqlCommand(queryInv1, conn);
            SqlCommand commInv2 = new SqlCommand(queryInv2, conn);

            conn.Open();

            reader = comm1.ExecuteReader();
            repeaterMAWB_IMP.DataSource = reader;
            repeaterMAWB_IMP.DataBind();
            reader.Close();

            reader = comm2.ExecuteReader();
            repeaterHAWB_IMP.DataSource = reader;
            repeaterHAWB_IMP.DataBind();
            reader.Close();

            reader = comm1.ExecuteReader();
            repeaterMOBL_IMP.DataSource = reader;
            repeaterMOBL_IMP.DataBind();
            reader.Close();

            reader = comm2.ExecuteReader();
            repeaterHOBL_IMP.DataSource = reader;
            repeaterHOBL_IMP.DataBind();
            reader.Close();

            reader = comm1.ExecuteReader();
            repeaterMAWB_EXP.DataSource = reader;
            repeaterMAWB_EXP.DataBind();
            reader.Close();

            reader = comm2.ExecuteReader();
            repeaterHAWB_EXP.DataSource = reader;
            repeaterHAWB_EXP.DataBind();
            reader.Close();

            reader = comm1.ExecuteReader();
            repeaterMOBL_EXP.DataSource = reader;
            repeaterMOBL_EXP.DataBind();
            reader.Close();

            reader = comm2.ExecuteReader();
            repeaterHOBL_EXP.DataSource = reader;
            repeaterHOBL_EXP.DataBind();
            reader.Close();

            reader = commInv1.ExecuteReader();
            repeaterInvAR.DataSource = reader;
            repeaterInvAR.DataBind();
            reader.Close();

            reader = commInv2.ExecuteReader();
            repeaterInvAP.DataSource = reader;
            repeaterInvAP.DataBind();
            reader.Close();

        }

        finally
        {
            if (reader != null) reader.Close();
            if (conn != null) conn.Close();
        }
 


    }

    protected void DataBind_MAWB_IMP()
    {


    }



    protected string myFormat1(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "IMPORT";
        else
            return "EXPORT";
    }

    protected string myFormat2(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "MASTER";
        else
            return "HOUSE";
    }

    protected string myFormat3(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "AIR";
        else
            return "OCEAN";
    }

    protected string myFormat4(object strArg)
    {
        if (strArg != null)
        {
            int val = Convert.ToInt32(strArg);
            if (val == 0)
                return "Closed";
            else
                return "Open";
        }

        return "Open";
    }



}
