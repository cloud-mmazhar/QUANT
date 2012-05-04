<%@ Page Language="C#" MasterPageFile="~/Order/OrderMaster.master" AutoEventWireup="true" CodeFile="HAWB_Imp_Create.aspx.cs" Inherits="Order_HAWB_Imp_Create" Title="Untitled Page" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    HAWB IMPORT 
    <br /><br />
    Reference No. :
    <asp:TextBox ID="txtRefNo" runat="server"></asp:TextBox>
    <asp:Button ID="btnRefNoPop" runat="server" Text="Get Data" Width="60px" Height="20px"/>
    <br /><br />
    MAWB No. : 
    <asp:TextBox ID="txtMAWB_No" runat="server"></asp:TextBox>
    <asp:Button  ID="btnMAWBPop" runat="server" Text="Get Data" Width="60px" Height="20px" />
    <asp:Label ID="lblMAWB_ImpID" runat="server" Visible="false" ></asp:Label>
    <br />
    New HAWB No. :
    <asp:TextBox ID="txtHAWB_No" runat="server"></asp:TextBox>
    <br />
    Sub B/L No. : 
    <asp:TextBox ID="txtSubBL_No" runat="server"></asp:TextBox>
    B/L Vendor.  : 
    <asp:TextBox ID="txtBL_Vendor" runat="server"></asp:TextBox>
    <br /><br />
    
    Agent : 
    <asp:TextBox ID="txtAgent" runat="server"></asp:TextBox>
    Agent Ref. No. : 
    <asp:TextBox ID="txtAgentRef_No" runat="server"></asp:TextBox>
    Carrier : <asp:TextBox ID="txtCarrier" runat="server"></asp:TextBox>
    <br />
    Customer :
    <asp:TextBox ID="txtCustomer" runat="server"></asp:TextBox>
    Customer Ref. No. :
    <asp:TextBox ID="txtCustomerRef" runat="server"></asp:TextBox>
    <br /><br />
    Customer Broker :
    <asp:TextBox ID="txtCustomBroker" runat="server"></asp:TextBox>
    Shipper : 
    <asp:TextBox ID="txtShipper" runat="server"></asp:TextBox>
    <br />
    Consignee :
    <asp:TextBox ID="txtConsignee" runat="server"></asp:TextBox>
    NotifyParty :
    <asp:TextBox ID="txtNotifyParty" runat="server"></asp:TextBox>
    <br /><br />
    Final Destination : 
    <asp:TextBox ID="txtFinalDest" runat="server"></asp:TextBox>
    ETA : 
    <asp:TextBox ID="txtFinalETA" runat="server"></asp:TextBox>
    <br />
    Foreign Destination : 
    <asp:TextBox ID="txtForeignDest" runat="server"></asp:TextBox>
    Final Warehouse :
    <asp:TextBox ID="txtFinalWareHouse" runat="server"></asp:TextBox>
    <br /><br />
    Storage Start Date : 
    <asp:TextBox ID="txtStorageDate" runat="server"></asp:TextBox>
    G.O Date : 
    <asp:TextBox ID="txtGO_Date" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtCommodity" runat="server"></asp:TextBox>
    <br /><br />
    Package Quantity : 
    <asp:TextBox ID="txtPKG_Quant" runat="server" Text="0"></asp:TextBox>    <br />
    Gross KGS / LBS : 
    <asp:TextBox ID="txtGrossKgs" runat="server" Text="0"></asp:TextBox>
    <asp:TextBox ID="txtGrossLbs" runat="server"></asp:TextBox>  <br />
    Chargeable KGS / LBS : 
    <asp:TextBox ID="txtChargeKgs" runat="server" Text="0"></asp:TextBox>
    <asp:TextBox ID="txtChargeLbs" runat="server"></asp:TextBox>    
    <br />
    Agent Rate : 
    <asp:TextBox ID="txtAgentRate" runat="server"></asp:TextBox>
    Agent Amount :
    <asp:TextBox ID="txtAgentAmount" runat="server"></asp:TextBox>
    <br />
    Customer Rate :
    <asp:TextBox ID="txtCustomerRate" runat="server"></asp:TextBox>
    Customer Amount :
    <asp:TextBox ID="txtCustomerAmount" runat="server"></asp:TextBox>
    <br /><br /><br />
    WH Arrived ON : 
    <asp:TextBox ID="txtWH_Arrive" runat="server"></asp:TextBox>
    DOC Pickup On :
    <asp:TextBox ID="txtDOC_PickUp" runat="server"></asp:TextBox>
    DOC Pickuped By :
    <asp:TextBox ID="txtDOC_PickUpName" runat="server"></asp:TextBox>
    <br />
    Cargo Released On : 
    <asp:TextBox ID="txtCargoRelease" runat="server"></asp:TextBox>
    Cargo Released To : 
    <asp:TextBox ID="txtCargoReleaseName" runat="server"></asp:TextBox>
    <br />
    Pay Method : 
    <asp:DropDownList ID="drpPayMethod" runat="server">
        <asp:ListItem Text="Prepaid" Value="1"></asp:ListItem>
        <asp:ListItem Text="Collect" Value="2"></asp:ListItem> 
    </asp:DropDownList>
    Load Method : 
    <asp:DropDownList ID="drpLoadMethod" runat="server">
        <asp:ListItem Text="Co-Load" Value="1"></asp:ListItem>
        <asp:ListItem Text="Nomi"    Value="2"></asp:ListItem> 
        <asp:ListItem Text="Free"    Value="3"></asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    Post Date : 
    <asp:TextBox ID="txtPostDate" runat="server"></asp:TextBox>
    <br />
    Prepared By :
    <asp:TextBox ID="txtUserID" runat="server" ></asp:TextBox>
    Salesman :
    <asp:TextBox ID="txtSalesman" runat="server"></asp:TextBox>
    <br />
    Closed :
    <asp:DropDownList ID="drpClosed" runat="server">
        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
        <asp:ListItem Text="NO"  Value="2"></asp:ListItem> 
    </asp:DropDownList>
    <br />  
    Closed By : 
    <asp:TextBox ID="txtClosedBy" runat="server"></asp:TextBox>
    Closed Date :
    <asp:TextBox ID="txtClosedDate" runat="server" ></asp:TextBox>
    <br /><br />
    <asp:Button ID="btnHAWB_Imp" runat="server" Text="Create HAWB IMP" 
        onclick="btnHAWB_Imp_Click" />
    <br />
    <asp:Label ID="lblStatus" runat="server" ></asp:Label>


</asp:Content>

