<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%--    <%@ page import="dao.Merger" %> 
       <%@ page import="dao.NessusReportParser" %> --%> 
         <%@ page import="dao.DatabaseManager" %> 
       <%@ page import="dao.Database" %> 
       <%@ page import="dao.Severity" %>   
   <%@ page import="java.util.ArrayList" %>
   <%@ page import="java.util.List" %>
  
   <%@ page import="java.sql.CallableStatement" %> 
   <%@ page import="java.io.File" %> 
   <%@ page import="java.util.Map" %> 
   <%@ page import="java.util.HashMap" %>
   <%@ page import="java.sql.ResultSet" %> 
   <%@ page import= "java.util.Calendar" %> 
   <%@ page import ="java.sql.PreparedStatement" %> 
   <%@ page import ="java.sql.Statement" %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Director | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="Developed By M Abdur Rokib Promy">
        <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />

        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/mystyle.css" rel="stylesheet" type="text/css" />
        <link href="css/style2.css" rel="stylesheet" type="text/css" />
         <link href="css/login.css" rel="stylesheet" type="text/css" />
        
        <link href="stylesearch1.css" rel="stylesheet" type="text/css" />
        
        
        
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<link rel="stylesheet
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link href="css/mystyle.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
	<script src="dropzone.js"></script>
 <link rel="stylesheet" href="dropzone.css">
<link rel="stylesheet" type="text/css" href="css/form.css">










<script type="text/javascript">


(function(document) {
	'use strict';

	var LightTableFilter = (function(Arr) {

		var _input;
    var _select;

		function _onInputEvent(e) {
			_input = e.target;
			var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
			Arr.forEach.call(tables, function(table) {
				Arr.forEach.call(table.tBodies, function(tbody) {
					Arr.forEach.call(tbody.rows, _filter);
				});
			});
		}
    
		function _onSelectEvent(e) {
			_select = e.target;
			var tables = document.getElementsByClassName(_select.getAttribute('data-table'));
			Arr.forEach.call(tables, function(table) {
				Arr.forEach.call(table.tBodies, function(tbody) {
					Arr.forEach.call(tbody.rows, _filterSelect);
				});
			});
		}

		function _filter(row) {
      
			var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
			row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';

		}
    
		function _filterSelect(row) {
     
			var text_select = row.textContent.toLowerCase(), val_select = _select.options[_select.selectedIndex].value.toLowerCase();
			row.style.display = text_select.indexOf(val_select) === -1 ? 'none' : 'table-row';

		}

		return {
			init: function() {
				var inputs = document.getElementsByClassName('light-table-filter');
				var selects = document.getElementsByClassName('select-table-filter');
				Arr.forEach.call(inputs, function(input) {
					input.oninput = _onInputEvent;
				});
				Arr.forEach.call(selects, function(select) {
         select.onchange  = _onSelectEvent;
				});
			}
		};
	})(Array.prototype);

	document.addEventListener('readystatechange', function() {
		if (document.readyState === 'complete') {
			LightTableFilter.init();
		}
	});

})(document);

</script> 


</head>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
       <%String uname=(String)session.getAttribute("name"); %>
 
        
        
<header class="header">
            <a href="index.jsp" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Director Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">

                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>

                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span><%=uname %> <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">Account</li>

                                <li>
                                    <a href="#">
                                    <i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> Updates</a>
                                    <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span> Messages</a>
                                    <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                    <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                        "badge pull-right">11</span> FAQ</a>
                                </li>

                                <li class="divider"></li>

                                    <li>
                                        <a href="#">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <a data-toggle="modal" href="#modal-user-settings">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            Settings
                                        </a>
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="LogoutServlet"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                        </li>
                                    </ul>

                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="img/dashboardlogo2.gif" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hello,<%=uname %></p>

                            <!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <!-- <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button> -->
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li>
                            <a href="simple.jsp">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <!-- <li> -->
                           <!-- <a href="#join_form" id="join_pop"> -->
                            <!--  <a href="general.jsp">
                                <i class="fa fa-gavel"></i> <span>General</span> -->
                                
                                
                              <!--   <a href="#x" class="overlay" id="join_form"></a>
        	<div class="popup">
			<br><br>
     		<img src="images/Dashboard.jpg" name="webLogo" width="175" height="100" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;
       	 	<img src="images/ProcessReport.jpg" name="webLogo1" width="175" height="100" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
        	<img src="images/CustomerReportAnalysis.jpg" name="webLogo2" width="175" height="100" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
        	<img src="images/Settings.jpg" name="webLogo3" width="175" height="100" border="0"><br><br><br>
			<a class="close" href="#close"></a>
            

        </div> -->
                            
<!--                             </a>
                        </li> -->

                        <li class="active">
                            <a href="basic_form.jsp">
                                <i class="fa fa-globe"></i> <span>Process Reports</span>
                            </a>
                        </li>

                        <!-- <li>
                            <a href="simple.jsp">
                                <i class="fa fa-glass"></i> <span>Simple tables</span>
                            </a>
                        </li> -->
                        <li>
                                    <a href="tables.jsp">
                                        <i class="fa fa-globe"></i> <span>New Vulnerability</span>
                                    </a>
                                </li>
                         <!--   <li>
                            <a href="chart.jsp">
                                <i class="fa fa-glass"></i> <span>Charts</span>
                            </a>
                        </li> -->
                        
                            <li>
                            <a href="barchart.jsp">
                                <i class="fa fa-glass"></i> <span>Executive Summary</span>
                            </a>
                        </li> 
                        <li>
                            <a href="tablefinalcomments.jsp">
                                <i class="fa fa-glass"></i> <span>Recent Vulnerabilities</span>
                            </a>
                        </li> 
					<li>
                            <a href="SearchFilter.jsp">
                                <i class="fa fa-glass"></i> <span>Search Filter</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            
            <%String HostName=request.getParameter("hostname1");  %>
            <aside class="right-side">
            
                     <div class="row">

                        <div class="col-md-12">
                            <section class="panel">
                              <header class="panel-heading">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Result
                              </header>
                              <div class="panel-body">
                              
                                                  
                              
                              
                              
                              
          
  						<!-- <form id="my-awesome-dropzone"  action="Upload3" class="dropzone" method="POST"> -->  
	  	  				
	  	  				
	  	  				
	  	  				
	  	 			
	  	  				  <div class="row" >
	  	  				  <center>
                  <div class="col-lg-12" style="width: 800px">
                      <section class="panel">
                    <!--        <header class="panel-heading">
                              Vulnerabilities Discovered</header> -->
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                 <!--               <form action="HandleCommentServlet" method="post"> 
                               
                               
                                <input type="search" class="light-table-filter" data-table="table table-striped table-advance table-hover" placeholder="Filtrer" />
  
  &nbsp;&nbsp;&nbsp;
  <select type="search" class="select-table-filter" data-table="table table-striped table-advance table-hover">
    <option value="">Reset</option>  
    <option value="sda563">sda563</option>  
    <option value="sda571">sda571</option>  
    <option value="sda572">sda572</option>  
  </select><br><br> -->
  
  
  
  
  
 <!--  <form id="searchbox" action="advancesearchfilter.jsp" method="post" autocomplete="off">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="search" type="text" placeholder="Product Name" style="width: 100px" name="productname">
  &nbsp;<input id="search" type="text" placeholder="Severity" style="width: 100px" name="severity">
  &nbsp;<input id="search" type="date" placeholder="Date" style="width: 125px" name="date1"> TO
  &nbsp;<input id="search" type="date" placeholder="Date" style="width: 125px" name="date2">
  &nbsp;  <input id="submit" type="submit" value="Search">
 </form>
                             
   -->
  
  <%String productname=request.getParameter("productname");
String severity=request.getParameter("severity");
String date=request.getParameter("date1");
String date1=request.getParameter("date2");
%>
<%int dateflag=0,severityflag=0,productflag=0,dateflag1=0; %>

<%-- Product<%=productname %>
severity<%=severity %>
date<%=date %>
date1<%=date1%> --%>
  
  <center>
  <div STYLE=" height: 500px; width: 1100px; font-size: 12px; overflow: auto;">
        <table class="table table-striped table-advance table-hover" border="1">
                           <tbody>
                           
                             <tr>
                                 <th><i class="icon_profile"></i>Product Name</th> 
                               <th><i class="icon_calendar"></i>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vulnerability Name</th>
                                 
                                 <th><i class="icon_pin_alt"></i>CVE-ID </th>
                                 <th><i class="icon_mobile"></i> FOUNDBY</th>
                                 <th><i class="icon_cogs"></i>TOOLSeverity</th>
                                 
                                 <th><i class="icon_mail_alt"></i>HPESEVERITY </th>
                                 <th><i class="icon_mail_alt"></i>COMMENTS </th>
                                  
                              </tr>


                              
                             <%
if(date.equalsIgnoreCase("")||date.equalsIgnoreCase(null))
	dateflag=1;
if(date1.equalsIgnoreCase("")||date1.equalsIgnoreCase(null))
	dateflag1=1;
if(severity.equalsIgnoreCase("")||severity.equalsIgnoreCase(null))
	severityflag=1;
if(productname.equalsIgnoreCase("")||productname.equalsIgnoreCase(null))
	productflag=1;
/* out.println("Ans="+productname+"severity="+severity+"Date="+date); */
int count=0,flag1=0,flag2=0,flag3=0,flag4=0,flag5=0,flag6=0,flag7=0,flag8=0,flag9=0,flag10=0,flag11=0,flag12=0,flag13=0;%>
		<!-- only product -->
<% if(productflag==0 && severityflag==1&&dateflag==1&&dateflag1==1)
{
	
	DatabaseManager db;
	db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearch(productname);
		
		while(rs.next())
		{%>
		
		
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
		<% }%>
		 
		<%-- only product count=<%=count %> --%>
	
<% }else{%>

<%
	flag1=1;
	/* out.println("No Records Found!!!"); */
}
%>

<!-- product name and severity-->
 
<% if( productflag==0 && severityflag==0&& dateflag==1&& dateflag1==1)
{
	
	
	DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearch(productname,severity);
		
		while(rs.next())
		{%>
			
			
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%
		}%>
	
	 <%-- product and severity count=<%=count %> --%>
	
	<% }else{%>
	
	<%
	flag2=1;
		/* out.println("No Records Found!!!"); */
	}
	%>
	<!-- product name,severity,single date -->
<% if( productflag==0 && severityflag==0&& dateflag==0&& dateflag1==1)
{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearch(productname,severity,date);
		while(rs.next())
		{%>
		
		
		
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<%} else{%>
		
		<%
		flag3=1;
			/* out.println("No Records Found!!!"); */
		}
		%>
		<!-- product name,severity,single date -->
		
		
		<%if( productflag==0 && severityflag==0&& dateflag==1&& dateflag1==0)
			{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearch(productname,severity,date1);
		while(rs.next())
		{%>
		
		
		
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<%}else{%>
		
		<%
		flag4=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		
		<!--Product,severity,date and date1 -->
		
		<% if( productflag==0 && severityflag==0&& dateflag==0&& dateflag1==0)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearch(productname,severity,date,date1);
		while(rs.next())
		{%>
		
		
		
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<%}else{%>
		
		<%
		flag5=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		
		
		<!-- only Severity -->
				
		<% if( productflag==1 && severityflag==0&& dateflag==1&& dateflag1==1)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchSeverity(severity);
		while(rs.next())
		{%>
		
		
					
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<% }else{%>
		
		<%
		flag6=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		
		<!-- between 2 dates only -->
		
		
				<%if( productflag==1 && severityflag==1&& dateflag==0&& dateflag1==0)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchDate(date,date1);
		while(rs.next())
		{%>
		
		
					
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<%} else{%>
		
		<%
		flag7=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		
		<!-- single date -->
		
				<%if( productflag==1 && severityflag==1&& dateflag==1&& dateflag1==0)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchSingleDate(date1);
		while(rs.next())
		{%>
		
		
				
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	
		<%} else{%>
		
		<%
		flag8=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		<!-- single date -->
		
				<%  if( productflag==1 && severityflag==1&& dateflag==0&& dateflag1==1)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchSingleDate(date);
		while(rs.next())
		{%>
		
		
				
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<%} else{%>
		
		<%
		flag9=1;
			/* out.println("No Records Found!!!"); */
		}
		%>
		
		
		
		<!-- Product Name and between dates -->
		
				<%if( productflag==0 && severityflag==1&& dateflag==0&& dateflag1==0)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchProductDate(productname,date,date1);
		while(rs.next())
		{%>
		
		
				
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<% }else{%>
		
		<%
		flag10=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		
				<!-- severity and between dates -->
		
				<% if( productflag==1 && severityflag==0&& dateflag==0&& dateflag1==0)
		{
		DatabaseManager db;
		db = DatabaseManager.getInstance();
		ResultSet rs=db.showAllSearchSeverityDate(severity,date,date1);
		while(rs.next())
		{%>
		
		
					
								<% int VID=rs.getInt(1);
	      								String VNAME=rs.getString(2);
	      								String HNAME=rs.getString(3);
	     								String VPORT=rs.getString(4);
	     								String VFOUNDBY=rs.getString(5);
	      								String VSEVERITY=rs.getString(6);
	      								String COMMENTS=rs.getString(8);
	      								String hpeseverity=rs.getString(9);
	      								String CVEID=rs.getString(10);
	      								count++;
								%>
		
		
			<tr>
                                 <%-- <td><%=VID%></td> --%>
                                 <td><%=HNAME.split("\\.")[1]%></td>
                                 <td><%=VNAME%></td>
                                 <td><%=CVEID%></td>
                                 <td><%=VFOUNDBY%></td>
                                 
                                 
                                   <%if(VSEVERITY.equalsIgnoreCase("low")) {%>
									<td style="color:GREEN;" ><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("medium")) {%>
									<td style="color:ORANGE;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("HIGH")) {%>
									<td style="color:RED;"><%=VSEVERITY%></td>
								<% }%>
								<%if(VSEVERITY.equalsIgnoreCase("CRITICAL")) {%>
									<td style="color:PURPLE;"><%=VSEVERITY%></td>
								<% }%>
                                 <%-- <td><%=hpeseverity%></td>  --%>
                                 
                                 
                                 <%if(hpeseverity.equalsIgnoreCase("low")) {%>
								<td style="color:GREEN;" ><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("medium")) {%>
								<td style="color:ORANGE;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("HIGH")) {%>
								<td style="color:RED;"><%=hpeseverity%></td>
							<% }%>
							<%if(hpeseverity.equalsIgnoreCase("CRITICAL")) {%>
								<td style="color:PURPLE;"><%=hpeseverity%></td>
								<% }%>
								<%if(hpeseverity.equalsIgnoreCase("Not Vulnerable")) {%>
								<td style="color:LIGHTGREEN;"><%=hpeseverity%></td>
								<% }%>
                                 <td><%=COMMENTS%></td> 
                                 
                                 </tr>
			<%count++;
		}%>
	<%-- product and severity and date count=<%=count %> --%>
		<% }else{%>
		
		<%
			flag11=1;
		
			/* out.println("No Records Found!!!"); */
		}
		%>
		<%if(flag1==1&&flag2==1&&flag2==1&&flag4==1&&flag5==1&&flag6==1&&flag7==1&&flag8==1&&flag9==1&&flag10==1&&flag11==1){ %>
		
		<h5>No Vulnerabilities Found!!</h5>
		
		<%} %>
                             
					   </tbody>
                        </table>
                        </div>
                        </center>
                        </form>
                        <%-- <%} %> --%>
                      </section>
                     <!--  &nbsp;&nbsp;&nbsp;<form action="piechart1.jsp" method="post"> 
		&nbsp;&nbsp;&nbsp;&nbsp;<input id="buttonId4" type="submit" value="Statistics" name="button" onclick="load()">
		
	</form> <br><br> -->
                  </div>
          </div>
              
          
              
                   </div>
                            </section>
        
                              
        </div>
        </center>  
 
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>

        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Director App -->
        <script src="js/Director/app.js" type="text/javascript"></script>
    </body>
<%--       <div id="footer">
<%@ include file="footer.jsp" %>
</div> --%>
    
</html>