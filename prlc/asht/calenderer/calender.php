<?php



if (session_status() == PHP_SESSION_NONE) {



   @session_start();



}



$myVar = null;



if($myVar!= @$_GET['property'])



{



 	$_SESSION['myVar'] = @$_GET['property'];



	$myVar = $_SESSION['myVar'];



}



else {



    $myVar = $_SESSION['myVar'];



}



?>

<?php include_once("../gwm-admin/include/db.php"); ?>

<?php



 function GetDays($sStartDate, $sEndDate){  

      // Firstly, format the provided dates.  

      // This function works best with YYYY-MM-DD  

      // but other date formats will work thanks  

      // to strtotime().  

      $sStartDate = gmdate("Y-m-d", strtotime($sStartDate));  

      $sEndDate = gmdate("Y-m-d", strtotime($sEndDate));  



      // Start the variable off with the start date  

     $aDays[] = $sStartDate;  



     // Set a 'temp' variable, sCurrentDate, with  

     // the start date - before beginning the loop  

     $sCurrentDate = $sStartDate;  



     // While the current date is less than the end date  

     while($sCurrentDate < $sEndDate){  

       // Add a day to the current date  

       $sCurrentDate = gmdate("Y-m-d", strtotime("+1 day", strtotime($sCurrentDate)));  



       // Add this new day to the aDays array  

       $aDays[] = $sCurrentDate;  

     }  



     // Once the loop has finished, return the  

     // array of days.  

     return $aDays;  

   }  



$insert = mysqli_query($conn, "SELECT start_date,end_date FROM ical_events WHERE event_pid='".$myVar."'") or die(mysqli_error($conn));

while($row = mysqli_fetch_array($insert,MYSQLI_ASSOC))

		  {

			  @$start[] = $row['start_date'];

			  @$end[] = $row['end_date'];

			 @$ful[] = GetDays($row['start_date'], $row['end_date']);

					

		  }

if(@$ful!=""){

foreach($ful as $val)

{

		array_shift($val);

		array_pop($val);

		@$kd[] = $val;

}

}



function array_flatten($array) {



   $return = array();

   if($array!="")

   {

   foreach ($array as $key => $value) {

       if (is_array($value)){ $return = array_merge($return, array_flatten($value));}

       else {$return[$key] = $value;}

   }

   }

   return $return;

}



$array  = @$kd;



$full = array_flatten($array);



@$s_count = count($start);

@$e_count = count($end);

@$f_count = count($full);

 

		

?>



<?php



$ser = mysqli_query($conn, "SELECT property_heading FROM property_details WHERE property_id='".$myVar."'") or die(mysqli_error($conn));



while(@$row1 = mysqli_fetch_array($ser,MYSQLI_ASSOC))



		  {



			  $pro_head = $row1['property_heading'];



		  }



?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">



<head>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />



<title>Calender</title>



<link rel="stylesheet" href="css/style.css" />



<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>



<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">



<!--- bootstrap ------>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">



<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>







<!-- Latest compiled and minified CSS -->



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">







<!-- Optional theme -->



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">







<!-- Latest compiled and minified JavaScript -->



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>



<!--- bootstrap ------>



<script>



 $(document).ready(function(){



  $('div.ac').click(function(){



  var aj = $(this).data('seq');



  $('div.ac').removeClass('active');



 $(this).addClass('active');



  });



  $("div.full-book").parents("td").addClass('complete');



 $("div.first-half-book").parents("td").addClass('start');



 $("div.last-half-book").parents("td").addClass('end');



 



  $('.booking-box.complete').click(function(event){



        event.stopPropagation();



    });



    });



</script>



<script>



function check()



{



var retVal= confirm(" Do you want to delete? ");



if(retVal==true)



{



	return true ;



}



else



{



	return false ;



}



}



</script>



<?php



/* MULTI-REMOVAL-SCRIPT */



$server_url = $_SERVER['REQUEST_URI'];



$ex = explode("?", $server_url);



$url = $ex[0];



$url = strip_tags($url, '<br/>');



?>



<?php



if (strpos($server_url,'&') == false) {



    ?>



    	<script>



		$(document).ready(function(){



			$(".leftButton").hide();



			$(".ret-book").hide();



		})



		</script>



    <?php



}







$month_check=date('n');



$year_check =date('Y');



$count_month_len = strlen($month_check);



if($count_month_len==1)



{



	 $new_month = "0".$month_check;



}



else



{



	 $new_month = $month_check;



}







if(strpos($server_url,'month='.$new_month.'&year='.$year_check) !== false)



	{



	?>



 <script>



		$(document).ready(function(){



			$(".leftButton").hide();



			$(".ret-book").hide();



			



		})



</script>



<?php



}



?>







<script>



/*calender back button*/



function goLastMonth(month, year){



	if(month == 1)



	{



		--year;



		month = 13;



	}



	--month;



	var monthstring = ""+month+"";



	var monthlength = monthstring.length;



	if(monthlength <= 1)



	{



		monthstring = "0" + monthstring;



	}



	document.location.href = "<?php $_SERVER['PHP_SELF'] ;?>?month="+monthstring+"&year="+year;



}



/*calender forward button */



function goNextMonth(month, year){



	if(month == 12)



	{



		++year;



		month = 0;



	}



	++month;



	var monthstring = ""+month+"";



	var monthlength = monthstring.length;



	if(monthlength <= 1)



	{



		monthstring = "0" + monthstring;



	}



	document.location.href = "<?php $_SERVER['PHP_SELF'] ;?>?month="+monthstring+"&year="+year;



}



</script>



<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">



  <script src="//code.jquery.com/jquery-1.10.2.js"></script>



  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>



  <link rel="stylesheet" href="/resources/demos/style.css">



  <!--<script>



$(document).ready(function(e) {



	$('#book-sub').click(function(){



    var name = $('#first-name').val();



	var email = $('#email').val();



	



        if(name=="")



	{



		alert('Please enter Name.');



		$('#first-name').focus();



		return false;



	}



	if(email=="")



	{



		alert('Please enter Email.');



		$('#email').focus();



		return false;



	}







});



})



</script>-->







</head>







<body>



<div class="container topCon">



<?php



$a ="<div class='success-msg' style='display:none'></div>";



echo $a;



?>



<?php



//--------- First Table Starts -----------//



if(isset($_GET['month']))



{



	$month = $_GET['month'];



}



else



{



$month=date('n');







}



if(isset($_GET['year']))



{



	$year = $_GET['year'];



}



else



{



$year=date('Y');



}



// Calender Variable

$day = cal_days_in_month(CAL_GREGORIAN, $month, $year);

$currentTimeStamp = strtotime("$year-$month-$day");



$monthName = date("F", $currentTimeStamp);



$numDays = date("t", $currentTimeStamp);



$counter = 0;



?>







<iframe src="ical_link/index1.php?property=<?php echo $myVar ;?>" style="display:none;"></iframe>



<h4 align="center"><strong>Select Your Start Date & End Date for booking. </strong></p>







<div id="next-prev" class="prev-next">







<div class="col-md-4">



<div class="leftButton">



<button name="prev-button" onClick="goLastMonth(<?php echo $month.",".$year ?>)"> <i aria-hidden="true" class="fa fa-arrow-circle-left"></i>  </button></div>



</div>







<div class="col-md-4 remove_tab">











<a class="multi" href="<?php //echo $_SERVER['REQUEST_URI'];?>"><button><i class="fa fa-refresh" aria-hidden="true" style="margin: 0 -11px 0px -13px; padding: 8px;"></i></button></a>











</div>







<div class="col-md-4 rightButton" style="margin-top: -33px;">







<button name="next-button" onClick="goNextMonth(<?php echo $month.",".$year ?>)"><i aria-hidden="true" class="fa fa-arrow-circle-right"></i></i></button>



</div>







<div style="clear:both;"></div>



</div>







	<div class="col-md-12 back_booking">

    <?php if(@$_GET['logout']==1) unset($_SESSION['check']); ?>

	<a class='ret-book' href='<?php echo $url ?>?logout=1' >Current Date</a>

	</div>





</div>

<style>

@media only screen and (min-width: 768px) {
    .tabl_1_cal {
        width: 48%;
        float: left;
    }
}
@media only screen and (max-width: 688px; && min-width: 300px;) {
    .tabl_1_cal {
        width: 100%;
         
    }
}


</style>





<div class="container" id="call-box-s">



	<div class="tabl_1 col-md-6 tabl_1_cal">



<table id="table-1">



<tr class="hea">



	<td><div class="cell"></div></td>



	<td class="cell5"><?php echo $monthName.", ".$year ;?></td>



    <td><div class="cell"></div></td>



</tr>



<tr>



	<td><div class="cell">Sun</div></td>



    <td><div class="cell">Mon</div></td>



    <td><div class="cell">Tues</div></td>



    <td><div class="cell">Wed</div></td>



    <td><div class="cell">Thu</div></td>



    <td><div class="cell">Fri</div></td>



    <td><div class="cell">Sat</div></td>



</tr>







<?php



echo "<tr>";



	for($i=1; $i < $numDays+1; $i++, $counter++)



		{



			$timeStamp = strtotime("$year-$month-$i");



			if($i==1)



			{



				$firstDay = date("w", $timeStamp);



			



			for($j=0; $j < $firstDay; $j++, $counter++)



			{



				//blank space



				echo "<td><div class='cell'></div></td>";



			}



		  }



		 if($counter%7 == 0)



		  {



			 echo "</tr><tr>";



		  }



		  $monthstring = $month;



		  $monthlength = strlen($monthstring);



		  $daystring = $i;



		  $daylength = strlen($daystring);



		  if($monthlength <= 1)



		  {



			$monthstring = "0".$monthstring;  



		  }



		  if($daylength <= 1)



		  {



			$daystring = "0".$daystring;  



		  }



		  



		  $todaysDate = date("Y-m-d");



		  $bookdate = $year."-".$monthstring."-".$daystring;



		  $format = "Y-m-d";



		   $date1  = DateTime::createFromFormat($format, $todaysDate);



		   $date2  = DateTime::createFromFormat($format, $bookdate);



		 



		  echo "<td ";



		  if($date2 < $date1)



		  {



			  echo "class='before-today' id='".$bookdate."'";



		  }



		  elseif($todaysDate==$bookdate)



		  {



			  echo "class='today' id='".$bookdate."'";



		  }



		  else



		  {



			  echo "class='booking-box' id='".$bookdate."'";



		  }



		  



		  echo "><div class='ac cell' id='book-".$bookdate."' data-theme='div' data-seq='".$bookdate."' href=''>".$i."</div>";



		if(isset($start)){



			  



			  for($k=0;$k<$s_count;$k++)



			  {



				  if($start[$k]==$bookdate)



				    {



				



			  				echo "<div class='first-half-book'><img src='img/left.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			  if(isset($full)){



			  



			  for($l=0;$l<$f_count;$l++)



			  {



				  if($full[$l]==$bookdate)



				    {



				



			  				echo "<div class='full-book'><img src='img/full.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			   if(isset($end)){



			  



			  for($m=0;$m<$e_count;$m++)



			  {



				  if($end[$m]==$bookdate)



				    {



				



			  				echo "<div class='last-half-book'><img src='img/right.png' /></div>";



						



			  		}



			  } 	 



		



			  }



		  echo "</td>";



		}



echo "</tr>";







?>



</table>



</div>



	<?php //--------- First Table Ends -----------// ?>







<?php







//--------- Second Table Starts -----------//




if(isset($_GET['month']))



{



	$month = $_GET['month']+1;



	if($_GET['month']==12){



	$month=1;



	}



}



else



{



$month=date('n', strtotime('+1 month'));



}



if(isset($_GET['year']))



{



	if($_GET['month']==12)



	{



		$year=$_GET['year']+1;



	}



	else



	{



	$year = $_GET['year'];



	}



}



else



{



$year=date('Y');



}



// Calender Variable

$day = cal_days_in_month(CAL_GREGORIAN, $month, $year);

$currentTimeStamp = strtotime("$year-$month-$day");



$monthName = date("F", $currentTimeStamp);



$numDays = date("t", $currentTimeStamp);



$counter = 0;



?>



<div class="tabl_2 col-md-6 tabl_1_cal">



<table id="table-2">



<tr class="hea">



	<td><div class="cell"></div></td>



	<td class="cell5"><?php echo $monthName.", ".$year ;?></td>



    <td><div class="cell"></div></td>



</tr>



<tr>



	<td><div class="cell">Sun</div></td>



    <td><div class="cell">Mon</div></td>



    <td><div class="cell">Tues</div></td>



    <td><div class="cell">Wed</div></td>



    <td><div class="cell">Thu</div></td>



    <td><div class="cell">Fri</div></td>



    <td><div class="cell">Sat</div></td>



</tr>







<?php



echo "<tr>";



	for($i=1; $i < $numDays+1; $i++, $counter++)



		{



			$timeStamp = strtotime("$year-$month-$i");



			if($i==1)



			{



				$firstDay = date("w", $timeStamp);



			



			for($j=0; $j < $firstDay; $j++, $counter++)



			{



				//blank space



				echo "<td><div class='cell'></div></td>";



			}



		  }



		 if($counter%7 == 0)



		  {



			 echo "</tr><tr>";



		  }



		  $monthstring = $month;



		  $monthlength = strlen($monthstring);



		  $daystring = $i;



		  $daylength = strlen($daystring);



		  if($monthlength <= 1)



		  {



			$monthstring = "0".$monthstring;  



		  }



		  if($daylength <= 1)



		  {



			$daystring = "0".$daystring;  



		  }



		  



		  $todaysDate = date("Y-m-d");



		 $bookdate = $year."-".$monthstring."-".$daystring;



		  $format = "Y-m-d";



		   $date1  = DateTime::createFromFormat($format, $todaysDate);



		   $date2  = DateTime::createFromFormat($format, $bookdate);



		 



		   echo "<td ";



		  if($date2 < $date1)



		  {



			  echo "class='before-today' id='".$bookdate."'";



		  }



		  elseif($todaysDate==$bookdate)



		  {



			  echo "class='today' id='".$bookdate."'";



		  }



		  else



		  {



			  echo "class='booking-box' id='".$bookdate."'";



		  }



		  



		  echo "><div class='ac cell' id='book-".$bookdate."' data-theme='div' data-seq='".$bookdate."' href=''>".$i."</div>";



		 if(isset($start)){



			  



			  for($k=0;$k<$s_count;$k++)



			  {



				  if($start[$k]==$bookdate)



				    {



				



			  				echo "<div class='first-half-book'><img src='img/left.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			  if(isset($full)){



			  



			  for($l=0;$l<$f_count;$l++)



			  {



				  if($full[$l]==$bookdate)



				    {



				



			  				echo "<div class='full-book'><img src='img/full.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			   if(isset($end)){



			  



			  for($m=0;$m<$e_count;$m++)



			  {



				  if($end[$m]==$bookdate)



				    {



				



			  				echo "<div class='last-half-book'><img src='img/right.png' /></div>";



						



			  		}



			  } 	 



		



			  }



		  echo "</td>";



		}



echo "</tr>";







?>



</table>







</div>







<?php //--------- Second Table Ends -----------// ?>



    



</div>



<!------- Start Hiding 3rd and 4th table here -------------



<div class="container">











<?php



//--------- Third Table Starts -----------//




if(isset($_GET['month']))



{



	$month = $_GET['month']+2;



	if($_GET['month']==11){



	$month=1;



	}



	if($_GET['month']==12){



	$month = 2;



	}



}



else



{



$month=date('n', strtotime('+2 month'));



}



if(isset($_GET['year']))



{



	if((10 < $_GET['month']) && ($_GET['month']<=12) )



	{



		$year=$_GET['year']+1;



	}



	else



	{



	$year = $_GET['year'];



	}



}



else



{



$year=date('Y');



}



// Calender Variable

$day = cal_days_in_month(CAL_GREGORIAN, $month, $year);

$currentTimeStamp = strtotime("$year-$month-$day");



$monthName = date("F", $currentTimeStamp);



$numDays = date("t", $currentTimeStamp);



$counter = 0;



?>



<div class="tabl_3 col-md-6">



<table id="table-3" border="1">



<tr>



	<td align="center"></td>



	<td colspan="5" align="center"><?php echo $monthName.", ".$year ;?></td>



    <td align="center"></td>



</tr>



<tr>



	<td width="50px" align="center">Sun</td>



    <td width="50px" align="center">Mon</td>



    <td width="50px" align="center">Tues</td>



    <td width="50px" align="center">Wed</td>



    <td width="50px" align="center">Thu</td>



    <td width="50px" align="center">Fri</td>



    <td width="50px" align="center">Sat</td>



</tr>







<?php



echo "<tr>";



	for($i=1; $i < $numDays+1; $i++, $counter++)



		{



			$timeStamp = strtotime("$year-$month-$i");



			if($i==1)



			{



				$firstDay = date("w", $timeStamp);



			



			for($j=0; $j < $firstDay; $j++, $counter++)



			{



				//blank space



				echo "<td><div class='cell'></div></td>";



			}



		  }



		 if($counter%7 == 0)



		  {



			 echo "</tr><tr>";



		  }



		  $monthstring = $month;



		  $monthlength = strlen($monthstring);



		  $daystring = $i;



		  $daylength = strlen($daystring);



		  if($monthlength <= 1)



		  {



			$monthstring = "0".$monthstring;  



		  }



		  if($daylength <= 1)



		  {



			$daystring = "0".$daystring;  



		  }



		  



		  $todaysDate = date("Y-m-d");



		  $bookdate = $year."-".$monthstring."-".$daystring;



		   $format = "Y-m-d";



		   $date1  = DateTime::createFromFormat($format, $todaysDate);



		   $date2  = DateTime::createFromFormat($format, $bookdate);



		 



		  echo "<td align='center'";



		  if( $date2 < $date1 )



		   {



			   echo "class='before-today' id='".$bookdate."'";



		   }



		   



		  elseif($todaysDate==$bookdate)



		  {



			  echo "class='today' id='".$bookdate."'";



		  }



		  



		  else



		  {



			  echo "class='booking-box' id='".$bookdate."'";



		  }



		  



		  echo "><div class='ac' id='book-".$bookdate."' data-theme='div' data-seq='".$bookdate."' href=''>".$i."</div>";



		if(isset($start)){



			  



			  for($k=0;$k<$s_count;$k++)



			  {



				  if($start[$k]==$bookdate)



				    {



				



			  				echo "<div class='first-half-book'><img src='img/left.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			  if(isset($full)){



			  



			  for($l=0;$l<$f_count;$l++)



			  {



				  if($full[$l]==$bookdate)



				    {



				



			  				echo "<div class='full-book'><img src='img/full.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			   if(isset($end)){



			  



			  for($m=0;$m<$e_count;$m++)



			  {



				  if($end[$m]==$bookdate)



				    {



				



			  				echo "<div class='last-half-book'><img src='img/right.png' /></div>";



						



			  		}



			  } 	 



		



			  }



		  echo "</td>";



		}



echo "</tr>";



?>



</table>



</div>



<?php //--------- Third Table Ends -----------// ?>




<?php



//--------- Fourth Table Starts -----------//


if(isset($_GET['month']))



{



	$month = $_GET['month']+3;



	if($_GET['month']==10){



	$month=1;



	}



	if($_GET['month']==11){



	$month=2;



	}



	if($_GET['month']==12){



	$month = 3;



	}



	



}



else



{



$month=date('n', strtotime('+3 month'));



}







if(isset($_GET['year']))



{



	if((9 < $_GET['month']) && ($_GET['month']<=12) )



	{



		$year=$_GET['year']+1;



	}



	else



	{



	$year = $_GET['year'];



	}



}



else



{



$year=date('Y');



}



// Calender Variable

$day = cal_days_in_month(CAL_GREGORIAN, $month, $year);

$currentTimeStamp = strtotime("$year-$month-$day");



$monthName = date("F", $currentTimeStamp);



$numDays = date("t", $currentTimeStamp);



$counter = 0;



?>



<div class="tabl_4 col-md-6">



<table id="table-4" border="1">



<tr>



	<td align="center"></td>



	<td colspan="5" align="center"><?php echo $monthName.", ".$year ;?></td>



    <td align="center"></td>



</tr>



<tr>



	<td width="50px" align="center">Sun</td>



    <td width="50px" align="center">Mon</td>



    <td width="50px" align="center">Tues</td>



    <td width="50px" align="center">Wed</td>



    <td width="50px" align="center">Thu</td>



    <td width="50px" align="center">Fri</td>



    <td width="50px" align="center">Sat</td>



</tr>







<?php



echo "<tr>";



	for($i=1; $i < $numDays+1; $i++, $counter++)



		{



			$timeStamp = strtotime("$year-$month-$i");



			if($i==1)



			{



				$firstDay = date("w", $timeStamp);



			



			for($j=0; $j < $firstDay; $j++, $counter++)



			{



				//blank space



				echo "<td><div class='cell'></div></td>";



			}



		  }



		 if($counter%7 == 0)



		  {



			 echo "</tr><tr>";




		  }



		  $monthstring = $month;



		  $monthlength = strlen($monthstring);



		  $daystring = $i;



		  $daylength = strlen($daystring);



		  if($monthlength <= 1)



		  {



			$monthstring = "0".$monthstring;  



		  }



		  if($daylength <= 1)



		  {



			$daystring = "0".$daystring;  



		  }



		  



		  $todaysDate = date("Y-m-d");



		  $bookdate = $year."-".$monthstring."-".$daystring;



		  $format = "Y-m-d";



		   $date1  = DateTime::createFromFormat($format, $todaysDate);



		   $date2  = DateTime::createFromFormat($format, $bookdate);



		 



		  echo "<td align='center'";



		  if( $date2 < $date1 )



		   {



			   echo "class='before-today' id='".$bookdate."'";



		   }



		  



		  if($todaysDate==$bookdate)



		  {



			  echo "class='today' id='".$bookdate."'";



		  }



		  



		  else



		  {



			  echo "class='booking-box' id='".$bookdate."'";



		  }



		  



		  echo "><div class='ac' id='book-".$bookdate."' data-theme='div' data-seq='".$bookdate."' href=''>".$i."</div>";



		if(isset($start)){



			  



			  for($k=0;$k<$s_count;$k++)



			  {



				  if($start[$k]==$bookdate)



				    {



				



			  				echo "<div class='first-half-book'><img src='img/left.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			  if(isset($full)){



			  



			  for($l=0;$l<$f_count;$l++)



			  {



				  if($full[$l]==$bookdate)



				    {



				



			  				echo "<div class='full-book'><img src='img/full.png' /></div>";



						



			  		}



			  } 	 



		



			  }



			   if(isset($end)){



			  



			  for($m=0;$m<$e_count;$m++)



			  {



				  if($end[$m]==$bookdate)



				    {



				



			  				echo "<div class='last-half-book'><img src='img/right.png' /></div>";



						



			  		}



			  } 	 



		



			  }



		  echo "</td>";



		}



echo "</tr>";







?>



</table>



</div>







<?php //--------- Fourth Table Ends -----------// ?>



<--------ends hiding 3rd And 4th table------------>







</div>

<div class="cal_details">



	<ul>



		<!--<li>Current Date <img src="images/current_date.png" alt="am"></li>-->



		



		<li>Start Date <img src="images/pm.png" alt="am"></li>



		<li>End Date <img src="images/am.png" alt="pm"></li>



		<li>Booked Date <img src="images/full_book.png" alt="full Book"></li>



	</ul>



</div>





<div id="demo" style="display:none"></div>







<!--



<form id="my-form" method="post" action="contact.php">







<input type="text" name="first" id="first-name" class="datepicker1" required="required" />



<input type="text" name="last" id="last-name" class="datepicker1" required="required" />



<input type="submit" class="book_submit" name="sub_book" value="Click to book" />







</form>



-->



<!-- Pop Up form -->



<div class="modal fade" id="my-form">



	<div class="modal-dialog">



    	<div class="modal-content">



    		<div class="modal-header">



            <button type="button" class="close" data-dismiss="modal" aria-label=""><span>&times;</span></button>



            <h4 class="modal-title">Signup</h4>



            </div>



            <div class="modal-body">



            <form class="form-horizontal">



            	<div class="form-group">



                	<label class="col-md-4 col-md-offset-1">Name</label>



                    <div class="col-md-5">



                    	<input type="text" class="form-control input-sm" />



                    </div>



                </div>



                <div class="form-group">



                    <div class="col-md-5">



                    	<input type="submit" class="form-control input-sm" />



                    </div>



                </div>



                 <div class="modal-footer">



                 </div>  



            </form> 



		</div>



	</div>



</div>

<?php
$uri = $_SERVER['HTTP_REFERER'];
$my_uri = explode('/', $uri);
$my_url = end($my_uri);
?>

<div id="dialog" class="ui-dialog abc" title="Basic dialog">



<form method="post" id="myform" action="../quote.php" target="_top">



 	        <div class="form-group" style="width: 48%;float: left;"> 

                    <div class="col-md-6">

                     <label>Name</label>

                    	<input type="text" name="name" id="name" required/>


                    </div>
<div class="col-md-6">

                   <label>Start date</label>

                    	<input type="text" name="first" id="first-date" class="datepicker1" readonly="readonly"/>

                    </div>

                    

                </div>


                <div class="form-group" style="width: 48%;float: left;">
<div class="col-md-6">

                      <label>Email</label>

                    	<input type="email" name="email" id="email" required/>


                    </div>

                    

                    <div class="col-md-6">

                     <label>End date</label>

                    	<input type="text" name="last" id="last-date" class="datepicker1" readonly="readonly"/>


                    </div>

                </div>




                <div class="form-group"  style="width: 48%;float: left;">



                	<label class="col-md-4 col-md-offset-1">Guests</label>



                    <div class="col-md-8">



                    	<select name="guest" class="form-control input-sm" required/>



                          <option value="">--No of Guests--</option>



                            <option value="1">1</option>



                            <option value="2">2</option>



                            <option value="3">3</option>



                            <option value="4">4</option>



                            <option value="5">5</option>



                            <option value="6">6</option>



                            <option value="7">7</option>



                            <option value="8">8</option>



                            <option value="9">9</option>



                            <option value="10">10</option>

                            <option value="11">11</option>           

                            <option value="12">12</option>

                          </select>



                    </div>



                </div>





                <div class="form-group"  style="width: 48%;float: left;">



                    <div class="col-md-12 text-center">



                    	<input type="hidden" name="pro_id" value="<?php echo $myVar ?>"  />



                        <input type="hidden" name="pro_head" value="<?php echo $pro_head ?>"  />

						<input type="hidden" name="redirect_url" value="<?php echo $my_url ?>"  />

                    	<input type="submit" name="book-sub" id="book-sub" class="form-control input-sm" value="Get Quote" />



                    </div>



                </div>



</form>   



</div>



<script>



/* MULTI-SELECT-SCRIPT */







    $(document).ready(function(){



		$('#my-form').hide();



		$('.before-today').click(function(event){



        event.stopPropagation();



    });



	$("div.full-book").parents("td").addClass('complete');



	$("div.first-half-book").parents("td").addClass('start');



	$("div.last-half-book").parents("td").addClass('end');



	



		$('.booking-box.complete').click(function(event){



        event.stopPropagation();



    });



  



	$('div.ac').click(function(){



		



		var pro_id = <?php echo $myVar ?> ;



		 var aj = $(this).data('seq');



		 $('div.ac').removeClass('active');



		 $(this).addClass('active');



		 var k = $('#demo').append(aj+',');



		  var ki = $('#demo').html();



		$.ajax({



  method: "POST",



  url: "insert.php",



  cache: false,



  data: {data: ki, 'id': pro_id}



  //data: $("div#myform :input").serializeArray()



})



   .done(function( msg ) {



	  if(msg !=" ")



	  {



		  var count = ki.split(',').length; // results 4



		  



			if (count % 2 == 0)



			{



			  var cc = 'even';



			}



			else



			{



			  var cc = 'odd';



			} 



    $('.success-msg').html(msg);



	var msg2 = msg;



	



	var msg1 = msg2.split(',');



	var arr1 = jQuery.makeArray( msg1 );







	



	var lastEl = msg1.slice(-1)[0];



	var one = msg1[0];



	var first_date = one.replace('#', '');



	var two = lastEl;



	var last_date = two.replace('#', '');



	fi = $("#first-date").val();



	la = $("#last-date").val();







	if((fi ===" ") || (la ===" ") || (arr1 == ""))



	{



		$( ".booking-box" ).removeClass( "selected" );



		$("#dialog").dialog('close');



	}



	else



	{



		if(cc == 'even')



		{



			$( ".booking-box" ).removeClass( "selected" );



		$("#dialog").dialog('close');



		}



		if(cc == 'odd')



		{



		 $("#dialog").dialog({



        height: 1000,



        width: 550,



        resizable: false,



        title: "Get Quote",



		show: {effect: 'drop', direction: "up"},



    });



   var s = $("#first-date").val(first_date);



	var l = $("#last-date").val(last_date);



		jQuery.each( arr1, function( i, val) {



	$( val ).addClass( "selected" );



	// Will stop running after "three"



  		//return ( val !== "three" );



	});



		}



	}



	  }



	  else



	  {



		$( ".booking-box" ).removeClass( "selected" );



		$("#dialog").dialog('close');



	  }



 	 });



	});



	



});



</script>







</body>



</html>