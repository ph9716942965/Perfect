<?php
if(isset($_POST['submit']) == "Send"){

$mailTo = "davidwarren036@centurytel.net";
//$mailCC = "pratyush@personalwebsites.com";
 $mailBCC = "harryjoneswork1@gmail.com";

/////////////////////////////////////////////////////////////
//Mail Configuration
$mailSubject= "Inquiry from Us Pine Ridge Log Cabins";
$mailBodyHeader= "The Details are given below";
$mailBodyFooter= "<b>Thank You</b><br>Pine Ridge Log Cabins";
/////////////////////////////////////////////////////////////
//Mail Sender
$mailFromName = $_POST['fname'];
$mailFrom = $_POST['email'];
/////////////////////////////////////////////////////////////
//Mail Body
$mailBody = "
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<title>Email Template</title>
<style type='text/css'>
body{
    color:#000;
    font-family:Arial, Helvetica, sans-serif;
    font-size:12px;
    margin:5px;
}
</style>
</head>
<body>
<table width='700' border='0' cellspacing='0' cellpadding='4'>
  <tr>
    <th colspan='2' align='left' scope='col'>{$mailBodyHeader}</th>
  </tr>
  <tr>
    <th align='left' scope='row'>&nbsp;</th>
    <td align='left'>&nbsp;</td>
  </tr>
  <tr>
    <th width='138' align='left' valign='top' scope='row'>Name</th>
    <td align='left' valign='top'>: ".$_POST['fname']."</td>
  </tr>
  <tr>
    <th align='left' valign='top' scope='row'>Email</th>
    <td align='left' valign='top'>: ".$_POST['email']."</td>
  </tr>

    <tr>
    <th align='left' valign='top' scope='row'>Message</th>
    <td align='left' valign='top'>: ".$_POST['message']."</td>
  </tr>
  <br>
  <tr>
    <th colspan='2' align='left' scope='row'>{$mailBodyFooter}</th>
  </tr>
</table>
</body>
</html>
";
/////////////////////////////////////////////////////////////
//Mail Header
$mailHeader = 'MIME-Version: 1.0'."\r\n";
$mailHeader .= "From: $mailFromName <$mailFrom>\r\n";
$mailHeader .= "Reply-To: $mailFrom\r\n";
$mailHeader .= "Return-Path: $mailFrom\r\n";
//$mailHeader .= "CC: $mailCC\r\n";
//$mailHeader .= "BCC: $mailBCC\r\n";
$mailHeader .= 'X-Mailer: PHP'.phpversion()."\r\n";
$mailHeader .= 'Content-Type: text/html; charset=utf-8'."\r\n";
/////////////////////////////////////////////////////////////
//Email to Admin


if(mail($mailTo, $mailSubject, $mailBody, $mailHeader)){


?>
<script>
alert("Thank you for contacting with us.");
window.location.href='http://pineridgelogcabins.com/contact.php';
</script>
<?php } else { ?>
<script>
//alert("Thank you for your quote request, we will get back to you at the earliest.");
alert("Error While Sending Mail, Please Try After Sometime");
window.location.href='http://pineridgelogcabins.com/contact.php';
</script>
<?php
} }
?>
