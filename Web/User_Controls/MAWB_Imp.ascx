<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MAWB_Imp.ascx.cs" Inherits="User_Controls_MAWB" %>
<%--<%@ OutputCache Duration="240" VaryByParam="None" %>--%>

<div class="body1">

   <h4>MAWB</h4> 
    <asp:Label ID="lblRefNo" runat="server" ></asp:Label>
    <br /><br />
    New Reference No. :
    <asp:TextBox ID="txtRefNo" runat="server" CssClass="textbox"></asp:TextBox>
    MAWB No. : 
    <asp:TextBox ID="txtMAWB_No" runat="server" CssClass="textbox"></asp:TextBox>
    Sub B/L No. : 
    <asp:TextBox ID="txtSubBL_No" runat="server" CssClass="textbox"></asp:TextBox>
    B/L Vendor.  : 
    <asp:TextBox ID="txtBL_Vendor" runat="server" CssClass="textbox"></asp:TextBox>
    <br /><br />
    Agent : <asp:TextBox ID="txtAgent" runat="server" CssClass="textbox" ></asp:TextBox>
    Agent Ref. No. :<asp:TextBox ID="txtAgentRef_No" runat="server" CssClass="textbox" ></asp:TextBox>
    Carrier : <asp:TextBox ID="txtCarrier" runat="server"  CssClass="textbox" ></asp:TextBox>
    Manifest No. : <asp:TextBox ID="txtManifest_No" runat="server" CssClass="textbox" ></asp:TextBox>
    <br />
    Flight No. : <asp:TextBox ID="txtFlight_No" runat="server" CssClass="textbox" ></asp:TextBox>
    Flt Flag : <asp:TextBox ID="txtFltFlag" runat="server" CssClass="textbox" ></asp:TextBox>
    Country : 
    <asp:DropDownList ID="drpCountryID" runat="server" CssClass="dropdown" >
       <asp:ListItem Text="Please Choose" Value="0"></asp:ListItem>
       <asp:ListItem Text="KOREA" Value="1" ></asp:ListItem>
       <asp:ListItem Text="U.S.A"  Value="2"></asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    Departure Airport : <asp:TextBox ID="txtDeptPortInit" runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:TextBox ID="txtDeptPortName" runat="server" CssClass="textbox" ></asp:TextBox>
    <br />
    Dept. ETD : <asp:TextBox ID="txtDeptPortETD" runat="server" CssClass="textbox" ></asp:TextBox>
    <br /><br />
    First Port of Entry : <asp:TextBox ID="txtFirstPortInit" runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:TextBox ID="txtFirstPortName" runat="server" CssClass="textbox" ></asp:TextBox>
    <br />
    ETA : <asp:TextBox ID="txtFirstPortETA" runat="server" CssClass="textbox" ></asp:TextBox>
    <br /><br />
    Destination Port : <asp:TextBox ID="txtDestPortInit" runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:TextBox ID="txtDestPortName" runat="server" CssClass="textbox" ></asp:TextBox>
    <br />
    Dest. ETA : <asp:TextBox ID="txtDestPortETA" runat="server" CssClass="textbox" ></asp:TextBox>
    <br /><br />
    Last Airport <asp:TextBox ID="txtLastPortInit" runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:TextBox ID="txtLastPortName" runat="server" CssClass="textbox" ></asp:TextBox>
    <br />
    Last ETA :<asp:TextBox ID="txtLastPortETA" runat="server" CssClass="textbox" ></asp:TextBox><br /><br />
    Freight Location : <asp:TextBox ID="txtFreightLoct" runat="server" CssClass="textbox" ></asp:TextBox>
    Storage Start Date : <asp:TextBox ID="txtStorageStart" runat="server" CssClass="textbox" ></asp:TextBox>
    G.O Date : <asp:TextBox ID="txtGO_Date" runat="server" CssClass="textbox" ></asp:TextBox>
    <br /><br />
    Package Quantity : <asp:TextBox ID="txtPKG_Quant" runat="server" CssClass="textbox"  Text="0"></asp:TextBox>    <br />
    Gross KGS / LBS : 
    <asp:TextBox ID="txtGrossKgs" runat="server" CssClass="textbox" Text="0"></asp:TextBox>
    <asp:TextBox ID="txtGrossLbs" runat="server" CssClass="textbox" ></asp:TextBox>  <br />
    Chargeable KGS / LBS : 
    <asp:TextBox ID="txtChargeKgs" runat="server" CssClass="textbox" Text="0"></asp:TextBox>
    <asp:TextBox ID="txtChargeLbs" runat="server"  CssClass="textbox" ></asp:TextBox>    <br />
    <br /><br /><br />
    Pay Method : 
    <asp:DropDownList ID="drpPayMethod" runat="server" CssClass="dropdown" >
        <asp:ListItem Text="Prepaid" Value="1"></asp:ListItem>
        <asp:ListItem Text="Collect" Value="2"></asp:ListItem> 
    </asp:DropDownList>
    Closed :
    <asp:DropDownList ID="drpClosed" runat="server" CssClass="dropdown" >
        <asp:ListItem Text="YES" Value="1"></asp:ListItem>
        <asp:ListItem Text="NO"  Value="2"></asp:ListItem> 
    </asp:DropDownList>
    <br />  
    Closed By : <asp:TextBox ID="txtClosedBy" runat="server" CssClass="textbox" ></asp:TextBox>
    Closed Date : <asp:TextBox ID="txtCloseDate" runat="server" CssClass="textbox" ></asp:TextBox>

    <br /><br />
    <asp:Button ID="btnMAWB_Imp" runat="server" Text="Create MAWB IMP" 
        onclick="btnMAWB_Imp_Click"  CssClass="button" />
    <br />
    <asp:Label ID="lblStatus" runat="server" ></asp:Label>
    
    
</div>