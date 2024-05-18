<?php  
session_start();
include('includes/dbconnection.php');

if (strlen($_SESSION['ewmsaid']) == 0) {
    header('location:logout.php');
} else {
   

?>



<!DOCTYPE html>
<head>
<title>Electronic Waste System || Product Details</title>

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
    <div class="table-agile-info">
 <div class="panel panel-default">
    
    <div class="panel-heading">
 Product Details
    </div>
    <div>
<?php
        
$pid=$_GET['pid'];   
  
$ret=mysqli_query($con,"SELECT 
    tblproduct.ID,
    tblproduct.UserID,
    tblproduct.ProductId,
    tblproduct.CategoryID,
    tblproduct.ProductName,
    tblproduct.ModelorType,
    tblproduct.Description,
    tblproduct.ExpectedPrice,
    tblproduct.PickupDate,
    tblproduct.PickupAddress,
    tblproduct.StateName,
    tblproduct.CityName,
    tblproduct.ContactPerson,
    tblproduct.CPMobNumber,
    tblproduct.Image1,
    tblproduct.Image2,
    tblproduct.CreationDate,
    tblproduct.Remark,
    tblproduct.Status,
    tblproduct.UpdationDate,
    tblproduct.ValuedAmount,
    tbluser.FullName,
    tbluser.MobileNumber,
    tbluser.Email,
    tblcategory.CategoryName
FROM 
    tblproduct
JOIN 
    tblcategory ON tblproduct.CategoryID = tblcategory.ID
JOIN 
    tbluser ON tblproduct.UserID = tbluser.ID
WHERE 
    tblproduct.ID = '$pid'

");
while ($row=mysqli_fetch_array($ret)) {
?>

      <table border="1" class="table table-bordered mg-b-0">
    <tr align="center">
<td colspan="4" style="font-size:20px;color:blue;text-align: center;">
 View Request Details of #<?php  echo $row['ProductId'];?></td></tr>    
  <tr>
    <th>Register By </th>
    <td><?php  echo $row['FullName'];?></td>
    <th>Registred Mobile Number</th>
    <td><?php  echo $row['MobileNumber'];?></td>
    <th>Registred Email</th>
    <td><?php  echo $row['Email'];?></td>
  </tr>

<td colspan="6" style="font-size:18px;text-align: center;color: blue;">Contact Person Details</td>
  <tr>
     <th>Contact Person</th>
    <td colspan="2"><?php  echo $row['ContactPerson'];?></td>
    <th>Contact Person Moible Number</th>
    <td colspan="2"><?php  echo $row['CPMobNumber'];?></td>
    
  </tr>


<tr>
  <th>State Name</th>
    <td colspan="2"><?php echo $row['StateName']; ?></td>
<th>City Name</th>
<td colspan="2">
<?php echo $row['CityName']; ?>
  </td>


  </tr>
  <tr>
  <td colspan="6" style="font-size:18px;text-align: center;color: blue;">Product Details</td></tr>
   <tr>
<th>Product Name</th>
<td colspan="2">
<?php echo $row['ProductName']; ?>
  </td>
<th>Product Category</th>
<td colspan="2">
<?php echo $row['CategoryName']; ?>
  </td>
  </tr>
  <tr>
<th>Model Or Type</th>
<td colspan="2">
<?php echo $row['ModelorType']; ?>
  </td>
<th>Expected Price</th>
<td colspan="2">
<?php echo $row['ExpectedPrice']; ?>
  </td>
  </tr>
 
  <tr>
    <th>Description</th>
<td colspan="6">
<?php echo $row['Description']; ?>
  </td>
  </tr>
  <tr>
<th>Pick Up Date</th>
<td colspan="2">
<?php echo $row['PickupDate']; ?>
  </td>
<th>Pick Up Address</th>
<td colspan="2">
<?php echo $row['PickupAddress']; ?>
  </td>
  </tr>

 
<th>Image</th>
<td>
<img src="../users/images/<?php echo $row['Image1']; ?>" width="200" height="200">
  </td>
  <th>Value Money</th>
    <td> <?php  
if($row['Status']=="Collected"){
echo $row['ValuedAmount'];;
}else{
echo $row['Status'];}
;?></td>

    <th>Status</th>
    <td colspan="2"> <?php  
if($row['Status']==""){
echo "Not Confirmed Yet";
}else{
echo $row['Status'];}
;?></td>


<?php if($row['Remark']!=''): ?>
<tr>
<th>Remark</th>
<td><?php echo $row['Remark']; ?></td>
<th>Remark Date</th>
<td><?php echo $row['UpdationDate']; ?></td>
</tr>
<?php endif; ?>

</tr>
  </table>

  <?php 
  $productid=$_GET['productid'];
$query1=mysqli_query($con,"SELECT Remark,Status,UpdationDate,ProductID,EmployeeID FROM tbltrackinghistory

    where ProductID='$productid'");
$count=mysqli_num_rows($query1);
if($count>0){
     ?>
 <div class="col-12">
        <table class="table table-bordered" border="1" width="100%">
                                        <tr>
                                            <th colspan="6" style="text-align:center;">Tracking History</th>
                                        </tr>
                                        <tr>
                                            <th>Remark</th>
                                            <th>Status</th>
                                            <th>Remark By </th>
                                            <th>Action Date</th>
                                        </tr>
<?php 
while($row1=mysqli_fetch_array($query1))
{
?>  

<tr>
<td><?php echo htmlentities($row1['Remark']);?></td>
<td><?php echo htmlentities($row1['Status']);?></td>
<td><?php echo htmlentities($row1['EmployeeID']);?></td>
<td><?php echo htmlentities($row1['UpdationDate']);?></td>
             
</tr>
<?php } ?>

</table></div>
<?php } ?>

 
     <?php } ?>       
            
          
    </div>
  </div>
</div>
</section>
 <!-- footer -->
     <?php include_once('includes/footer.php');?>  
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="../admin/js/bootstrap.js"></script>
<script src="../admin/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../admin/js/scripts.js"></script>
<script src="../admin/js/jquery.slimscroll.js"></script>
<script src="../admin/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="../admin/js/jquery.scrollTo.js"></script>

<script type="text/javascript">

  //For report file
  $('#provalue').hide();
  $(document).ready(function(){
  $('#statusid').change(function(){
  if($('#statusid').val()!='Collected')
  {
  $('#provalue').hide();
  } else if($('#statusid').val()==''){
      $('#provalue').hide();
  } else{
    $('#provalue').show();
  jQuery("#valuedamt").prop('required',true);  
  }
})}) 
</script>
</body>
</html>

<?php }  ?>