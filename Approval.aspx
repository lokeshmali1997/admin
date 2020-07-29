﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approval.aspx.cs" Inherits="DetailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="JScript.js" type="text/javascript"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script language=javascript type="text/javascript">
        function page() {
            window.print();
        }
    </script>
    
</head>
<body>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i> <asp:Label ID="txtuser" runat="server" Text=""></asp:Label> <b class="caret"></b></a>
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
                            <a href="#"><i class="fa fa-fw fa-power-off"></i><asp:LinkButton ID="btnlogout1" runat="server" OnClick="btnlogout">Log Out</asp:LinkButton> </a>
                        </li>
                    </ul>
                </li>
            </ul> 
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
             <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="Members.aspx"><i class="fas fa-users"></i> Members</a>
                    </li>
                    <li>
                        <a href="Request.aspx"><i class="fa fa-fw fa-table"></i>Request</a>
                    </li>
                    <li>
                        <a href="Approval.aspx"><i class="fa fa-fw fa-edit"></i> Approvals</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-desktop"></i>Other</a>
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
                        <h1 class="page-header">
                            Forms
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Forms
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                 <div class="row" style="margin-bottom:50px;margin-top:10px;">
                    <div class="col-sm-12">
                        <table class="table table-striped">

    <thead>
      <tr>
        <th>Request Id</th>
        <th>From</th>
        <th>To</th>
        <th>Status</th>
        <th>Action</th>
      </tr>
    </thead>
     
     <asp:Repeater ID="Repeater1" runat="server" >  
         <ItemTemplate>                   
    <tbody>
      <tr>
        <td><asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label></td>
        <asp:HiddenField ID="hiddid" runat="server" Value='<%# Bind("Sender_Id")%>' />
        <td><asp:Label ID="lblname" runat="server" Text='<%# Bind("username") %>'></asp:Label></td>
        <td><asp:Label ID="lblemail" runat="server" Text='<%# Bind("User_Name") %>'></asp:Label></td>
           <asp:HiddenField ID="hidd2" runat="server" Value='<%# Bind("Recevier_Id")%>' />
        <th>
            <asp:Button ID="Button1" runat="server" style="height:25px;padding-top:2px" CssClass="btn btn-danger" Text="Approve" /></th>
      <td>
          <asp:LinkButton ID="btnapprove" style="" runat="server" CommandName="Approval"><i class="fas fa-check-circle"></i></asp:LinkButton>
          <asp:LinkButton ID="btndelete" style="" runat="server" CommandName="Delete"><i class="fas fa-trash"></i></asp:LinkButton>
      </td>
      </tr>
    </tbody>
             </ItemTemplate>
         </asp:Repeater>
  </table>
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
