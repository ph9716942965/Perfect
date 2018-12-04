<!doctype html>
<?php include_once('gwm-admin/include/db.php'); ?>
		<?php 
								$q3=mysqli_query($conn,"select * from  contact_details");
								$f3=mysqli_fetch_array($q3);
					
							?>
<html lang="en">
<head>
	<title>Reserve/Contract</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/font.css">
	<link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="css/libs/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/responsive-menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<!-- Fix ie9  -->
	<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie9.css">
	<![endif]-->
	<style>
		#map_canvas {
	        /*width: 500px;*/
	        height: 820px;
	      }
.Standard
{
text-align: left;
}
	</style>
    
        <link rel="stylesheet" href="css/animate.css">
        <script src="js/wow.js"></script>
          <script>
            wow = new WOW(
              {
                animateClass: 'animated',
                offset:       100,
                callback:     function(box) {
                  console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
                }
              }
            );
            wow.init();
            document.getElementById('moar').onclick = function() {
              var section = document.createElement('section');
              section.className = 'section--purple wow fadeInDown';
              this.parentNode.insertBefore(section, this);
            };
          </script>
    
    
</head>
<body style="background-color: green;">
    
    
	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        <!-- Header : starts -->
        	<?php include('includes/header.php'); ?>
        <!-- Header : ends -->


			<section class="md-contact">
            <div class="grid_2">&nbsp;</div>
            <div class="grid_8">
           <div class="about-owner">
            	<div class="container">
				 <table border="0" cellpadding="2" cellspacing="0" width="100%" style="text-align:center">
		<tr>
			<td>
			<p align="center"><font face="Century Gothic"><b>PLEASE PRINT FILL 
			OUT EMAIL OR FAX BACK</b></font></td>
		</tr>
 <tr>
			<td>
			<p align="RIGHT"><input type="button" value="Print"  onclick="PrintImage('img/reserve.jpg'); return false;" /></p>

<script type="text/javascript">
function ImagetoPrint(source) {
    return "<html><head><script>function step1(){\n" +
            "setTimeout('step2()', 10);}\n" +
            "function step2(){window.print();window.close()}\n" +
            "</scri" + "pt></head><body onload='step1()'>\n" +
            "<img src='" + source + "' /></body></html>";
}
function PrintImage(source) {
    Pagelink = "about:blank";
    var pwa = window.open(Pagelink, "_new");
    pwa.document.open();
    pwa.document.write(ImagetoPrint(source));
    pwa.document.close();
}
</script></td>
		</tr>


		<tr>
			<td>
			<a href="img/reserve.jpg"  target="_blank"><img id="mainImg" border="0" src="img/reserve.jpg" width="792"></a></td>
		</tr>
		<!--<tr>
			<td>
			<a href="images/contra4.png"  target="_blank"><img border="0" src="images/contra4.png" width="826" height="918"></a></td>
		</tr>-->
		<!--<tr>
			<td>
			<p class="Standard"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			Pine Ridge Log Cabins&nbsp;&nbsp; (Guest, please fill-out)</span></b></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			Rental&nbsp; Invoice </span></b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;___/____/___&nbsp; (month / day / year)</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			I, ____________________________ (print name ), am the responsible 
			person booking the (Circle:)&nbsp; Bear Cliff /</span><b><span style="font-family: 'Lucida Sans Unicode',sans-serif">Deer 
			Stand Cabin.&nbsp; (Please call to check availability!)&nbsp;&nbsp; 
			Scan, Email to:&nbsp;&nbsp; </span>
			<a style="color: #0563C1; text-decoration: underline; text-underline: single" href="mailto:davidwarren036@centurytel.net">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; color: windowtext; text-decoration: none">
			davidwarren036@centurytel.net</span></a><span style="font-family: 'Lucida Sans Unicode',sans-serif"> 
			______</span></b></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			Check-In date:&nbsp; ____________________ After 3 PM, CST</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			Check-Out date:_____________________By&nbsp; 10 AM, CST</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			Number in Party:&nbsp; _________ Adults</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			_________ Children</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			*&nbsp; (If number in party exceeds 4 persons, Add $5 per person, 
			per night to Rental Amt. Below:)</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			Charges:&nbsp; ___________Rental Amount. - Take rate x nights. (OR) 
			week rate. (OR) week rate + extra days</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			_________&nbsp; MO Tax.&nbsp; -&nbsp; Take rental amount x 5.975%</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			____59.__Cleaning Fee.</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			__________Pet Fee.&nbsp; - If none, put 0.&nbsp; Otherwise, 48. and 
			specify:&nbsp; Number of Pets:_______.</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			Total Charge:&nbsp; ___________&nbsp; (Add above charges)&nbsp; 
			Remember,$200 Deposit will be taken, then, refunded&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			after your stay (mailed back within 3-5 business days).</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			* Total is due before Check-In date and an easy 2 part payment plan 
			below.&nbsp; Or payment can be made in full by filling in 1<sup>st</sup> 
			payment line and crossing out 2<sup>nd</sup> payment line below:</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			1<sup>st</sup> Payment of_____________ due ____________________&nbsp; 
			(60 days prior Check-In)</span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			2<sup>nd</sup> Payment of______________due ____________________&nbsp; 
			(14 days prior Check-In)</span></p>
			<p class="Standard"><b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			Pine Ridge Log Cabins: </span></b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif; font-weight:700">
			&nbsp;Welcome You at the end of a Forested Ridge backed by 100's of acres 
			of wildlife-filled forest including our own Bird Sanctuary above &amp; 
			around up into a small, quaint, older mobile home park directly 
			above Cabins, with mostly senior citizens on SSI or disability: 
			Quiet. They hope you are, too!&nbsp; 15 minutes From Branson, the 
			Cabins can be found by going south on Hwy 65, turn west on Hwy 86, 
			going across Table Rock Lake bridge, then 1 mile to “Pine Ridge Log 
			Cabin” sign made of logs, Lighted ALL Night !&nbsp; (On Left).&nbsp; 
			(You could print &amp; Bring it's photo on our web site).&nbsp; </span></p>
			<p class="Standard">
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			<b>Be sure to let your party read all our reviews on HomeAway, VRBO, 
			FlipKey for even more accuracy on our property!!!&nbsp; Thank You, - 
			David &amp; Nemesia Warren, 5704 E. State Hwy 86, Blue Eye, MO&nbsp; 
			65611.&nbsp; Cell phone # 417-331-1556,&nbsp; Home phone # 
			417-779-5095.</b></span></p>
			<p class="Standard"><b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			** Guest Signature: 
			___________________________________________________________ .</span></b></p>
			<p class="Standard"><b>
			<span style="font-family: 'Lucida Sans Unicode',sans-serif">
			** Date :&nbsp; _____________________________________ .</span></b></td>
		</tr>-->
	</table>
			</div></div></div><div class="grid_2">&nbsp;<div></section><!-- /.md-wrapper  -->

			
            <!-- footer : starts -->
                <?php include('includes/footer.php'); ?>
            <!-- footer : ends -->

		</div>
	</div>


<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.js"></script>
<script type="text/javascript" src="js/classie.js"></script>
<script type="text/javascript" src="js/mlpushmenu.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.map.js"></script>


<script type="text/javascript" src="js/script.js"></script>

 




</body>
</html>