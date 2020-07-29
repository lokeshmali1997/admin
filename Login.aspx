<%@ Page Language="C#" AutoEventWireup="false" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
              
    
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
            <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
              <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

            

</head>
<body class="bg">
    <form id="form1" runat="server">
    <div>
      <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-4 border" style="background:#FFF; height: 280px;">
           
           
        
           <h2 class=" text-center text-muted"> Admin Login</h2>

           <div class="input-group" style="margin-top:20px;">
             <span class="input-group-addon"><i class=" glyphicon glyphicon-user"></i></span>
             <asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="Enter username"></asp:TextBox>  
           </div>
           <div class=" input-group" style="margin-top:20px">
           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
           <asp:TextBox ID="txtuserpassword" runat="server" class="form-control" placeholder="Enter Password"></asp:TextBox>
           </div>
           

           
            <asp:Button ID="btnlogin" 
                   style="margin-top:20px; margin-bottom:10px; border:0px solid red; margin-left:120px; border-radius:5px;" 
                   class="  btn btn-primary " Text="LOGIN"  runat="server" 
                   Width="150px" onclick="btnlogin_Click" BorderStyle="None" 
                   EnableTheming="True" Enabled="true"></asp:Button>
          
          
          
        </div>
          
        <div class="col-sm-4">
        </div>
      </div>
      
    </div>
    </form>
</body>
</html>
