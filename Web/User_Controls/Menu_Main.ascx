<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu_Main.ascx.cs" Inherits="User_Controls_Menu_Main" %>

<%@ OutputCache Duration="432000" VaryByParam="None" %>
 
  <link rel="stylesheet" href="../CSS/MenuMatic/css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />
  <link rel="stylesheet" href="../CSS/MenuMatic/css/style.css" type="text/css" media="all" charset="utf-8" />
    <%--     --%>
    <!-- Load the Mootools Framework -->
    <script  type="text/javascript" src="../CSS/MenuMatic/js/mootools-1.2.4-core.js" charset="utf-8" ></script>
     <%-- 
    <script  type="text/javascript" src="../CSS/MenuMatic/js/mootools-1.2.4-core-server.js" charset="utf-8" ></script> 
   --%>
    <!-- Load the MenuMatic Class -->
    <script  type="text/javascript" src="../CSS/MenuMatic/js/MenuMatic_0.68.3.js" charset="utf-8" ></script> 

    <!-- Create a MenuMatic Instance -->
	<script type="text/javascript" >
	    window.addEvent('domready', function() {
	        var myMenu = new MenuMatic();
	    });		
	</script>

    <div id="container_mainmenu">
    <!-- BEGIN Menu -->
        <div class="menu">
            <ul id="nav">
                 <li><a href="#">MAIN -N/A </a>
				        <ul>
					        <li><a href="#">MAIN PAGE</a></li>
					        <li><a href="#">SITE MAP</a></li>
				        </ul>
		         </li>
		        <li><a href="#">IMPORT</a>
			        <ul>
				        <li><a href="#">AIR</a>
					        <ul>
						        <li><a href="../Order/MAWB_Imp_Create.aspx">NEW MAWB IMPORT</a></li>
						        <li><a href="../Order/HAWB_Imp_Create.aspx">NEW HAWB IMPORT</a></li>
						        <li><a href="#">N/A NEW QUOTE </a></li>
					        </ul>
				        </li>
				        <li><a href="#">OCEAN -N/A </a>
					        <ul>
						        <li><a href="#"> NEW MOBL IMPORT</a></li>
						        <li><a href="#"> NEW HOBL IMPORT</a></li>
						        <li><a href="#"> NEW QUOTE </a></li>
					        </ul>
				        </li>
			        </ul>
	            </li>
	            <li><a href="#">EXPORT -N/A </a>
			        <ul>
				        <li><a href="#">AIR</a>
					        <ul>
						        <li><a href="#">NEW MAWB EXPORT</a></li>
						        <li><a href="#">NEW HAWB EXPORT</a></li>
						        <li><a href="#">NEW QUOTE </a></li>
					        </ul>
				        </li>
				        <li><a href="#">N/A OCEAN</a>
					        <ul>
						        <li><a href="#">NEW MOBL EXPORT</a></li>
						        <li><a href="#">NEW HOBL EXPORT</a></li>
						        <li><a href="#">NEW QUOTE </a></li>
					        </ul>
				        </li>
			        </ul>
		        </li>
		        <li><a href="#">VIEW / EDIT</a>
			        <ul>
				        <li><a href="#">MAWB IMPORT</a>
				            <ul>
				                <li><a href="../Order/MAWB_Imp_List.aspx">VIEW LIST</a></li>
				                <li><a href="../Order/MAWB_Imp_Detail.aspx">EDIT RECENT</a></li>
				                <li><a href="#">QUOTE </a></li>
				            </ul>
				        </li>    
				        <li><a href="#">HAWB IMPORT</a>
				           <ul>
				                <li><a href="../Order/HAWB_Imp_List.aspx">VIEW LIST</a></li>
				                <li><a href="../Order/HAWB_Imp_Detail.aspx">EDIT RECENT</a></li>
				                <li><a href="#">QUOTE </a></li>
				            </ul>
				        </li>    
				        <li><a href="#">MOBL IMPORT -N/A </a>
					        <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>    
				        <li><a href="#">HOBL IMPORT -N/A </a>
					         <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>   
				         
				        <li>&nbsp</li>
				        
	                    <li><a href="#">MAWB EXPORT -N/A </a>
	                        <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>    
				        <li><a href="#">HAWB EXPORT -N/A </a>
				            <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>    
			            <li><a href="#">MOBL EXPORT -N/A </a>
			                <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>
				        <li><a href="#">HOBL EXPORT -N/A </a>
				            <ul>
				                <li><a href="">VIEW LIST</a></li>
				                <li><a href="">EDIT RECENT</a></li>
				            </ul>
				        </li>
			        </ul>
	            </li>
	            <%--<li><a href="#">ACCOUNTING</a>
			        <ul>
				        <li><a href="#">IMPORT</a>
					        <ul>
						        <li><a href="#">AIR</a>
						            <ul>
						                <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=0&MH=0">MASTER</a></li>
						                <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=0&MH=1">HOUSE</a></li>
					                </ul>
			        	        </li>
						        <li><a href="#">OCEAN</a>
						            <ul>
						                <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=0">MASTER</a></li>
						                <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=1">HOUSE</a></li>
					                </ul>
			        	        </li>
					        </ul>
				        </li>
				        <li><a href="#">EXPORT</a>
				            <ul>
					            <li><a href="#">AIR</a>
					                <ul>
					                    <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=0">MASTER</a></li>
					                    <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=1">HOUSE</a></li>
				                    </ul>
			                    </li>
			                    <li><a href="#">OCEAN</a>
					                <ul>
					                    <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">MASTER</a></li>
					                    <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">HOUSE</a></li>
					                 </ul>
			                    </li>
			                </ul>
				        </li>
			        </ul>
		        </li>--%>
    			
	            <li><a href="#">ACCOUNTING</a>
	                <ul>
	                    <%--<li><a href="#">ACCOUNT PAYABLE</a>
			                <ul>--%>
				                <li><a href="#">AR IMPORT</a>
					                <ul>
						                <li><a href="#">AIR</a>
						                    <ul>
						                        <li><a href="../Finance/InvoiceAR_List.aspx?IE=0&AO=0&MH=1">HOUSE</a></li>
						                        <li><a href="../Finance/InvoiceAR_List.aspx?IE=0&AO=0&MH=0">MASTER</a></li>
						                       
					                        </ul>
			        	                </li>
						                <li><a href="#">OCEAN -N/A </a>
						                    <ul>
						                        <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=1">HOUSE</a></li>
						                        <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=0">MASTER</a></li>
						                        
					                        </ul>
			        	                </li>                                                       
					                </ul>
				                </li>
				                <li><a href="#">AR EXPORT -N/A </a>
				                    <ul>
					                    <li><a href="#">AIR</a>
					                        <ul>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=1">HOUSE</a></li>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=0">MASTER</a></li>
					                            
				                            </ul>
			                            </li>
			                            <li><a href="#">OCEAN -N/A </a>
					                        <ul>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">HOUSE</a></li>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">MASTER</a></li>
					                            
					                         </ul>
			                            </li>
			                        </ul>
				                </li>
			               <%-- </ul>
			            </li>--%>
			            <li>&nbsp</li>
	                   <%-- <li><a href="#">ACCOUNT RECEIVABLE</a>
		                    <ul>--%>
			                    <li><a href="#">AP IMPORT -N/A </a>
				                    <ul>
					                    <li><a href="#">AIR</a>
					                        <ul>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=0&MH=1">HOUSE</a></li>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=0&MH=0">MASTER</a></li>
					                           
				                            </ul>
		        	                    </li>
					                    <li><a href="#">OCEAN</a>
					                        <ul>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=1">HOUSE</a></li>
					                            <li><a href="../Finance/Invoice_Main.aspx?IE=0&AO=1&MH=0">MASTER</a></li>
					                            
				                            </ul>
		        	                    </li>
				                    </ul>
			                    </li>
			                    <li><a href="#">AR EXPORT -N/A </a>
			                        <ul>
				                        <li><a href="#">AIR</a>
				                            <ul>
				                                <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=1">HOUSE</a></li>
				                                <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=0&MH=0">MASTER</a></li>
				                                
			                                </ul>
		                                </li>
		                                <li><a href="#">OCEAN</a>
				                            <ul>
				                                <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">HOUSE</a></li>
				                                <li><a href="../Finance/Invoice_Main.aspx?IE=1&AO=1&MH=0">MASTER</a></li>
				                                
				                             </ul>
		                                </li>
		                            </ul>
			                    </li>
		                   <%-- </ul>
		                </li>--%>
		             </ul>
		         </li>
		         <li><a href="#">BACK UP -N/A </a>
				        <ul>
					        <li><a href="#">BACKUP</a></li>
					        <li><a href="#">SCHEDULE BACKUP</a></li>
				        </ul>
		         </li>
		         <li><a href="#">INFO -N/A </a>
				        <ul>
					        <li><a href="#">USER LOG INFO</a></li>
					        <li><a href="#">ETC</a></li>
				        </ul>
		         </li>
		         <li><a href="#">UTILITY -N/A </a>
				        <ul>
					        <li><a href="#">???</a></li>
					        <li><a href="#">???</a></li>
				        </ul>
		         </li>
    		
	        </ul>
	
		<!-- END Menu -->
		</div>
    </div>
