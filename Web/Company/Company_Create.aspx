<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Create.aspx.cs" Inherits="Company_Company_Create" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">

        Company Name : 
        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
        <br /><br />
        Address 1 : 
        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
        Address 2 : 
        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
        <br />
        City : 
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        State : 
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        Postal Code : 
        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
        <br /><br />
        Phone : 
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        Fax : 
        <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
        Email : 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br /><br />
        URL 1 : 
        <asp:TextBox ID="txtURL1" runat="server"></asp:TextBox>
        URL 2 : 
        <asp:TextBox ID="txtURL2" runat="server"></asp:TextBox>
        <br /><br />
        IATA : 
        <asp:TextBox ID="txtIATA" runat="server"></asp:TextBox>
        FMC No. : 
        <asp:TextBox ID="txtFMCNo" runat="server"></asp:TextBox>
        Issued Place : 
        <asp:TextBox ID="txtIssuePlace" runat="server"></asp:TextBox>
        <br /><br />
        Tax ID Type :
        <asp:DropDownList ID="drpTaxIDType" runat="server">
            <asp:ListItem Text="option 1" Value="1"></asp:ListItem>
            <asp:ListItem Text="option 2" Value="2"></asp:ListItem>
            <asp:ListItem Text="option 3" Value="3"></asp:ListItem>
        </asp:DropDownList>
        Tax ID No.  : 
        <asp:TextBox ID="txtTaxIDNo" runat="server"></asp:TextBox>
        TSA No. :
        <asp:TextBox ID="txtTSANo" runat="server"></asp:TextBox>
        TSA Exp Date : 
        <asp:TextBox ID="txtTSAExpDate" runat="server"></asp:TextBox>
       <br /><br />
        AES Contact : 
        <asp:TextBox ID="txtAESContact" runat="server"></asp:TextBox>
        AES City : 
        <asp:TextBox ID="txtAESCity" runat="server"></asp:TextBox>
        AES State : 
        <asp:TextBox ID="txtAESState" runat="server"></asp:TextBox>
        AES Postal Code : 
        <asp:TextBox ID="txtAESPostCode" runat="server"></asp:TextBox>
        <br />
        AES Country : 
        <asp:TextBox ID="txtAESCountry" runat="server"></asp:TextBox>
        AES E-Mail :
        <asp:TextBox ID="txtAESEmail" runat="server"></asp:TextBox>
        AES Party Type : 
        <asp:DropDownList ID="drpAESPartyType" runat="server">
            <asp:ListItem Text="FW" Value="1"></asp:ListItem>
            <asp:ListItem Text="ZZ" Value=2"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />
       
       <asp:Label ID="lblStatus" runat="server"></asp:Label>
       <br />
        <asp:Button ID="btnCreate" runat="server" Text="Create Company" 
            onclick="btnCreate_Click" />
        
        <a href="Company_Create.aspx">Refresh</a>
        
    </form>
</body>
</html>
