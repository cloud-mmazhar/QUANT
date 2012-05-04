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

public partial class User_Controls_HAWB_Imp : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            BindData();
        }
            
    }

    protected void BindData()
    {
        int orderID;
        string orderIDStr = Request.QueryString["HAWB_ImpID"];

        if (orderIDStr == null || orderIDStr.Length == 0) // if no GET data 
            orderID = GetSONo();
        else
            orderID = Int32.Parse(orderIDStr);



        string connSTR = Configuration.DbConnectionString;
        string providerName = Configuration.DbProviderName;

            // OrderAccess.connStr;

        //string query = "SELECT * FROM HAWB_Imp WHERE MAWB_ImpID = @HAWB_ImpID";
        //SqlDataReader reader = null;
        //SqlConnection conn = null;


        SqlDataReader reader = null;
        SqlConnection conn = null;
        

        try
        {
            conn = new SqlConnection(connSTR);
            conn.Open();

           // SqlCommand comm = new SqlCommand(query, conn);
            //SqlParameter param = new SqlParameter();
            //param.ParameterName = "@HAWB_ImpID";
            //param.Value = orderID;
            //comm.Parameters.Add(param);

            // or use shorter version
            //comm.Parameters.Add("@MAWB_ImpID", SqlDbType.Int);
            //comm.Parameters["@MAWB_ImpID"].Value = orderID;

            SqlCommand comm = new SqlCommand("HAWB_GetDetail", conn);

            comm.CommandType = CommandType.StoredProcedure;
            //comm.CommandText = "HAWB_GetDetail";
            
            SqlParameter param = new SqlParameter();
            param.ParameterName = "@HAWB_ImpID";
            param.Value = orderID;
            param.DbType = DbType.Int32;
            comm.Parameters.Add(param);

            reader = comm.ExecuteReader();

            reader.Read();
           // while (reader.Read())
           // {

                if (!reader.IsDBNull(0))
                    txtHAWB_No.Text = reader["HAWB_No"].ToString();
                if (!reader.IsDBNull(1))
                    txtAgent.Text = reader.GetString(1);
                if (!reader.IsDBNull(2))
                    txtAgentRef_No.Text = reader.GetString(2);

                if (!reader.IsDBNull(3))
                    txtCustomer.Text = reader.GetString(3);

                if (!reader.IsDBNull(4))
                    txtCustomerRef.Text = reader.GetString(4);

                if (!reader.IsDBNull(5))
                    txtCustomBroker.Text = reader.GetString(5);
                if (!reader.IsDBNull(6))
                    txtNotifyParty.Text = reader.GetString(6);
                if (!reader.IsDBNull(7))
                    txtFinalDest.Text = reader.GetString(7);
                if (!reader.IsDBNull(8))
                    txtFinalETA.Text = reader["FinalETA"].ToString();
                if (!reader.IsDBNull(9))
                    txtForeignDest.Text = reader.GetString(9);
                if (!reader.IsDBNull(10))
                    txtFinalWareHouse.Text = reader.GetString(10);

                if (!reader.IsDBNull(11))
                    txtStorageDate.Text = reader["StorageDate"].ToString();
                if (!reader.IsDBNull(12))
                    txtGO_Date.Text = reader["GO_Date"].ToString();

                if (!reader.IsDBNull(13))
                    txtPKG_Quant.Text = reader["PKG_Quant"].ToString();
                //reader["DeptPortETD"].ToString();
                if (!reader.IsDBNull(14))
                    txtGrossKgs.Text = reader["GrossKgs"].ToString();
                if (!reader.IsDBNull(15))
                    txtChargeKgs.Text = reader["ChargeKgs"].ToString();
                if (!reader.IsDBNull(16))
                    txtAgentRate.Text = reader.GetString(18);
                if (!reader.IsDBNull(17))
                    txtAgentAmount.Text = reader.GetString(17);
                if (!reader.IsDBNull(18))
                    txtCustomerRate.Text = reader["CustomerRate"].ToString();
                if (!reader.IsDBNull(19))
                    txtCustomerAmount.Text = reader["CustomerAmount"].ToString();

                if (!reader.IsDBNull(20))
                    txtWH_Arrive.Text = reader["WH_Arrive"].ToString();
                if (!reader.IsDBNull(21))
                    txtDOC_PickUp.Text = reader["DOC_PickUp"].ToString();
                if (!reader.IsDBNull(22))
                    txtDOC_PickUpName.Text = reader.GetString(20);

                if (!reader.IsDBNull(23))
                    txtCargoRelease.Text = reader["CargoRelease"].ToString();
                if (!reader.IsDBNull(24))
                    txtCargoReleaseName.Text = reader.GetString(22);
                if (!reader.IsDBNull(25))
                    drpPayMethod.SelectedValue = reader["PayMethod"].ToString();
                if (!reader.IsDBNull(26))
                    drpLoadMethod.SelectedValue = reader["LoadMethod"].ToString();

                if (!reader.IsDBNull(27))
                    txtPostDate.Text = reader["PostDate"].ToString();
                if (!reader.IsDBNull(28))
                    txtUserID.Text = reader["UserID"].ToString();

                if (!reader.IsDBNull(29))
                    txtSalesman.Text = reader["Salesman"].ToString();
                if (!reader.IsDBNull(30))
                    drpClosed.SelectedValue = reader["Closed"].ToString();
                if (!reader.IsDBNull(31))
                    txtClosedBy.Text = reader["ClosedBy"].ToString();
                if (!reader.IsDBNull(32))
                    txtCloseDate.Text = reader["CloseDate"].ToString();


                if (!reader.IsDBNull(33))
                    txtMAWB_No.Text = reader["MAWB_No"].ToString();

                if (!reader.IsDBNull(34))
                    txtRefNo.Text = reader["RefNo"].ToString();
                if (!reader.IsDBNull(35))
                    txtSubBL_No.Text = reader["SubBL_No"].ToString();
                if (!reader.IsDBNull(36))
                    txtBL_Vendor.Text = reader["BL_Vendor"].ToString();
                if (!reader.IsDBNull(37))
                    txtDeptPortName.Text = reader["DeptPortName"].ToString();
                if (!reader.IsDBNull(38))
                    txtDestPortName.Text = reader["DestPortname"].ToString();
                if (!reader.IsDBNull(39))
                    txtCarrier.Text = reader["Carrier"].ToString();
                if (!reader.IsDBNull(40))
                    txtFlight_No.Text = reader["Flight_No"].ToString();
           // }
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
       
        string query = "SELECT MAX(HAWB_ImpID) FROM HAWB_Imp";
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);

        object value = cmd.ExecuteScalar();
        int result = (int)value;
        if (value == DBNull.Value) return 1;

        return (result);
    }

}
