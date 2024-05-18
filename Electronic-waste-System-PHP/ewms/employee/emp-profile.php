<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['ewseid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {
    $eid=$_SESSION['ewseid'];
    $fullname=$_POST['fullname'];
  $mobno=$_POST['contactnumber'];
$address=$_POST['address'];
     $query=mysqli_query($con, "update tblemployee set Name ='$fullname', ContactNumber ='$mobno', Address = '$address' where ID='$eid'");
    if ($query) {
    $msg="Owner profile has been updated.";
    echo "<script>alert('Profile details updated successfully');</script>";
    echo "<script type='text/javascript'> document.location = 'emp-profile.php'; </script>";
  }
  else
    {
      echo "<script>alert('Something went wrong. Please try again.');</script>";
    }
  }
  ?>

<!DOCTYPE html>
<head>
<title>Electronic Waste System || Employee Profile  </title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="../admin/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="../admin/css/style.css" rel='stylesheet' type='text/css' />
<link href="../admin/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="../admin/css/font.css" type="text/css"/>
<link href="../admin/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="../admin/js/jquery2.0.3.min.js"></script>
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
                            Employee Profile
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-cog" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                

   <?php
 $eid=$_SESSION['ewseid'];
$ret=mysqli_query($con,"select * from tblemployee where ID='$eid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                                <form class="cmxform form-horizontal " method="post" action="">
                                     <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Employee ID</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="empid" name="empid" type="text" readonly="true" value="<?php  echo $row['EmployeeID'];?>">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Name</label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="fullname" name="fullname" type="text" value="<?php  echo $row['Name'];?>" required="true">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="email" class="control-label col-lg-3">Email</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="email" name="email" type="email" value="<?php  echo $row['Email'];?>" readonly="true">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="username" class="control-label col-lg-3">Mobile Number</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="contactnumber" name="contactnumber" type="text" value="<?php  echo $row['ContactNumber'];?>" required="true">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="adminname" class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-6">
                                          
                                            <textarea class=" form-control" required="true" rows="4" cols="4" name="address"><?php  echo $row['Address'];?></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="username" class="control-label col-lg-3">Joining Date</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="joiningdate" name="joiningdate" type="text" value="<?php  echo $row['JoiningDate'];?>" readonly="true">
                                        </div>
                                    </div>
                                    
                                    <?php } ?>
                        
                                  

                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                          <p style="text-align: center;"> <button class="btn btn-primary" type="submit" name="submit">Update</button></p>
                                           
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

<script src="../admin/js/bootstrap.js"></script>
<script src="../admin/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../admin/js/scripts.js"></script>
<script src="../admin/js/jquery.slimscroll.js"></script>
<script src="../admin/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="../admin/js/jquery.scrollTo.js"></script>
</body>
</html>
<?php }  ?>