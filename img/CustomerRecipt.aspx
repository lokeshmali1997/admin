<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerRecipt.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <style type="text/css" >
.AutoCompleteFlyout
{

margin : 0px!important;
background-color : #fff;
color : windowtext;
border : buttonshadow;
border-width : 0px;
border-style : solid;
cursor : pointer;
overflow : auto;
height : auto;
text-align : left;
list-style-type:none;
width:200px;
}

.AutoCompleteFlyoutItem
{
background-color :#fff;
margin-left:-40px;
padding : 2px;

}

.AutoCompleteFlyoutHilightedItem
{

background-color:#ddd;
color: black;
padding: 1px;
margin-left:-40px;

}

</style>
<style>
   @media print
   {
     
       #Print
       {
           display:none;
           }
           #btndetail
       {
           display:none;
           }
           #txtdetails
       {
           display:none;
           }
             #ll
       {
           display:none;
           }
      
    @page { margin: 0; }
  body { margin: 1.6cm; }
       }
  </style>

  

    <style type="text/css">
      .trmargin{margin-top:10px}
    </style>
    
</head>
<body style=" background:#fff">
    
    <form id="form1" runat="server">
   <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="UpdateDetail.aspx"><i class="fa fa-fw fa-bar-chart-o"></i>Edit Details</a>
                    </li>
                    <li>
                        <a href="Printform.aspx"><i class="fa fa-fw fa-table"></i>Search Customer Detail</a>
                    </li>
                    <li  class="active">
                        <a href="CustomerRecipt.aspx"><i class="fa fa-fw fa-edit"></i> Customer Recipit</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-desktop"></i>Complete Product</a>
                    </li>
           
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 id="ll" class="page-header">
                            CUSTOMER RECIPIT
                        </h1>
                        <ul class="breadcrum" style=" list-style-type:none; margin-top:0px" >
                            <li>
                               <div class="row " style="margin-left: 30px; margin-top:0px;margin-bottom:100px">
              
                    <div class="col-sm-12 " style="margin-left:300px">

                        <asp:TextBox ID="txtdetails" runat="server"></asp:TextBox>
                        <%--<asp:ScriptManager ID="sm" runat="server">
                         <Services>
                         <asp:ServiceReference Path="~/WebService.asmx" />
                         </Services>
                        </asp:ScriptManager>
--%>
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
            <Services>
                <asp:ServiceReference Path="~/WebService.asmx" />
            </Services>
        </asp:ToolkitScriptManager>   
       <asp:AutoCompleteExtender ID="txtGoingTo_AutoCompleteExtender" runat="server" 
                            DelimiterCharacters="" Enabled="True" TargetControlID="txtdetails"
                            ServicePath="~/WebService.asmx"
                            ServiceMethod="GetCompletionList"
                            CompletionInterval="100"
                            MinimumPrefixLength="1"
                            EnableCaching="true"
                            CompletionSetCount="4"
                            CompletionListItemCssClass="AutoCompleteFlyoutItem"
                            CompletionListCssClass="AutoCompleteFlyout"
                            CompletionListHighlightedItemCssClass="AutoCompleteFlyoutHilightedItem"
                            >
                        </asp:AutoCompleteExtender>
               
                        <asp:Button ID="btndetail" runat="server" Text="Detail" class="btn btn-danger" 
                            onclick="btndetail_Click" />
                    </div>
                </div>
                            </li>  
                        </ul>
                    </div>
                </div>
                <!-- /.row -->            
        
    <div class="row" id="dvContents">
     <div class="col-sm-2">
            
     </div>
    <div class="col-sm-8" >

    <table class="table">
      <tr class="text-center" >
       <td colspan="4" >
        <h2 >SHOBHAGAY MOBILE REPAIRING CENTER </h2>
        <small>SAMSUNG , IPHONE , VIVO , MI , GIONEE , HTC , SONY , LCD , TOUCH , COMBO</small>
       </td>
       <td >
       
       </td>
       <td >
       
       </td>
       <td >
       
       </td>
      </tr>
      <tr>
       <td>
           <asp:Label ID="Label2" runat="server" Text="CUSTOMER ID"></asp:Label> 
       </td>
       <td>
           <asp:Label ID="C_Id" runat="server"></asp:Label>
       </td>
       <td>
           <asp:Label ID="Label4" runat="server" Text="CHECK IN DATE"></asp:Label> 
       </td>
       <td>
           <asp:Label ID="M_CheckInDate" runat="server" ></asp:Label>
          </td>

       </tr>
      <tr>
      <td>
          Name
       </td>
       <td>
          <asp:Label ID="C_Name" runat="server" ></asp:Label>
       </td>
       
        <td>
            Email :
       </td>
       <td>
           <asp:Label ID="C_Email" runat="server" ></asp:Label>
       </td>
      </tr>
 <tr>
       <td>
           Contact Number :
       </td>
       
       <td>
           <asp:Label ID="C_ContactNumber" runat="server" ></asp:Label>
       </td>
       <td>
           Alternate Number :
       </td> 
       <td>
           <asp:Label ID="C_AlternateNumber" runat="server" ></asp:Label>
       </td>
      </tr>
 <tr>
       <td>
           Adhar Number :
       </td>
       <td>
           <asp:Label ID="C_AdharNumber" runat="server" ></asp:Label>
       </td>
        <td>
            Addresss : 
       </td>
       <td>
           <asp:Label ID="C_Address" runat="server" ></asp:Label>
       </td>
      </tr>
 <tr>
       <td>
          Imei Number : &nbsp;
       </td>
       <td>
           <asp:Label ID="M_ImeiNumber" runat="server" ></asp:Label>
       </td>
        <td>
           Company Name : 
       </td>
       <td>
           <asp:Label ID="M_CompanyName" runat="server" ></asp:Label>
       </td>
      </tr>

      <tr>
       <td>
          Model Number :  
       </td>
       <td>
           <asp:Label ID="M_ModelNumber" runat="server" ></asp:Label>
       </td>
       <td>
           Repair Warranty : 
       </td>
       <td>
           <asp:Label ID="M_RepairWarranty" runat="server" Text="No" ></asp:Label>
       </td>       
      </tr>
      <tr>
       <td>
          Problem Reported :  
       </td>
       <td>
           <asp:Label ID="M_ProblemReported" runat="server" ></asp:Label>
       </td>
       <td>
            Amount :
       </td>
       <td>
           <asp:Label ID="M_Amount" runat="server" Text="500"></asp:Label>
       </td>
      </tr>
      <tr>
       <td>
       
       </td>
       <td>
       
       </td>
      </tr>

    </table>
     <asp:Button ID="Print" runat="server" OnClientClick="window.print();"  Text="PRINT" class="btn btn-primary" Style="margin-left: 300px" />
     </div>
     <div class="col-sm-2">
     
     </div>
    </div>               

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


    </form>
</body>
</html>
    