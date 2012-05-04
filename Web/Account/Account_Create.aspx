<%@ Page Language="C#" MasterPageFile="~/Account/AccountMaster.master" AutoEventWireup="true" CodeFile="Account_Create.aspx.cs" Inherits="Account_Account_Create" Title="Untitled Page" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        Company Name : 
        <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
        <br /><br />
        Account Type :
        <asp:DropDownList ID="drpAccountType" runat="server" >
            <asp:ListItem Text="Customer" Value="1"></asp:ListItem>
            <asp:ListItem Text="Vendor"   Value="2"></asp:ListItem>    
            <asp:ListItem Text="Agent"    Value="3"></asp:ListItem>
        </asp:DropDownList>
        Credit Hold : 
        <asp:DropDownList ID="drpCreditHold" runat="server">
            <asp:ListItem Text="true"  Value="1"></asp:ListItem>
            <asp:ListItem Text="false"   Value="2"></asp:ListItem> 
        </asp:DropDownList>
        Active : 
        <asp:DropDownList ID="drpActive"    runat="server">
            <asp:ListItem Text="true" Value="1"></asp:ListItem>
            <asp:ListItem Text="false"  Value="2"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        URL 1 : 
        <asp:TextBox ID="txtURL1" runat="server"></asp:TextBox>
        URL 2 : 
        <asp:TextBox ID="txtURL2" runat="server"></asp:TextBox>
        <br /><br />
        
        ADDRESS <br />
        Address Type : 
        <asp:DropDownList ID="drpAddressType" runat="server">
          <asp:ListItem Text="Office"  Value="1"></asp:ListItem>
          <asp:ListItem Text="Home"    Value="2"></asp:ListItem>
          <asp:ListItem Text ="ETC"    Value="3"></asp:ListItem>         
        </asp:DropDownList>
        <br />
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
        <br /><br />

       CONTACT<br />
       ContactType:
       <asp:DropDownList ID="drpContactType" runat="server">
          <asp:ListItem Text="Office"  Value="1"></asp:ListItem>
          <asp:ListItem Text="Home"    Value="2"></asp:ListItem>
          <asp:ListItem Text ="ETC"    Value="3"></asp:ListItem>         
       </asp:DropDownList>
       <br />
       Contact Name : 
       <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
        Phone : 
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        Fax : 
        <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
        Email : 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
       
       <br /><br /><br />
       
       <asp:Label ID="lblStatus" runat="server"></asp:Label>
       <br />
        <asp:Button ID="btnCreate" runat="server" Text="Create Account" onclick="btnCreate_Click" 
            />
        
        <a href="Account_Create.aspx">Refresh</a>


</asp:Content>

