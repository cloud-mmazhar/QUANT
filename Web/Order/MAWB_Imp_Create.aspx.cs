using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Order_MAWB_Imp_Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetRefNo();
        }
    }

    protected void btnMAWB_Imp_Click(object sender, EventArgs e)
    {
        string RefNo = txtRefNo.Text;
        string MAWB_No = txtMAWB_No.Text;
        string SubBL_No = txtSubBL_No.Text;
        string BL_Vendor = txtBL_Vendor.Text;
        string Agent = txtAgent.Text;
        string AgentRef_No = txtAgentRef_No.Text;
        string Carrier = txtCarrier.Text;
        string Manifest_No = txtManifest_No.Text;
        string Flight_No = txtFlight_No.Text;
        string FltFlag = txtFltFlag.Text;

	    int CountryID = Int32.Parse( drpCountryID.SelectedValue );
        string DeptPortInit  = txtDeptPortInit.Text;
        string DeptPortName  = txtDeptPortName.Text;
        string DeptPortETD   = txtDeptPortETD.Text;
        
        string FirstPortInit = txtFirstPortInit.Text;
        string FirstPortName = txtFirstPortName.Text;
        string FirstPortETA  = txtFirstPortETA.Text;
                                     
        string DestPortInit  = txtDestPortInit.Text;
        string DestPortName  = txtDestPortName.Text;
        string DestPortETA   = txtDestPortETA.Text;
        
        string LastPortInit  = txtLastPortInit.Text;
        string LastPortName  = txtLastPortName.Text;
        string LastPortETA   = txtLastPortETA.Text;
        
        string FreightLoct   = txtFreightLoct.Text;
	    string StorageStart  = txtStorageStart.Text;
        string GO_Date  = txtGO_Date.Text;
        int PKG_Quant   = Int32.Parse( txtPKG_Quant.Text ); 
        double GrossKgs = Double.Parse( txtGrossKgs.Text);
        double ChargeKgs  = Double.Parse( txtChargeKgs.Text);
        bool PayMethod  = true;           // CHANGE TO SELECTED VALUE LATER !!!!!!
        bool Closed     = true;
        string ClosedBy = txtClosedBy.Text;
        string CloseDate  = txtCloseDate.Text;

        bool flag = false;

        flag = OrderAccess.MAWB_Imp_Create ( RefNo, MAWB_No, SubBL_No, BL_Vendor, 
                     Agent, AgentRef_No, Carrier, Manifest_No, Flight_No, FltFlag,
	                 CountryID, DeptPortInit,  DeptPortName,  DeptPortETD, FirstPortInit, FirstPortName,  FirstPortETA, 
                     DestPortInit, DestPortName, DestPortETA,  LastPortInit, LastPortName, LastPortETA, FreightLoct,
	                 StorageStart, GO_Date, PKG_Quant, GrossKgs, ChargeKgs, PayMethod, Closed, ClosedBy, CloseDate  );
        
        lblStatus.Text = flag ? "MAWB IMPORT  CREATED" : "ERROR ! FAILED TO CREATE MAWB IMPORT";
        if (flag == true) GetRefNo();
    
    }

    protected void GetRefNo()
    {
        DateTime date = System.DateTime.Now;
        string refNo = date.ToString("yy") + date.ToString("MM") ; //System.DateTime.Now.Year.ToString(); 
        string currentRefNo = OrderAccess.GetRefNumber();
        string last3 = currentRefNo.Substring( currentRefNo.Length - 3);   // error !!!!! what if value is less than 3 digits ????>

        if (last3 == "999") last3 = "000"; 
        refNo = refNo + last3;

        int newRefNo  = Int32.Parse(refNo);

        txtRefNo.Text = (newRefNo + 1).ToString();
        lblRefNo.Text = "Last Ref. No  : " + currentRefNo;    // "Last Ref. No. :  " + refNo;

        
    }
}
