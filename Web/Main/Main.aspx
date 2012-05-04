<%@ Page Language="C#" MasterPageFile="~/Main/MainMaster.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main_Main" Title="Untitled Page" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">

    <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css1/panel.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css2/panel.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css3/panel.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css2/grid.css" />
 
  <%--  <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css2/filter.css" />--%>
  <%--  <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css2/pager.css" />--%>
    <link type="text/css" rel="Stylesheet" href="../CSS/Main/Main_List/css2/body.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Main/MainContent.css" />

    

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="bodyContent">
    <div class="RowContent1">
      <div class="InnerContent1">
          <div class="InnerContent2">
             <b>RECENT IMPORT B/L </b>  
             <div class="MAWB">
                <div id="dlg" class="panel" >
                    <div class="header" style="cursor:default">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                    <h2>IMP MASTER AIR</h2>
                                    <div class="tag_table">
                                        <a href="../Order/MAWB_Imp_List.aspx"> View All </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                <asp:Repeater ID="repeaterMAWB_IMP" runat="server">
                                    <HeaderTemplate>
                                      <table id="customers" class="grid" cellspacing="0" border="0">
                                            <tr>            
                                                <th>Ref No.</th>
                                                <th>Vendor</th>
                                                <th>Post</th>
                                                <th>Close</th>
                                          </tr>
                                   </HeaderTemplate>                   
                                   <ItemTemplate>      
                                        <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                 
                                           <td>
                                               <a href='../Order/MAWB_Imp_Detail.aspx?MAWB_ImpID=<%# Eval("MAWB_ImpID")%>'> <%# Eval("RefNo")%></a>
                                           </td>
                                           <td><%# Eval("BL_Vendor")    ?? "&nbsp;" %></td>
                                           <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                                           <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                                       </tr>                                                    
                                   </ItemTemplate>   
                                    <FooterTemplate>
                                      </table>                               
                                    </FooterTemplate>
                                </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <div class="footer">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable"></div>
                            </div>
                        </div>
                    </div>      
                </div>
             </div>
    <%--     ------------------------------------------------------ --%>

       <div class="HAWB">
       <div id="Div1" class="panel" >
            <div class="header" style="cursor:default">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                            <h2>IMP HOUSE AIR</h2>
                            <div class="tag_table"><a href="../Order/HAWB_Imp_List.aspx">View All</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                        <asp:Repeater ID="repeaterHAWB_IMP" runat="server">
                            <HeaderTemplate>
                              <table id="customers" class="grid" cellspacing="0" border="0">
                                    <tr>            
                                      <%--  <th>Ref No.</th>--%>
                                        <th>Customer</th>
                                        <th>Agent</th>
                                        <th>Post</th>
                                        <th>Close</th>
                                  </tr>
                           </HeaderTemplate>                   
                           <ItemTemplate>
                                <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                     
                                   <%--<td><%# Eval("RefNo")  ?? "&nbsp;" %></td>--%>
                                  <%-- <td><%# Eval("Customer")    ?? "&nbsp;" %></td>--%>
                                   <td>
                                       <a href='../Order/HAWB_Imp_Detail.aspx?HAWB_ImpID=<%# Eval("HAWB_ImpID")%>'> <%# Eval("Customer")%></a>
                                   </td>
                                   <td><%# Eval("Agent")  ?? "&nbsp"  %></td>
                                   <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                                   <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                               </tr>                                                    
                           </ItemTemplate>   
                            <FooterTemplate>
                              </table>                               
                            </FooterTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>  
            <div class="footer">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable"></div>
                    </div>
                </div>
            </div>      
        </div>
        </div>   
        
    <%--     ------------------------------------------------------ --%>    
         <div class="MOBL">
           <div id="Div2" class="panel" >
            <div class="header" style="cursor:default">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                            <h2>IMP MASTER OCEAN</h2>
                            <div class="tag_table"><a href="../Order/MAWB_Imp_List.aspx">View All</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                        <asp:Repeater ID="repeaterMOBL_IMP" runat="server">
                            <HeaderTemplate>
                              <table id="customers" class="grid" cellspacing="0" border="0">
                                    <tr>            
                                        <th>Ref No.</th>
                                        <th>Vendor</th>
                                        <th>Post</th>
                                        <th>Close</th>
                                  </tr>
                           </HeaderTemplate>                   
                           <ItemTemplate>
                                <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>   
                                   <td>
                                       <a href='../Order/MAWB_Imp_Detail.aspx?MAWB_ImpID=<%# Eval("MAWB_ImpID")%>'> <%# Eval("RefNo")%></a>
                                   </td>
                                   <td><%# Eval("BL_Vendor")    ?? "&nbsp;" %></td>
                                   <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                                   <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                               </tr>                                                    
                           </ItemTemplate>   
                            <FooterTemplate>
                              </table>                               
                            </FooterTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>  
            <div class="footer">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable"></div>
                    </div>
                </div>
            </div>      
        </div>
        
        </div>
     <%--     ------------------------------------------------------ --%>   
        <div class="HOBL">
           <div id="Div3" class="panel" >
            <div class="header" style="cursor:default">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                            <h2>IMP HOUSE OCEAN</h2>
                            <div class="tag_table"><a href="../Order/HAWB_Imp_List.aspx">View All</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable">
                        <asp:Repeater ID="repeaterHOBL_IMP" runat="server">
                            <HeaderTemplate>
                              <table id="customers" class="grid" cellspacing="0" border="0">
                                    <tr>            
                                        <th>Customer</th>
                                        <th>Agent</th>
                                        <th>Post</th>
                                        <th>Close</th>
                                  </tr>
                           </HeaderTemplate>                   
                           <ItemTemplate>
                                <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                     
                                  <%-- <td><%# Eval("Customer")    ?? "&nbsp;" %></td>--%>
                                   <td>
                                       <a href='../Order/HAWB_Imp_Detail.aspx?HAWB_ImpID=<%# Eval("HAWB_ImpID")%>'> <%# Eval("Customer")%></a>
                                   </td>
                                   <td><%# Eval("Agent")  ?? "&nbsp"  %></td>
                                   <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                                   <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                               </tr>                                                    
                           </ItemTemplate>   
                            <FooterTemplate>
                              </table>                               
                            </FooterTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>  
            <div class="footer">
                <div class="outer">
                    <div class="inner">
                        <div class="contentTable"></div>
                    </div>
                </div>
            </div>      
        </div>
        </div>
    </div>     

</div>

</div>

<div id="gap" ></div>
<%--    *****************************   --%>
<div class="RowContent2">
        <b>RECENT EXPORT B/L</b>
        <div class="MAWB">
            <div id="Div4" class="panel_css1" >
                <div class="header" style="cursor:default">
                    <div class="outer">
                        <div class="inner">
                            <div class="contentTable">
                                <h2>EXP MASTER AIR</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="body">
                    <div class="outer">
                        <div class="inner">
                            <div class="contentTable">
                            <asp:Repeater ID="repeaterMAWB_EXP" runat="server">
                                <HeaderTemplate>
                                  <table id="customers" class="grid" cellspacing="0" border="0">
                                        <tr>            
                                            <th>Ref No.</th>
                                            <th>Vendor</th>
                                            <th>Post</th>
                                            <th>Close</th>
                                      </tr>
                               </HeaderTemplate>                   
                               <ItemTemplate>
                                    <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                     
                                       <td><%# Eval("RefNo")  ?? "&nbsp;" %></td>
                                       <td><%# Eval("BL_Vendor")    ?? "&nbsp;" %></td>
                                       <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                                       <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                                   </tr>                                                    
                               </ItemTemplate>   
                                <FooterTemplate>
                                  </table>                               
                                </FooterTemplate>
                            </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>  
                <div class="footer">
                    <div class="outer">
                        <div class="inner">
                            <div class="contentTable"></div>
                        </div>
                    </div>
                </div>      
            </div>
         </div>
<%-- ------------------------------------------------------  --%>

   <div class="HAWB">
   <div id="Div5" class="panel_css1" >
        <div class="header" style="cursor:default">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                        <h2>EXP HOUSE AIR</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                    <asp:Repeater ID="repeaterHAWB_EXP" runat="server">
                        <HeaderTemplate>
                          <table id="customers" class="grid" cellspacing="0" border="0">
                                <tr>            
                                    <th>Ref No.</th>
                                    <th>Vendor</th>
                                    <th>Post</th>
                                    <th>Close</th>
                              </tr>
                       </HeaderTemplate>                   
                       <ItemTemplate>
                            <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                      
                               <td><%# Eval("Customer")    ?? "&nbsp;" %></td>
                               <td><%# Eval("Agent")  ?? "&nbsp"  %></td>
                               <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                               <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                           </tr>                                                    
                       </ItemTemplate>   
                        <FooterTemplate>
                          </table>                               
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>  
        <div class="footer">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable"></div>
                </div>
            </div>
        </div>      
    </div>
    </div>   
    
<%--     ------------------------------------------------------ --%>    
     <div class="MOBL">
       <div id="Div6" class="panel_css1">
        <div class="header" style="cursor:default">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                        <h2>EXP MASTER OCEAN</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                    <asp:Repeater ID="repeaterMOBL_EXP" runat="server">
                        <HeaderTemplate>
                          <table id="customers" class="grid" cellspacing="0" border="0">
                                <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>            
                                    <th>Ref No.</th>
                                    <th>Vendor</th>
                                    <th>Post</th>
                                    <th>Close</th>
                              </tr>
                       </HeaderTemplate>                   
                       <ItemTemplate>
                            <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                     
                               <td><%# Eval("RefNo")  ?? "&nbsp;" %></td>
                               <td><%# Eval("BL_Vendor")    ?? "&nbsp;" %></td>
                               <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                               <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                           </tr>                                                    
                       </ItemTemplate>   
                        <FooterTemplate>
                          </table>                               
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>  
        <div class="footer">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable"></div>
                </div>
            </div>
        </div>      
    </div>
    
    </div>
<%--     ------------------------------------------------------ --%>   
    <div class="HOBL">
       <div id="Div7" class="panel_css1" >
        <div class="header" style="cursor:default">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                        <h2>EXP HOUSE OCEAN</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable">
                    <asp:Repeater ID="repeaterHOBL_EXP" runat="server">
                        <HeaderTemplate>
                          <table id="customers" class="grid" cellspacing="0" border="0">
                                <tr>            
                                    <th>Ref No.</th>
                                    <th>Vendor</th>
                                    <th>Post</th>
                                    <th>Close</th>
                              </tr>
                       </HeaderTemplate>                   
                       <ItemTemplate>
                            <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                     
                               <td><%# Eval("Customer")    ?? "&nbsp;" %></td>
                               <td><%# Eval("Agent")  ?? "&nbsp"  %></td>
                               <td><%# String.Format("{0:d}", Eval("PostDate")  )   ?? "&nbsp;" %></td>
                               <td><%# String.Format("{0:d}", Eval("CloseDate")) ?? "&nbsp;"%></td>
                           </tr>                                                    
                       </ItemTemplate>   
                        <FooterTemplate>
                          </table>                               
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>  
        <div class="footer">
            <div class="outer">
                <div class="inner">
                    <div class="contentTable"></div>
                </div>
            </div>
        </div>      
    </div>
    </div>
    </div>
 
 
<%--            ***********************   --%>
  <div id="gap"></div>
 
 <div class="RowContent3">
      <div class="InnerContent1">
          <div class="InnerContent2">
          

            <div class="invoiceAR">
                <b>RECENT AR-INVOICE TRANSACTION </b> 
                <div id="Div8" class="panelinv" >
                    <div class="header" style="cursor:default">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                    <h2>INVOICE AR</h2>
                                    <div class="tag_table">
                                        <a href="../Finance/InvoiceAR_List.aspx?IE=0&AO=0&MH=1"> View All </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                <asp:Repeater ID="repeaterInvAR" runat="server">
                                    <HeaderTemplate>
                                      <table id="customers" class="grid" cellspacing="0" border="0">
                                            <tr>            
                                                <th>Invoice No.</th>
                                                <th>B/L ID</th>
                                                <th>IMP/EXP</th>
                                                <th>M/H</th>
                                                <th>Air/Ocean</th>
                                                <th>Post</th>
                                                <th>Total</th>
                                                <th>Balance</th>
                                                <%--<th>Status</th>--%>
                                          </tr>
                                   </HeaderTemplate>                   
                                   <ItemTemplate>      
                                        <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                 
                                           <td>
                                               <a href='../Finance/InvAR_Detail.aspx?InvoiceID=<%# Eval("InvoiceID")%>'> <%# Eval("InvNo")%></a>
                                           </td>
                                      
                                           <td><%# Eval("BL_ID") ?? "&nbsp" %></td>
                                           <td><%# myFormat1(Eval("IMP_EXP") ) ?? "&nbsp;" %></td>
                                           <td><%# myFormat2(Eval("MA_HO")  ) ?? "&nbsp;" %></td>
                                           <td><%# myFormat3(Eval("Air_Ocean") )   ?? "&nbsp;"    %></td>
                                           <td><%# String.Format("{0:d}", Eval("Date_Post")  )   ?? "&nbsp;" %></td>
                                           <td><%# Eval("Total") ?? "&nbsp;"%></td>
                                           <td><%# Eval("Balance") ?? "&nbsp;" %></td>
                                       </tr>                                                    
                                   </ItemTemplate>   
                                    <FooterTemplate>
                                      </table>                               
                                    </FooterTemplate>
                                </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <div class="footer">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable"></div>
                            </div>
                        </div>
                    </div>      
                </div>
             </div>

     
 
            <div class="invoiceAP">
                <b>RECENT AP-INVOICE TRANSACTION </b>
                <div id="Div9" class="panelinv" >
                    <div class="header" style="cursor:default">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                    <h2>IMP MASTER AIR</h2>
                                    <div class="tag_table">
                                        <a href="../Finance/InvoiceAP_List.aspx?IE=0&AO=0&MH=1"> View All </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="body">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable">
                                <asp:Repeater ID="repeaterInvAP" runat="server">
                                    <HeaderTemplate>
                                      <table id="customers" class="grid" cellspacing="0" border="0">
                                            <tr>            
                                                <th>Invoice No.</th>
                                                <th>B/L ID</th>
                                                <th>IMP/EXP</th>
                                                <th>M/H</th>
                                                <th>Air/Ocean</th>
                                                <th>Post</th>
                                                <th>Total</th>
                                                <th>Balance</th>
                                                <%--<th>Status</th>--%>
                                          </tr>
                                   </HeaderTemplate>                   
                                   <ItemTemplate>      
                                        <tr id="row" runat="server" class='<%# Container.ItemIndex % 2 == 0 ? "row" : "altrow" %>'>                                 
                                           <td>
                                               <a href='../Finance/InvAR_Detail.aspx?InvoiceID=<%# Eval("InvoiceID")%>'> <%# Eval("InvNo")%></a>
                                           </td>
                                           <td><%# Eval("BL_ID")    ?? "&nbsp;" %></td>
                                           <td><%# myFormat1(Eval("IMP_EXP") ) ?? "&nbsp;" %></td>
                                           <td><%# myFormat2(Eval("MA_HO")  ) ?? "&nbsp;" %></td>
                                           <td><%# myFormat3(Eval("Air_Ocean") )   ?? "&nbsp;"    %></td>
                                           <td><%# String.Format("{0:d}", Eval("Date_Post")  )   ?? "&nbsp;" %></td>
                                           <td><%# Eval("Total") ?? "&nbsp;"%></td>
                                           <td><%# Eval("Balance") ?? "&nbsp;" %></td>
                                       </tr>                                                    
                                   </ItemTemplate>     
                                    <FooterTemplate>
                                      </table>                               
                                    </FooterTemplate>
                                </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <div class="footer">
                        <div class="outer">
                            <div class="inner">
                                <div class="contentTable"></div>
                            </div>
                        </div>
                    </div>      
                </div>
             </div>
       
         </div>
     </div>
       
     
     
     
  </div>
        
    <%--     ------------------------------------------------------ --%>
    
    
    
    
    
</div>




</asp:Content>

