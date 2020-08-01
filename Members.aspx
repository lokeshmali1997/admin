<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Insertform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

   

    <script src="https://kit.fontawesome.com/1cb6858836.js" crossorigin="anonymous"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   

     <style type="text/css">
     .scroll{ overflow:scroll}

     #btnedit{
        color: #232323;
        font-size:15px;
        padding:2px
     }
     #btndelete{
        color: #232323;
        font-size:15px;
        padding:2px
     }

       

     </style>
      
      <script type="text/javascript">

          

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
            </ul>  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                     <li >
                        <a href="index.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="Members.aspx"><i class="fas fa-users"></i> Members</a>
                    </li>
                    <li>
                        <a href="Request.aspx"><i class="far fa-paper-plane"></i> Request</a>
                    </li>
                    <li>
                        <a href="Approval.aspx"><i class="fas fa-user-check"></i> Approvals</a>
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
                            Members   
                       
                        </h1>
                           
           
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-user"></i> Members
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
               
                  <div class="row" id="formdetail1"  runat="server" style="margin-bottom:50px;margin-top:10px;">
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
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>

    
  <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate> 
    <tbody>
                            <tr>
        <td><asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label></td>
        <td><asp:Label ID="lblname" runat="server" Text='<%# Bind("username") %>'></asp:Label></td>
        <td><asp:Label ID="lblemail" runat="server" Text='<%# Bind("useremail") %>'></asp:Label></td>
        <td><asp:Label ID="lblage" runat="server" Text='<%# Bind("age") %>'></asp:Label></td>
        <td><asp:Label ID="lblmobile" runat="server" Text='<%# Bind("usermobilenumber") %>'></asp:Label></td>
        <td><asp:Label ID="lblcity" runat="server" Text='<%# Bind("city") %>'></asp:Label></td>
        <td><asp:LinkButton ID="btnedit" runat="server" CommandName="update" ><i class="fas fa-edit"></i></asp:LinkButton></td>
        <td><asp:LinkButton ID="btndelete" runat="server"  CommandName="Delete" ><i class="fas fa-trash"></i></asp:LinkButton>
           
        </td>
    
      </tr>
    </tbody>
               </ItemTemplate>
        </asp:Repeater>
      
    
  </table>

                          
                  </div>
              </div>
               
              </div>  

                <div class="row" id="formdetail2" runat="server" visible="false" style="margin-bottom:50px;margin-top:50px;">
                  <div class="row" style="margin:0px 0px 10px 0px;"><div class="col-sm-12"><h3> Profile Details </h3></div></div>
                    <asp:Label ID="lblid" runat="server" Visible="false" Text="Label"></asp:Label>
                    <div class="col-sm-4" >
                   
                      <div class="form-group" style="">
                          <label>Name </label>
                          <asp:TextBox ID="lblusername"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>Email </label>
                          <asp:TextBox ID="lblemail"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Contact </label>
                          <asp:TextBox ID="lblContact"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
     <div class="row" style="margin:0px 0px 10px 0px;" ><div class="col-sm-12"><h3> Basic Details </h3></div></div>
                    <div class="col-sm-4">
                   
                      <div class="form-group" style="">
                          <label>Living Status With Family</label>
                          <asp:TextBox ID="lblliving"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>Marital Status </label>
                          <asp:TextBox ID="lblmarital"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Family Status </label>
                          <asp:TextBox ID="lblfamily"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
       
                    <div class="col-sm-4">
                   
                      <div class="form-group" style="">
                          <label>Height </label>
                          <asp:TextBox ID="lblheight"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>Mother Tongue  </label>
                          <asp:TextBox ID="lblmt"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Religion </label>
                          <asp:TextBox ID="lblr"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Caste </label>
                          <asp:TextBox ID="lblc"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
<div class="row" style="margin: 0px 10px 0px 0px;"><div class="col-sm-12"><h3>Personal Details</h3></div></div>
                    <div class="col-sm-4">
                   
                      <div class="form-group" style="">
                          <label>Age </label>
                          <asp:TextBox ID="lblage"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>Deit  </label>
                          <asp:TextBox ID="lbldeit"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Drinking / Smoking </label>
                          <asp:TextBox ID="lblds"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Physical Status</label>
                          <asp:TextBox ID="lblps"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="row" style="margin: 0px 10px 0px 0px;"><div class="col-sm-12"><h3>Education / Career Details</h3></div></div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>Heighest Education  </label>
                          <asp:TextBox ID="lblhe"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Employee In </label>
                          <asp:TextBox ID="lblei"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Occupation </label>
                          <asp:TextBox ID="lblocc"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Annual Income </label>
                          <asp:TextBox ID="lblai"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="row" style="margin: 0px 10px 0px 0px;"><div class="col-sm-12"><h3> Location Details </h3></div></div>
                    <div class="col-sm-4" >
                   
                      <div class="form-group" style="">
                          <label>City </label>
                          <asp:TextBox ID="lblcity"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4" style="">
                      
                      <div class="form-group" style="">
                          <label>State </label>
                          <asp:TextBox ID="lblstate"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                    <div class="col-sm-4">
                      
                      <div class="form-group" style="">
                          <label>Country </label>
                          <asp:TextBox ID="lblcon"  class="form-control input-sm" runat="server"></asp:TextBox>
                          
                      </div>
                      </div>
                        <div class="col-sm-9"> </div>
                        <div class="col-sm-3" style="margin-top:30px;">
                      
                      <div class="form-group" style="">
                          <asp:Button ID="btnupdate" runat="server" class="btn btn-info" style="margin-right:10px;" Text="Update" OnClick="btnupdate_Click" /><asp:Button ID="btncancel" runat="server" CssClass="btn btn-danger" Text="Cancel" OnClick="btncancel_Click" /> 
                      </div>
                      </div>
                       

                    </div>
                


            
            
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js" type="text/javascript"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>


    </form>
</body>
</html>
