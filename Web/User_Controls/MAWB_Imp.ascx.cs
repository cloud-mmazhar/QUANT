using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class User_Controls_MAWB : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            //    try to use one MAWB for Imp,Exp //
            
            //GetRefNo();
            BindData();

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

        int CountryID = Int32.Parse(drpCountryID.SelectedValue);
        string DeptPortInit = txtDeptPortInit.Text;
        string DeptPortName = txtDeptPortName.Text;
        string DeptPortETD = txtDeptPortETD.Text;

        string FirstPortInit = txtFirstPortInit.Text;
        string FirstPortName = txtFirstPortName.Text;
        string FirstPortETA = txtFirstPortETA.Text;

        string DestPortInit = txtDestPortInit.Text;
        string DestPortName = txtDestPortName.Text;
        string DestPortETA = txtDestPortETA.Text;

        string LastPortInit = txtLastPortInit.Text;
        string LastPortName = txtLastPortName.Text;
        string LastPortETA = txtLastPortETA.Text;

        string FreightLoct = txtFreightLoct.Text;
        string StorageStart = txtStorageStart.Text;
        string GO_Date = txtGO_Date.Text;
        int PKG_Quant = Int32.Parse(txtPKG_Quant.Text);
        double GrossKgs = Double.Parse(txtGrossKgs.Text);
        double ChargeKgs = Double.Parse(txtChargeKgs.Text);
        bool PayMethod = true;           // CHANGE TO SELECTED VALUE LATER !!!!!!
        bool Closed = true;
        string ClosedBy = txtClosedBy.Text;
        string CloseDate = txtCloseDate.Text;

        bool flag = false;

        flag = OrderAccess.MAWB_Imp_Create(RefNo, MAWB_No, SubBL_No, BL_Vendor,
                     Agent, AgentRef_No, Carrier, Manifest_No, Flight_No, FltFlag,
                     CountryID, DeptPortInit, DeptPortName, DeptPortETD, FirstPortInit, FirstPortName, FirstPortETA,
                     DestPortInit, DestPortName, DestPortETA, LastPortInit, LastPortName, LastPortETA, FreightLoct,
                     StorageStart, GO_Date, PKG_Quant, GrossKgs, ChargeKgs, PayMethod, Closed, ClosedBy, CloseDate);

        lblStatus.Text = flag ? "MAWB IMPORT  CREATED" : "ERROR ! FAILED TO CREATE MAWB IMPORT";

    }

    protected void GetRefNo()
    {
        DateTime date = System.DateTime.Now;
        string refNo = date.ToString("yy") + date.ToString("MM"); //System.DateTime.Now.Year.ToString(); 
        string currentRefNo = OrderAccess.GetRefNumber();
        string last3 = currentRefNo.Substring(currentRefNo.Length - 3);
        refNo = refNo + last3;

        int newRefNo = Int32.Parse(refNo);
        txtRefNo.Text = (newRefNo + 1).ToString();
        lblRefNo.Text = "Last Ref. No  : " + currentRefNo;    // "Last Ref. No. :  " + refNo;


    }


    protected void BindData()
    {
        int orderID;
        string orderIDStr = Request.QueryString["MAWB_ImpID"];

        if (orderIDStr == null || orderIDStr.Length == 0) // if no GET data 
            orderID = GetSONo();
        else
            orderID = Int32.Parse(orderIDStr);
        
        string connSTR = OrderAccess.connStr;

        string query = "SELECT * FROM MAWB_Imp WHERE MAWB_ImpID = @MAWB_ImpID";
        SqlDataReader reader = null;
        SqlConnection conn = null;
       

        try
        {
            conn = new SqlConnection(connSTR);
            
            SqlCommand comm = new SqlCommand(query, conn);
            
            SqlParameter param = new SqlParameter();
            param.ParameterName = "@MAWB_ImpID";
            param.Value = orderID;
            comm.Parameters.Add(param);

            // or use shorter version
            //comm.Parameters.Add("@MAWB_ImpID", SqlDbType.Int);
            //comm.Parameters["@MAWB_ImpID"].Value = orderID;
             
            conn.Open();
            
            reader = comm.ExecuteReader();

            reader.Read();
            // while (reader.Read())
            // {
            if (!reader.IsDBNull(1))
                txtRefNo.Text = reader.GetString(1);
            if (!reader.IsDBNull(2))
                txtMAWB_No.Text = reader.GetString(2);
            if (!reader.IsDBNull(3))
                txtSubBL_No.Text = reader.GetString(3);
            if (!reader.IsDBNull(4))
                txtBL_Vendor.Text = reader.GetString(4);

            if (!reader.IsDBNull(5))
                txtAgent.Text = reader.GetString(5);
            if (!reader.IsDBNull(6))
                txtAgentRef_No.Text = reader.GetString(6);
            if (!reader.IsDBNull(7))
                txtCarrier.Text = reader.GetString(7);
            if (!reader.IsDBNull(8))
                txtManifest_No.Text = reader.GetString(8);
            if (!reader.IsDBNull(9))
                txtFlight_No.Text = reader.GetString(9);
            if (!reader.IsDBNull(10))
                txtFltFlag.Text = reader.GetString(10);
            if (!reader.IsDBNull(11))
                drpCountryID.SelectedValue = reader.GetString(11);

            if (!reader.IsDBNull(12))
                txtDeptPortInit.Text = reader.GetString(12);
            if (!reader.IsDBNull(13))
                txtDeptPortName.Text = reader.GetString(13);
            if (!reader.IsDBNull(14))
                txtDeptPortETD.Text = reader["DeptPortETD"].ToString();

            if (!reader.IsDBNull(15))
                txtFirstPortInit.Text = reader.GetString(15);
            if (!reader.IsDBNull(16))
                txtFirstPortName.Text = reader.GetString(16);
            if (!reader.IsDBNull(17))
                txtFirstPortETA.Text = reader["FirstPortETA"].ToString();

            if (!reader.IsDBNull(18))
                txtDestPortInit.Text = reader.GetString(18);
            if (!reader.IsDBNull(19))
                txtDestPortName.Text = reader.GetString(19);
            if (!reader.IsDBNull(20))
                txtDestPortETA.Text = reader["DestPortETA"].ToString();

            if (!reader.IsDBNull(21))
                txtLastPortInit.Text = reader.GetString(21);
            if (!reader.IsDBNull(22))
                txtLastPortName.Text = reader.GetString(22);
            if (!reader.IsDBNull(23))
                txtLastPortETA.Text = reader["LastPortETA"].ToString();

            if (!reader.IsDBNull(24))
                txtFreightLoct.Text = reader.GetString(24);
            if (!reader.IsDBNull(25))
                txtStorageStart.Text = reader["StorageStart"].ToString();
            if (!reader.IsDBNull(26))
                txtGO_Date.Text = reader["GO_Date"].ToString();

            if (!reader.IsDBNull(27))
                txtPKG_Quant.Text = reader["PKG_Quant"].ToString();
            if (!reader.IsDBNull(28))
                txtGrossKgs.Text = reader["GrossKgs"].ToString();
            if (!reader.IsDBNull(29))
                txtChargeKgs.Text = reader["ChargeKgs"].ToString();


            // CHANGE TO SELECTED VALUE LATER !!!!!!
            if (!reader.IsDBNull(30))
                drpPayMethod.SelectedValue = "1";
            if (!reader.IsDBNull(31))
                drpClosed.SelectedValue = "2";
            if (!reader.IsDBNull(32))
                txtClosedBy.Text = reader.GetString(32);
            if (!reader.IsDBNull(33))
                txtCloseDate.Text = reader["CloseDate"].ToString();

            // ADD POSTED DATE !!!!!!!!!!!!!!

            //  }
        }
        //catch (Exception e)
        //{
        //    Response.Write(e.Message);
        //    Response.End();
        //}

        finally
        {
            if (reader != null) reader.Close();
            if (conn != null) conn.Close();
           // reader.Close();
           // conn.Close();
        }

    }

    protected int GetSONo()
    {
        string conStr = OrderAccess.connStr;
        SqlConnection conn = new SqlConnection(conStr);
        // string query = "SELECT COUNT(*) FROM SalesOrder";  /// Change to select last value in index 
        string query = "SELECT MAX(MAWB_ImpID) FROM MAWB_Imp";
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);

        object value = cmd.ExecuteScalar();
        int result = (int)value;
        if (value == DBNull.Value) return 1;

        return (result);
    }


}
