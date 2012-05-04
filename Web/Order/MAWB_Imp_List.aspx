<%@ Page Language="C#" MasterPageFile="~/Order/OrderMaster.master" AutoEventWireup="true" CodeFile="MAWB_Imp_List.aspx.cs" Inherits="Order_MAWB_Imp_List" Title="MAWB IMPORT" EnableEventValidation="false" %>

<%@ OutputCache Duration="40" VaryByParam="None" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css/panel.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css/pager.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css/grid.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css/filter.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css/body.css" />

</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="pagetitle" ><span id="pagetitle">MAWB IMPORT</span></div>   
     
    <div class="head1">
        <b style="font-family:Courier; color:Blue">CURRENT STATUS - </b>&nbsp&nbsp
        <b> <asp:Label ID="lblStatus" runat="server" /> </b> 
    </div>

    <div class="body1">
             <div id="demo"> 
                <asp:UpdatePanel ID="updPanel" runat="server">
                    <ContentTemplate>            
                        <div id="dlg" class="panel" style="width:1000px">
                            <div class="header" style="cursor:default">
                                <div class="outer">
                                    <div class="inner">
                                        <div class="content">
                                            <h2>MAWB IMPORT LIST</h2>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="body">
                                <div class="outer">
                                    <div class="inner">
                                        <div class="content">
                                            <asp:ListView ID="lvMAWB" runat="server" onprerender="lvMAWB_PreRender">
                                                <LayoutTemplate>
                                                    <table id="customers" runat="server" class="grid" cellspacing="0" border="0">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>MAWB No.</th>
                                                            <th>Ref No.</th>
                                                            <th>Agent Name</th>
                                                            <th>Agent Ref. No.</th>
                                                            <th>Departure</th>
                                                            <th>Destination</th>
                                                            <th>Carrier</th>
                                                            <th>Flight No.</th>
                                                            <th>Package Quant.</th>
                                                            <th>Gross Kgs</th>
                                                            <th>Charge Kgs</th>
                                                            <th>Pay Method</th>
                                                            
                                                            <th>Closed</th>
                                                            <%--<th>Closed By</th>--%>
                                                            <th>Post Date</th>
                                                            <th>Close Date</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server" />
                                                        <tr class="pager" >
                                                            <td colspan="17">
                                                                <div class="container">
                                                                    <asp:DataPager ID="pager" PagedControlID="lvMAWB" runat="server" PageSize="20">
                                                                        <Fields>
                                                                           <%-- <asp:NextPreviousPagerField 
                                                                                ButtonCssClass = "command"
                                                                                FirstPageImageUrl = "~/CSS/Product_List/img/first.gif" 
                                                                                PreviousPageImageUrl = "~/CSS/Product_List/img/prev.gif"  
                                                                                ShowFirstPageButton="true" ShowPreviousPageButton="true" 
                                                                                ShowLastPageButton="false" ShowNextPageButton="false" ButtonType="Image" 
                                                                            />       RenderDisabledButtonsAsLabels="true"  FirstPageText="«" PreviousPageText="‹"     --%>
                                                                            <asp:TemplatePagerField OnPagerCommand="PagerCommand" ><%--  OnPagerCommand="PagerCommand"--%>
                                                                                <PagerTemplate>
                                                                                    <div class="command">
                                                                                      
                                                                                        <asp:ImageButton ID="btnFirst" runat="server" CommandName="First" ImageUrl="~/CSS/Order/Order_List/img/first.gif" AlternateText="First Page" ToolTip="First Page" />
                                                                                        <asp:ImageButton ID="btnPrevious" runat="server" CommandName="Previous" ImageUrl="~/CSS/Order/Order_List/img/prev.gif" AlternateText="Previous Page" ToolTip="Previous Page" />    
                                                                                    </div>
                                                                                    <div class="command">
                                                                                        <asp:TextBox  ID="txtSlider" runat="server"
                                                                                                 Text= '<%#  Container.TotalRowCount > 0 
                                                                                                             ? Math.Ceiling(((double)(Container.StartRowIndex + Container.MaximumRows) / Container.MaximumRows)) 
                                                                                                             : 0  %>' 
                                                                                            AutoPostBack="true"  OnTextChanged="CurrentPageChanged"
                                                                                         /><%-- style="visibility:hidden" --%>
                                                                                        <act:SliderExtender 
                                                                                            ID="slider" BehaviorID="slider" runat="server" TargetControlID="txtSlider" Orientation="Horizontal"
                                                                                            BoundControlID="txtSliderValue"
                                                                                             Minimum="1"
                                                                                            Maximum='<%# Math.Ceiling((double)Container.TotalRowCount / Container.MaximumRows) %>'
                                                                                            TooltipText='<%# "Page {0} of " + Math.Ceiling ((double)Container.TotalRowCount / Container.MaximumRows).ToString() + " (" + Container.TotalRowCount + " items)" %>'                                                                                        
                                                                                         />  
                                                                                    </div>
                                                                                    <div class="command">
                                                                                        
                                                                                        <asp:ImageButton ID="btnNext" runat="server" CommandName="Next" ImageUrl="~/CSS/Order/Order_List/img/next.gif" AlternateText="Next Page" ToolTip="Next Page" />
                                                                                        <asp:ImageButton ID="btnLast" runat="server" CommandName="Last" ImageUrl="~/CSS/Order/Order_List/img/last.gif" AlternateText="Last Page" ToolTip="Last Page" />                                               
                                                                                        
                                                                                    </div>
                                                                                    
                                                                                    <asp:TextBox ID="txtSliderValue" runat="server"  Width="30px" />
                                                                                    <div class="info">
                                                                                        Page 
                                                                                        <b>
                                                                                            <%# Container.TotalRowCount > 0 ? Math.Ceiling(((double)(Container.StartRowIndex + Container.MaximumRows) / Container.MaximumRows)) : 0 %>
                                                                                        </b>
                                                                                        of
                                                                                        <b>
                                                                                            <%# Math.Ceiling((double)Container.TotalRowCount / Container.MaximumRows)%>
                                                                                        </b>
                                                                                        (<%# Container.TotalRowCount %> items)
                                                                                    </div>                                            
                                                                                </PagerTemplate>
                                                                            </asp:TemplatePagerField>
                                                                          <%--   <asp:NextPreviousPagerField 
                                                                               ButtonCssClass="command"  
                                                                              
                                                                                 NextPageImageUrl="~/CSS/Product_List/img/next.gif" LastPageImageUrl="~/CSS/Product_List/img/last.gif"
                                                                               
                                                                                ShowFirstPageButton="false" ShowPreviousPageButton="false" 
                                                                                ShowLastPageButton="true" ShowNextPageButton="true" ButtonType="Image"
                                                                            />  RenderDisabledButtonsAsLabels="true"  LastPageText="»" NextPageText="›" --%>
                                                                        </Fields>
                                                                    </asp:DataPager>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <tr id="row" runat="server" class='<%# Container.DataItemIndex % 2 == 0 ? "row" : "altrow" %>'>
                                                       <td class="first"><%# Eval("MAWB_ImpID") %> </td>
                                                       
                                                       <td> 
                                                       <a href='MAWB_Imp_Detail.aspx?MAWB_ImpID=<%# Eval("MAWB_ImpID") %>' > <%# Eval("MAWB_No") %> </a> 
                                                       </td>
                                                       <td><%# Eval("RefNo") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("Agent") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("AgentRef_No") ?? "&nbsp;"    %></td>
                                                       <td><%# Eval("DeptPortName")   ?? "&nbsp;" %></td>
                                                       <td><%# Eval("DestPortName") ?? "&nbsp;"   %></td>
                                                       <td><%# Eval("Carrier") ?? "&nbsp;"   %></td>
                                                       <td><%# Eval("Flight_No") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("PKG_Quant") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("GrossKgs") ?? "&nbsp;"  %></td>
                                                       <td><%# Eval("ChargeKgs") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("PayMethod") ?? "&nbsp;" %></td>
                                                       
                                                       <td><%# Eval("Closed")    ?? "&nbsp;" %></td>
                                                     <%--  <td><%# Eval("ClosedBy")  ?? "&nbsp;" %></td>--%>
                                                       <td><%# Eval("PostDate")  ?? "&nbsp"  %></td>
                                                       <td><%# Eval("CloseDate") ?? "&nbsp;" %></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:ListView>                     
                                        </div>
                                    </div>
                                </div>
                            </div>                
                            <div class="footer">
                                <div class="outer">
                                    <div class="inner">
                                        <div class="content"></div>
                                    </div>
                                </div>
                            </div>      
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>              
            </div>
       </div>

</asp:Content>

        <%--<asp:Repeater ID="repeaterMAWB" runat="server">
       <HeaderTemplate>
          <div>
             <tr>
                <th>MAWB No.</th>
                <th>Ref No.</th>
                <th>Agent Name</th>
                <th>Agent Ref. No.</th>
                <th>Departure</th>
                <th>Destination</th>
                <th>Carrier</th>
                <th>Flight No.</th>
                <th>Package Quant.</th>
                <th>Gross Kgs</th>
                <th>Charge Kgs</th>
                <th>Pay Method</th>
                <th>Closed</th>
                <th>Closed By</th>
                <th>Close Date</th>
             </tr>
          </div> 
       </HeaderTemplate>
       
       <ItemTemplate>
            <tr>
               <td class="first"> 
               <a href='MAWB_Imp_Detail.aspx?MAWB_ImpID=<%# Eval("MAWB_ImpID") %>' > <%# Eval("MAWB_No") %> </a> 
               </td>
               <td><%# Eval("RefNo") ?? "&nbsp;" %></td>
               <td><%# Eval("Agent") ?? "&nbsp;" %></td>
               <td><%# Eval("AgentRef_No") ?? "&nbsp;" %></td>
               <td><%# Eval("Departure")   ?? "&nbsp;" %></td>
               <td><%# Eval("Destination") ?? "&nbsp;" %></td>
               <td><%# Eval("Carrier") ?? "&nbsp;" %></td>
               <td><%# Eval("Flight_No") ?? "&nbsp;" %></td>
               <td><%# Eval("PKG_Quant") ?? "&nbsp;" %></td>
               <td><%# Eval("GrossKgs") ?? "&nbsp;" %></td>
               <td><%# Eval("ChargeKgs") ?? "&nbsp;" %></td>
               <td><%# Eval("PayMethod") ?? "&nbsp;" %></td>
               <td><%# Eval("Closed") ?? "&nbsp;" %></td>
               <td><%# Eval("CloseDate") ?? "&nbsp;" %></td>
            </tr>
    
       </ItemTemplate>
    
    </asp:Repeater>--%>