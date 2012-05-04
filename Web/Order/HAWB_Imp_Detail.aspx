<%@ Page Language="C#" MasterPageFile="~/Order/OrderMaster.master" AutoEventWireup="true" CodeFile="HAWB_Imp_Detail.aspx.cs" Inherits="Order_HAWB_Imp_Detail" Title="Untitled Page" %>


<%@ Register src="../User_Controls/HAWB_Imp.ascx" tagname="HAWB_Imp" tagprefix="uc1" %>


<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_Create/css/body.css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:HAWB_Imp ID="HAWB_Imp1" runat="server" />
</asp:Content>

