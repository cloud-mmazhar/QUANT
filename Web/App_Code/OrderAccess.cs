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
/// Summary description for OrderAccess
/// </summary>
public class OrderAccess
{
    public static string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["Quantum_Connection"].ConnectionString;

    public struct HAWBInfo
    {
        public string RefNo;
        public string MAWBNo;
        public string HAWBNo;
    }

    public static string GetRefNumber()
    {
      //  DbCommand cmd = DataAccess.CreateCommand();
      //  cmd.CommandText = "MAWB_Imp_GetRefNumber";

        SqlConnection conn = new SqlConnection(connStr);
        string query = "SELECT TOP 1 RefNo FROM MAWB_Imp ORDER BY MAWB_ImpID DESC;";
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);

        string RefNo = cmd.ExecuteScalar().ToString();

        if (RefNo.Trim() != "")
            return RefNo;
        return "0";
    }

    //public static HAWBInfo GetHAWBInfo()
    //{
    //    SqlConnection conn = new SqlConnection(connStr);
    //    string query = "SELECT TOP 1 RefNo FROM MAWB_Imp ORDER BY MAWB_ImpID DESC;";
    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand(query, conn);

    //}
    



    public static bool MAWB_Imp_Create ( string RefNo, string MAWB_No, string SubBL_No, string BL_Vendor, string Agent, string AgentRef_No, 
       string Carrier, string Manifest_No, string Flight_No, string FltFlag, int CountryID,  
       string DeptPortInit,  string DeptPortName, string DeptPortETD, string FirstPortInit, string FirstPortName, string FirstPortETA, 
       string DestPortInit, string DestPortName, string DestPortETA,  string LastPortInit, string LastPortName, string LastPortETA,  string FreightLoct,
	   string StorageStart, string GO_Date,  int PKG_Quant, double GrossKgs, double ChargeKgs, bool PayMethod, bool Closed, string ClosedBy,  string CloseDate  )
    {
        DbCommand cmd = DataAccess.CreateCommand();
        cmd.CommandText = "MAWB_Imp_Create";

        DbParameter param;

        if (RefNo.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@RefNo";
            param.Value = RefNo;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( MAWB_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@MAWB_No";
            param.Value = MAWB_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (SubBL_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@SubBL_No";
            param.Value = SubBL_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (BL_Vendor.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@BL_Vendor";
            param.Value = BL_Vendor;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( Agent.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Agent";
            param.Value = Agent;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( AgentRef_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AgentRef_No";
            param.Value = AgentRef_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( Carrier.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Carrier";
            param.Value = Carrier;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( Manifest_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Manifest_No";
            param.Value = Manifest_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( Flight_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Flight_No";
            param.Value = Flight_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( FltFlag.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FltFlag";
            param.Value = FltFlag;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (CountryID > 0)
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CountryID";
            param.Value = CountryID;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( DeptPortInit.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DeptPortInit";
            param.Value = DeptPortInit;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( DeptPortName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DeptPortName";
            param.Value =  DeptPortName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( DeptPortETD.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DeptPortETD";
            param.Value = DeptPortETD;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        } 

        if ( FirstPortInit.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FirstPortInit";
            param.Value = FirstPortInit;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        } 
        if (FirstPortName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FirstPortName";
            param.Value = FirstPortName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        } 
        if ( FirstPortETA.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FirstPortETA";
            param.Value = FirstPortETA;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }


        if ( DestPortInit.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DestPortInit";
            param.Value = DestPortInit;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( DestPortName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DestPortName";
            param.Value = DestPortName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( DestPortETA.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DestPortETA";
            param.Value = DestPortETA;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        } 
        if ( LastPortInit.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@LastPortInit";
            param.Value = LastPortInit;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( LastPortName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@LastPortName";
            param.Value = LastPortName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( LastPortETA.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@LastPortETA";
            param.Value = LastPortETA;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }

        if ( FreightLoct.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FreightLoct";
            param.Value = FreightLoct;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        } 
        if ( StorageStart.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@StorageStart";
            param.Value = StorageStart;
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        } 
        if ( GO_Date.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@GO_Date";
            param.Value = GO_Date;
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        }

        if (PKG_Quant > 0)
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@PKG_Quant";
            param.Value = PKG_Quant;
            param.DbType = DbType.Int32;
            cmd.Parameters.Add(param);
        }

        if (GrossKgs > 0)
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@GrossKgs";
            param.Value = GrossKgs;
            param.DbType = DbType.Double;
            cmd.Parameters.Add(param);
        }
        if (ChargeKgs > 0 )
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ChargeKgs";
            param.Value = ChargeKgs;
            param.DbType = DbType.Double;
            cmd.Parameters.Add(param);
        } 

            param = cmd.CreateParameter();
            param.ParameterName = "@PayMethod";
            param.Value = PayMethod;
            param.DbType = DbType.Boolean;
            cmd.Parameters.Add(param);

            param = cmd.CreateParameter();
            param.ParameterName = "@Closed";
            param.Value = Closed;
            param.DbType = DbType.Boolean;
            cmd.Parameters.Add(param);

        if (ClosedBy.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ClosedBy";
            param.Value = ClosedBy;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (CloseDate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CloseDate";
            param.Value = CloseDate;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }


        int result = -1;
        try { result = DataAccess.ExecuteNonQuery(cmd); }
        catch { }//error pop from DataAccess  

        return (result != -1);
    }

   //------------------------------------------------------

   public static bool HAWB_Imp_Create( int MAWB_ImpID, string HAWB_No, string Agent, string AgentRef_No, string Customer, string CustomerRef, string CustomBroker, 
                        string Shipper, string Consignee, string NotifyParty, string FinalDest, string FinalETA, string ForeignDest, string FinalWareHouse, string StorageDate, string GO_Date, string Commodity,
                        int PKG_Quant, double GrossKgs, double ChargeKgs, string AgentRate, string AgentAmount, string CustomerRate, string CustomerAmount, 
                        string WH_Arrive, string DOC_PickUp, string DOC_PickUpName, string CargoRelease, string CargoReleaseName, bool PayMethod, int LoadMethod, 
                        int UserID, string Salesman, bool Closed, string ClosedBy, string PostDate)
    {
        DbCommand cmd = DataAccess.CreateCommand();
        cmd.CommandText = "HAWB_Imp_Create";

        DbParameter param;

        if (MAWB_ImpID > 0)
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@MAWB_ImpID";
            param.Value = MAWB_ImpID;
            param.DbType = DbType.Int32;
            cmd.Parameters.Add(param);
        }
        if (HAWB_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@HAWB_No";
            param.Value = HAWB_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (Agent.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Agent";
            param.Value = Agent;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (AgentRef_No.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AgentRef_No";
            param.Value = AgentRef_No;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (Customer.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Customer";
            param.Value = Customer;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (CustomerRef.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CustomerRef";
            param.Value = CustomerRef;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if (CustomBroker.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CustomBroker";
            param.Value = CustomBroker;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( Shipper.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Shipper";
            param.Value = Shipper;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
               if (Consignee.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Consignee";
            param.Value = Consignee;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }        
       if ( NotifyParty.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@NotifiyParty";
            param.Value = NotifyParty;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }        
       if ( FinalDest.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FinalDest";
            param.Value = FinalDest;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }        
       if (FinalETA.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FinalETA";
            param.Value = FinalETA ;    
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        }        
       if ( ForeignDest.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ForeignDest";
            param.Value = ForeignDest;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }        
       if ( FinalWareHouse.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@FinalWareHouse";
            param.Value = FinalWareHouse;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
                
       if ( StorageDate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@StorageDate";
            param.Value = StorageDate;
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        }        
       if ( GO_Date.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@GO_Date";
            param.Value = GO_Date;
            param.DbType = DbType.Date;
            cmd.Parameters.Add(param);
        }        
       if ( Commodity.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Commodity";
            param.Value = Commodity;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }        
       if ( PKG_Quant > 0 )
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@PKG_Quant";
            param.Value = PKG_Quant;
            param.DbType = DbType.Int32;
            cmd.Parameters.Add(param);
        }


       if (GrossKgs > 0)
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@GrossKgs";
            param.Value = GrossKgs;
            param.DbType = DbType.Double;
            cmd.Parameters.Add(param);
        }

       if (ChargeKgs > 0 )
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ChargeKgs";
            param.Value = ChargeKgs;
            param.DbType = DbType.Double;
            cmd.Parameters.Add(param);
        }
             
        if ( AgentRate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AgentRate";
            param.Value = AgentRate;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( AgentAmount.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@AgentAmount";
            param.Value = AgentAmount;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( CustomerRate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CustomerRate";
            param.Value = CustomerRate;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( CustomerAmount.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CustomerAmount";
            param.Value = CustomerAmount;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        if ( WH_Arrive.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@WH_Arrive";
            param.Value =  WH_Arrive;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }
        if ( DOC_PickUp.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DOC_PickUp";
            param.Value =  DOC_PickUp;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }
        if ( DOC_PickUpName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@DOC_PickUpName";
            param.Value =  DOC_PickUpName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( CargoRelease.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CargoRelease";
            param.Value =  CargoRelease;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }
       if ( CargoReleaseName.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@CargoReleaseName";
            param.Value =  CargoReleaseName;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

        param = cmd.CreateParameter();
        param.ParameterName = "@PayMethod";
        param.Value = PayMethod;
        param.DbType = DbType.Boolean;
        cmd.Parameters.Add(param);

        if (LoadMethod > 0 )
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@LoadMethod";
            param.Value = LoadMethod;
            param.DbType = DbType.Int32;
            cmd.Parameters.Add(param);
        }
      
        if ( UserID > 0 )
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@UserID";
            param.Value = UserID;
            param.DbType = DbType.Int32;
            cmd.Parameters.Add(param);
        }
        if ( Salesman.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@Salesman";
            param.Value = Salesman;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }

       param = cmd.CreateParameter();
       param.ParameterName = "@Closed";
       param.Value = Closed;
       param.DbType = DbType.Boolean;
       cmd.Parameters.Add(param);

        if ( ClosedBy.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@ClosedBy";
            param.Value =  ClosedBy;
            param.DbType = DbType.String;
            cmd.Parameters.Add(param);
        }
        if ( PostDate.Trim() != "")
        {
            param = cmd.CreateParameter();
            param.ParameterName = "@PostDate";
            param.Value = PostDate;
            param.DbType = DbType.DateTime;
            cmd.Parameters.Add(param);
        }

        int result = -1;
        try { result = DataAccess.ExecuteNonQuery(cmd); }
        catch { }//error pop from DataAccess  

        return (result != -1);
    }



   public static DataTable GetAll_MAWB_Imp()
   {
       DbCommand cmd = DataAccess.CreateCommand();
       cmd.CommandText = "GetAll_MAWB_Imp";
       DataTable table = DataAccess.ExecuteSelectCommand(cmd);
       return table;

   }

   public static DataTable GetAll_HAWB_Imp()
   {
       DbCommand cmd = DataAccess.CreateCommand();
       cmd.CommandText = "GetAll_HAWB_Imp";
       DataTable table = DataAccess.ExecuteSelectCommand(cmd);
       return table;

   }

	public OrderAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
