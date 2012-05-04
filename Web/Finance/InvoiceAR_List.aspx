<%@ Page Language="C#" MasterPageFile="~/Order/OrderMaster.master" AutoEventWireup="true" CodeFile="InvoiceAR_List.aspx.cs" Inherits="Finance_InvoiceAR_List" Title="Untitled Page" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css2/panel.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css2/pager.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css2/grid.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css2/filter.css" />
    <link type="text/css" rel="Stylesheet" href="../CSS/Order/Order_List/css2/body.css" />


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="pagetitle" ><span id="pagetitle">AR Invoice Report</span></div>   
     
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
                                            <h2> ACCOUNT PAYABLE INVOICE LIST</h2>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="body">
                                <div class="outer">
                                    <div class="inner">
                                        <div class="content">
                                            <asp:ListView ID="lvInvoiceAR" runat="server" onprerender="lvInvoiceAR_PreRender">
                                                <LayoutTemplate>
                                                    <table id="customers" runat="server" class="grid" cellspacing="0" border="0">
                                                        <tr> 
                                                            <th>Invoice No.</th> 
                                                            <th>Date Post</th>
                                                            <th>Date Due</th>  
                                                            <th>B/L No.</th>
                                                            <th>IMP/EXP</th>
                                                            <th>Master/House</th>
                                                            <th>Air/Ocean</th>
                                                            <th>Company</th>
                                                            <th>Bill To</th>
                                                            <th>Ship To</th>
                                                            <th>Total</th>
                                                            <th>Balance</th>
                                                            <th>Status</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server" />
                                                        <tr class="pager" >
                                                            <td colspan="17">
                                                <div class="container">
                                                    <asp:DataPager ID="pager" PagedControlID="lvInvoiceAR" runat="server" PageSize="20">
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
                                                       
                                                       <td>
                                                       <a href='InvoiceAR_Detail.aspx?InvoiceID=<%# Eval("InvoiceID") %>' > <%# Eval("InvNo") %> </a> 
                                                       </td>
                                                       <td><%# Eval("Date_Post") ?? "&nbsp;" %></td>
                                                       <td><%# Eval("Date_Due") ?? "&nbsp;" %></td>
                                                       
                                                       <td><%# Eval("BL_ID")   ?? "&nbsp;" %></td>
                                                       <td><%# myFormat1(Eval("IMP_EXP") ) ?? "&nbsp;" %></td>
                                                       <td><%# myFormat2(Eval("MA_HO")  ) ?? "&nbsp;" %></td>
                                                       <td><%# myFormat3(Eval("Air_Ocean") )   ?? "&nbsp;"    %></td>
                                                       
                                                       <td><%# Eval("Company")   ?? "&nbsp;" %></td>
                                                       <td><%# Eval("BillTo")   ?? "&nbsp;"   %></td>
                                                       <td><%# Eval("ShipTo")   ?? "&nbsp;"   %></td>
                                                       
                                                       <td><%# Eval("Total")  ?? "&nbsp;"  %></td>
                                                       <td><%# Eval("Balance") ?? "&nbsp;" %></td>
                                                       <td><%# myFormat4(Eval("Status") ) ?? "&nbsp;" %></td>
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

