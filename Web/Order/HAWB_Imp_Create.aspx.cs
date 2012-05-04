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

public partial class Order_HAWB_Imp_Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtRefNo.Text = OrderAccess.GetRefNumber();
        }
    
    }
    protected void btnHAWB_Imp_Click(object sender, EventArgs e)
    {
        int MAWB_ImpID  = 1; // Int32.Parse(lblMAWB_ImpID.Text);
        string HAWB_No  = txtHAWB_No.Text;
        string Agent  = txtAgent.Text;
        string AgentRef_No  = txtAgentRef_No.Text;
        string Customer  = txtCustomer.Text;
        string CustomerRef  = txtCustomerRef.Text;
        string CustomBroker  = txtCustomBroker.Text;
        string Shipper = txtShipper.Text;
        string Consignee = txtConsignee.Text;
        string NotifyParty = txtNotifyParty.Text;
        string FinalDest = txtFinalDest.Text;
        string FinalETA = txtFinalETA.Text;
        string ForeignDest = txtForeignDest.Text;
        string FinalWareHouse = txtFinalWareHouse.Text;
        string StorageDate = txtStorageDate.Text;
        string GO_Date = txtGO_Date.Text;
        string Commodity = txtCommodity.Text;
        int PKG_Quant    = Int32.Parse( txtPKG_Quant.Text);
        double GrossKgs  = Double.Parse(  txtGrossKgs.Text );
        double ChargeKgs = Double.Parse(txtChargeKgs.Text);
        string AgentRate = txtAgentRate.Text;
        string AgentAmount = txtAgentAmount.Text;
        string CustomerRate = txtCustomerRate.Text;
        string CustomerAmount = txtCustomerAmount.Text;
        string WH_Arrive = txtWH_Arrive.Text;
        string DOC_PickUp = txtDOC_PickUp.Text;
        string DOC_PickUpName = txtDOC_PickUpName.Text;
        string CargoRelease = txtCargoRelease.Text;
        string CargoReleaseName = txtCargoReleaseName.Text;
        bool PayMethod = true;    // change to from dropdown
        int LoadMethod = Int32.Parse(drpLoadMethod.SelectedValue);
        int UserID = 1;          // change to lblUserID
        string Salesman = txtSalesman.Text;
        bool Closed = true;
        string ClosedBy = txtClosedBy.Text;
        string PostDate = txtPostDate.Text;

        bool flag = false;

        flag = OrderAccess.HAWB_Imp_Create( MAWB_ImpID, HAWB_No, Agent, AgentRef_No, Customer, CustomerRef, CustomBroker,
                               Shipper, Consignee, NotifyParty, FinalDest, FinalETA, ForeignDest, FinalWareHouse, StorageDate, GO_Date, Commodity,
                               PKG_Quant, GrossKgs, ChargeKgs, AgentRate, AgentAmount, CustomerRate, CustomerAmount,
                               WH_Arrive, DOC_PickUp, DOC_PickUpName, CargoRelease, CargoReleaseName, PayMethod, LoadMethod,
                               UserID, Salesman, Closed, ClosedBy, PostDate);

        lblStatus.Text = flag ? "HAWB IMPORT  CREATED" : "ERROR ! FAILED TO CREATE HAWB IMPORT";
    }

    protected void GetRefNo()
    {
        txtRefNo.Text = OrderAccess.GetRefNumber();
        
    }
}
