<%@ Page Language="C#" MasterPageFile="~/Finance/FinanceMaster.master" AutoEventWireup="true" CodeFile="Invoice_Main.aspx.cs" Inherits="Finance_Invoice_Main" Title="Untitled Page" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="../CSS/Finance/Black1/core.css" rel="Stylesheet" />

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        Ref. No : <asp:TextBox ID="txtRefNo" runat="server" ></asp:TextBox>
        Master B/L No. : <asp:TextBox ID="txtMBL_No" runat="server" ></asp:TextBox>
        House  B/L No. : <asp:TextBox ID="txtHBL_No" runat="server" ></asp:TextBox>
        <br /><br />
        Agent : <asp:TextBox ID="txtAgent" runat="server" ></asp:TextBox>        
        Customer : <asp:TextBox ID="txtCustomer" runat="server"></asp:TextBox>
        ETD : <asp:TextBox ID="txtETD" runat="server"></asp:TextBox>
        ETA : <asp:TextBox ID="txtETA" runat="server"></asp:TextBox>
    </div>
    <br /><br /><br />

    <asp:Repeater ID="repeaterInvoice_AR" runat="server">
        <HeaderTemplate>
         <%-- <div class="datatable">
             <table ID="products" runat="server" class="grid" cellpadding="0" cellspacing="0" enableviewstate="false">
                <tr class="head">--%>
      <div id="demo-grid" class="bold-grid">
        
             <table class="datatable" cellpadding="0" cellspacing="0">
                 <tr class="header">                
                    <th>Post Date</th>
                    <th>Due Date</th>
                    <th>Bill To</th>
                    <th>Invoice No.</th>
                    <th>Total</th>
                    <th>Balance</th>
                    <th>Status</th>
                </tr>
<%--             </table> </div>--%>
       </HeaderTemplate>
       
       <ItemTemplate>
            <tr >  <%--class='<%# Container.DataItemIndex % 2 == 0 ? "row" : "altrow" %>'--%>
               <%--
               <td class="first"><a href='Product.aspx?ProductID=<%# Eval("ProductID") %>' > <%# Eval("ProductID") %> </a> </td>
               --%>
               <td><%# Eval("Date_Post") ??"&nbsp;"  %></td>
               <td><%# Eval("Date_Due")  ?? "&nbsp;" %></td>
               <td><%# Eval("BillTo")    ?? "&nbsp;" %></td>
               <td><%# Eval("InvNo")     ?? "&nbsp;" %></td>
               <td><%# Eval("Total")    ?? "&nbsp;" %></td>
               <td><%# Eval("Balance")   ?? "&nbsp;" %></td>
               <td><%# Eval("Status")    ?? "&nbsp;" %></td>
                                 <%--<td><%# Eval("Email")       ?? "&nbsp;" %></td>
                                 <td class="command"><asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" /></td> --%>
             </tr>
       </ItemTemplate>

        <FooterTemplate>
               </table>
           </div>
        </FooterTemplate>
    </asp:Repeater>
    
    <br /><br />
    
    <asp:Repeater ID="repeaterInvoice_AP" runat="server">
        <HeaderTemplate>
         <%-- <div class="datatable">
             <table ID="products" runat="server" class="grid" cellpadding="0" cellspacing="0" enableviewstate="false">
                <tr class="head">--%>
      <div id="demo-grid" class="bold-grid">
        
             <table class="datatable" cellpadding="0" cellspacing="0">
                 <tr class="header">                
                    <th>Post Date</th>
                    <th>Due Date</th>
                    <th>Vendor</th>
                    <th>Invoice No.</th>
                    <th>Amount</th>
                    <th>Balance</th>
                    <th>Status</th>
                </tr>
<%--             </table> </div>--%>
       </HeaderTemplate>
       
       <ItemTemplate>
            <tr >  <%--class='<%# Container.DataItemIndex % 2 == 0 ? "row" : "altrow" %>'--%>
               <%--
               <td class="first"><a href='Product.aspx?ProductID=<%# Eval("ProductID") %>' > <%# Eval("ProductID") %> </a> </td>
               --%>
               <td><%# Eval("Date_Post") ?? "&nbsp;" %></td>
               <td><%# Eval("Date_Due")  ?? "&nbsp;" %></td>
               <td><%# Eval("Vendor")    ?? "&nbsp;" %></td>
               <td><%# Eval("InvNo")     ?? "&nbsp;" %></td>
               <td><%# Eval("Total")     ?? "&nbsp;" %></td>
               <td><%# Eval("Balance")   ?? "&nbsp;" %></td>
               <td><%# Eval("Status")    ?? "&nbsp;" %></td>
                                 <%--<td><%# Eval("Email")       ?? "&nbsp;" %></td>
                                 <td class="command"><asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" /></td> --%>
             </tr>
       </ItemTemplate>

        <FooterTemplate>
               </table>
           </div>
        </FooterTemplate>
    </asp:Repeater>
    
    <br /><br />
    
    <asp:Repeater ID="repeaterInvoice_CRDR" runat="server">
        <HeaderTemplate>
         <%-- <div class="datatable">
             <table ID="products" runat="server" class="grid" cellpadding="0" cellspacing="0" enableviewstate="false">
                <tr class="head">--%>
      <div id="demo-grid" class="bold-grid">
        
             <table class="datatable" cellpadding="0" cellspacing="0">
                 <tr class="header">                
                    <th>Post Date</th>
                    <th>Due Date</th>
                    <th>Agent</th>
                    <th>CR/DR No.</th>
                    <th>Total</th>
                    <th>Balance</th>
                    <th>Status</th>
                </tr>
<%--             </table> </div>--%>
       </HeaderTemplate>
       
       <ItemTemplate>
            <tr >  <%--class='<%# Container.DataItemIndex % 2 == 0 ? "row" : "altrow" %>'--%>
               <%--
               <td class="first"><a href='Product.aspx?ProductID=<%# Eval("ProductID") %>' > <%# Eval("ProductID") %> </a> </td>
               --%>
               <td><%# Eval("Date_Post") ?? "&nbsp;" %></td>
               <td><%# Eval("Date_Due")  ?? "&nbsp;" %></td>
               <td><%# Eval("Agent")    ?? "&nbsp;" %></td>
               <td><%# Eval("CRDR_No")     ?? "&nbsp;" %></td>
               <td><%# Eval("Total")    ?? "&nbsp;" %></td>
               <td><%# Eval("Balance")   ?? "&nbsp;" %></td>
               <td><%# Eval("Status")    ?? "&nbsp;" %></td>
                                 <%--<td><%# Eval("Email")       ?? "&nbsp;" %></td>
                                 <td class="command"><asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" /></td> --%>
             </tr>
       </ItemTemplate>

        <FooterTemplate>
               </table>
           </div>
        </FooterTemplate>
    </asp:Repeater>
    
</asp:Content>

