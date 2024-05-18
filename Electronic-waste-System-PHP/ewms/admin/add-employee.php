<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['ewmsaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {
    $empid=$_POST['empid'];
    $name=$_POST['name'];
    $email=$_POST['email'];
    $contactnum=$_POST['contactnum'];
    $address=$_POST['address'];
    $password=md5($_POST['password']);
    $status=$_POST['status'];
    
     $ret=mysqli_query($con, "select EmployeeID,Email from tblemployee where EmployeeID='$empid' || Email='$email'");
    $result=mysqli_fetch_array($ret);
    if($result>0){

echo "<script>alert('This email or Employee ID already associated with another account');</script>";
    }
    else{
    $query=mysqli_query($con, "insert into tblemployee(EmployeeID,Name,Email,ContactNumber,Address,Password,Status) value('$empid','$name','$email','$contactnum','$address','$password','$status')");
    if ($query) {
   
    echo "<script>alert('Employee added successfully.');</script>";
echo "<script type='text/javascript'> document.location = 'add-employee.php'; </script>";
  }
  else
    {

      echo "<script>alert('Something Went Wrong. Please try again.');</script>";
    }

  }
}
  ?>

<!DOCTYPE html>
<head>
<title>Electronic Waste System|| Add Employee  </title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<?php include_once('includes/header.php');?>
<!--header end-->
<!--sidebar start-->
<?php include_once('includes/sidebar.php');?>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <!-- page start-->
            
          
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Add Employee
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                

   
                                <form class="cmxform form-horizontal " method="post" action="">
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Employee ID</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="empid" name="empid" type="text" required="true" value="">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="name" name="name" type="text" required="true" value="">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="email" name="email" type="email" required="true" value="">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Contact Number</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="contactnum" name="contactnum" type="text" required="true" value="" maxlength="10" pattern="[0-9]+">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                          
                                            <textarea class=" form-control" required="true" rows="4" cols="4" name="address"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Password</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="password" name="password" type="password" required="true" value="">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Status</label>

                                        <div class="col-lg-6" style="padding-top: 10px;">
                                            <input  id="status" name="status" type="radio" required="true" value="Active">Active
                                             <input id="status" name="status" type="radio" required="true" value="Inactive">Inactive
                                        </div>
                                    </div>
                                   
                                   
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                          <p style="text-align: center;"> <button class="btn btn-primary" type="submit" name="submit">Add</button></p>
                                           
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
            <!-- page end-->
        </div>

</section>
 <!-- footer -->
		  <?php include_once('includes/footer.php');?>    
  <!-- / footer -->
</section>

</section>

<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
<?php }  ?>