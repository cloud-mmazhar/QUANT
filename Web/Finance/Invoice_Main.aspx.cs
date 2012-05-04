using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Finance_Invoice_Main : System.Web.UI.Page
{
    protected string connSTR = Configuration.DbConnectionString;
    protected string providerName = Configuration.DbProviderName;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            BindInfo();

        }

    }


    protected void BindInfo()
    {
        int BL_ID;
        string BL_ID_STR = Request.QueryString["BL_ID"];

        string IE = Request.QueryString["IE"];
        string AO = Request.QueryString["AO"] ; 
        string MH = Request.QueryString["MH"];
      
        string command = GetSqlCmd(IE + AO + MH  );

        BL_ID = Int32.Parse(BL_ID_STR);

       // string connSTR = Configuration.DbConnectionString;
       // string providerName = Configuration.DbProviderName;
        
        SqlDataReader reader1 = null;
        SqlDataReader reader2 = null;
        SqlDataReader reader3 = null;
        SqlDataReader reader4 = null;
        SqlConnection conn = null;

        try
        {
            conn = new SqlConnection(connSTR);

            SqlCommand comm1 = new SqlCommand( command , conn);
            SqlCommand comm2 = new SqlCommand( "Finance_InvoiceAR_GetInfo", conn);
            SqlCommand comm3 = new SqlCommand( "Finance_InvoiceAP_GetInfo", conn);
            SqlCommand comm4 = new SqlCommand( "Finance_InvoiceCRDR_GetInfo", conn);

            comm1.CommandType = CommandType.StoredProcedure;
            comm2.CommandType = CommandType.StoredProcedure;
            comm3.CommandType = CommandType.StoredProcedure;
            comm4.CommandType = CommandType.StoredProcedure;

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@BL_ID";
            param1.Value = BL_ID;
            param1.DbType = DbType.Int32;
            comm1.Parameters.Add(param1);

            //---------------------------------------

            SqlParameter param21 = new SqlParameter();
            param21.ParameterName = "@BL_ID";
            param21.Value = BL_ID;
            param21.DbType = DbType.Int32;
            comm2.Parameters.Add(param21);

            SqlParameter param22 = new SqlParameter();
            param22.ParameterName = "@IMP_EXP";
            param22.Value  = Int32.Parse(IE);
            param22.DbType = DbType.Boolean;
            comm2.Parameters.Add(param22);

            SqlParameter param23 = new SqlParameter();
            param23.ParameterName = "@Air_Ocean";
            param23.Value  = Int32.Parse(AO);
            param23.DbType = DbType.Boolean;
            comm2.Parameters.Add(param23);

            SqlParameter param24 = new SqlParameter();
            param24.ParameterName = "@MA_HO";
            param24.Value  = Int32.Parse(MH);
            param24.DbType = DbType.Boolean;
            comm2.Parameters.Add(param24);

            //-----------------------------------------

            SqlParameter param31 = new SqlParameter();
            param31.ParameterName = "@BL_ID";
            param31.Value = BL_ID;
            param31.DbType = DbType.Int32;
            comm3.Parameters.Add(param31);

            SqlParameter param32 = new SqlParameter();
            param32.ParameterName = "@IMP_EXP";
            param32.Value  = Int32.Parse(IE);
            param32.DbType = DbType.Boolean;
            comm3.Parameters.Add(param32);

            SqlParameter param33 = new SqlParameter();
            param33.ParameterName = "@Air_Ocean";
            param33.Value  = Int32.Parse(AO);
            param33.DbType = DbType.Boolean;
            comm3.Parameters.Add(param33);

            SqlParameter param34 = new SqlParameter();
            param34.ParameterName = "@MA_HO";
            param34.Value = Int32.Parse(MH);
            param34.DbType = DbType.Boolean;
            comm3.Parameters.Add(param34);
            
            //------------------------------

            SqlParameter param41 = new SqlParameter();
            param41.ParameterName = "@BL_ID";
            param41.Value = BL_ID;
            param41.DbType = DbType.Int32;
            comm4.Parameters.Add(param41);

            SqlParameter param42 = new SqlParameter();
            param42.ParameterName = "@IMP_EXP";
            param42.Value = Int32.Parse(IE);
            param42.DbType = DbType.Boolean;
            comm4.Parameters.Add(param42);

            SqlParameter param43 = new SqlParameter();
            param43.ParameterName = "@Air_Ocean";
            param43.Value = Int32.Parse(AO);
            param43.DbType = DbType.Boolean;
            comm4.Parameters.Add(param43);

            SqlParameter param44 = new SqlParameter();
            param44.ParameterName = "@MA_HO";
            param44.Value = Int32.Parse(MH);
            param44.DbType = DbType.Boolean;
            comm4.Parameters.Add(param44);

            //---------------------------------------------

            conn.Open();

            reader1 = comm1.ExecuteReader();
            reader1.Read();

            if (!reader1.IsDBNull(0))
                txtRefNo.Text = reader1.GetString(0);
            if (!reader1.IsDBNull(1))
                txtMBL_No.Text = reader1.GetString(1);
            if (!reader1.IsDBNull(2))
                txtHBL_No.Text = reader1.GetString(2);
            if (!reader1.IsDBNull(3))
                txtAgent.Text = reader1.GetString(3);

            if (!reader1.IsDBNull(4))
                txtCustomer.Text = reader1.GetString(4);
            if (!reader1.IsDBNull(5))
                txtETD.Text = reader1.GetString(5);
            if (!reader1.IsDBNull(6))
                txtETA.Text = reader1.GetString(6);

            //------------------------------

            reader2 = comm2.ExecuteReader();
            repeaterInvoice_AR.DataSource = reader2;
            repeaterInvoice_AR.DataBind();
           
            //--------------------------------------

            reader3 = comm3.ExecuteReader();
            repeaterInvoice_AP.DataSource = reader3;
            repeaterInvoice_AP.DataBind();

            //--------------------------------------------

            reader4 = comm4.ExecuteReader();
            repeaterInvoice_CRDR.DataSource = reader4;
            repeaterInvoice_CRDR.DataBind();

        }

        finally
        {
            if (reader1 != null) reader1.Close();
            if (reader2 != null) reader2.Close();
            if (reader3 != null) reader3.Close();
            if (reader4 != null) reader4.Close();

            if (conn != null) conn.Close();
            // reader.Close();
            // conn.Close();
        }

    }

    public string GetSqlCmd(string condition)
    {
        string sqlcmd = null;

        switch (condition)
        {
            case "001" : sqlcmd = "Finance_Invoice_HAWB_IMP"; break;
            case "011" : sqlcmd = "Finance_Invoice_HOBL_IMP"; break;
            case "101" : sqlcmd = "Finance_Invoice_HAWB_EXP"; break;
            case "111" : sqlcmd = "Finance_Invoice_HOBL_EXP"; break;

            case "000": sqlcmd = "Finance_Invoice_MAWB_IMP"; break;
            case "010": sqlcmd = "Finance_Invoice_MOBL_IMP"; break;
            case "100": sqlcmd = "Finance_Invoice_MAWB_EXP"; break;
            case "110": sqlcmd = "Finance_Invoice_MOBL_EXP"; break;

            default: sqlcmd = "Finance_Invoice_HAWB_IMP"; break;
        }

        return sqlcmd;
    }


}
