<?php
include_once('admin/include/db.php');

$property_id = $_POST['pid'];
$checkin = $_POST['checkin'];
$checkout = $_POST['checkout'];

                        $newdate1 = $checkin;
                        $newdate2 = $checkout;

 $startDate = $newdate1;
 $endDate = $newdate2;

if(isset($startDate) && isset($endDate)){
$date1 = $startDate;
$date2 = $endDate;

function returnDates($fromdate, $todate) {
    $fromdate = \DateTime::createFromFormat('m-d-Y', $fromdate);
    $todate = \DateTime::createFromFormat('m-d-Y', $todate);
    return new \DatePeriod(
        $fromdate,
        new \DateInterval('P1D'),
        $todate->modify('+1 day')
    );
}
$datePeriod = returnDates($date1, $date2);
foreach($datePeriod as $date) {
    $ad[] = $date->format('m-d-Y');
}

$aaa = "";
$seperator = ",";
foreach($ad as $val)
{
	$aaa .= "'".$val."'".$seperator;
}
$t = rtrim($aaa, $seperator);
$sel = mysqli_query($conn, "SELECT * FROM booking WHERE bookdate IN($t) AND booking_state=1 AND property_id='".$property_id."'");
$row=mysqli_num_rows($sel);

if($row>0)
{
	echo "Your dates are booked,please select different dates.";
}
else
{
	echo 123;
}			
} 
?>
