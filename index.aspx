<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html >

<html>
<html lang="en">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <a href="Login.aspx">Login.aspx</a>
    <title>Admin Template</title>

    <script src="https://kit.fontawesome.com/1cb6858836.js" crossorigin="anonymous"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="JScript.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    
    <style type="text/css">
      .trmargin{margin-top:10px}

      .lblcount{
          padding:20px;
          font-size:2em;
      }
      .totalbox{

          
          height:100px;
          color:#fff;
          margin:10px;
          padding:10px;


      }
    </style>
 
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
                 <a class="navbar-brand" href="index.aspx">CatchYourMatch.Com</a>
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
                            Dashboard <small>
                            Fill Form</small>
                        </h1>
                       
                    </div>
                </div>
                <!-- /.row -->
                <div class="row" style="margin-bottom:50px;margin-top:10px;">

                    <div class="col-sm-4">

                        <div class="totalbox" style="background-image: linear-gradient( 109.6deg,  rgba(121,203,202,1) 11.2%, rgba(119,161,211,1) 91.1% );">
                            <asp:Label ID="lblcountmem" CssClass="lblcount" runat="server">10</asp:Label>
                            <h4 style="margin-left:20px;">Total Members</h4>
                            
                        </div>

                    </div>
                    <div class="col-sm-4">

                        <div class="totalbox" style="background-image: linear-gradient( 109.6deg,  rgba(44,83,131,1) 18.9%, rgba(95,175,201,1) 91.1% );">
                            <asp:Label ID="lblbride" CssClass="lblcount" runat="server">10</asp:Label>
                            <h4 style="margin-left:20px;">Total Brides</h4>
                            
                        </div>

                    </div>
                    <div class="col-sm-4">

                        <div class="totalbox" style="background-image: radial-gradient( circle 590px at 8.2% 13.8%,  rgba(18,35,60,1) 0%, #bbb 90% );">
                            <asp:Label ID="lblgroom" CssClass="lblcount" runat="server">10</asp:Label>
                            <h4 style="margin-left:20px;">Total Grooms</h4>
                            
                        </div>

                    </div>

                    


                </div>  
              <div class="row" style="margin-bottom:50px;margin-top:10px;">
                  <div class="col-sm-12">
                      <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>Firstname</th>
        <th>Email</th>
        <th>Age</th>
        <th>Mobile</th>
        <th>City</th>
      </tr>
    </thead>

    
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
    <tbody>
                            <tr>
        
        <td><asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label></td>
        <td><asp:Label ID="Label2" runat="server" Text='<%# Bind("username") %>'></asp:Label></td>
        <td><asp:Label ID="Label3" runat="server" Text='<%# Bind("useremail") %>'></asp:Label></td>
        <td><asp:Label ID="Label4" runat="server" Text='<%# Bind("age") %>'></asp:Label></td>
        <td><asp:Label ID="Label5" runat="server" Text='<%# Bind("usermobilenumber") %>'></asp:Label></td>
        <td><asp:Label ID="Label6" runat="server" Text='<%# Bind("city") %>'></asp:Label></td>
      </tr>
    </tbody>
                </ItemTemplate>
        </asp:Repeater>
      
    
  </table>
                  </div>
              </div>
               
              </div>  
                <!-- /.row -->

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

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    </form>
</body>
</html>
      