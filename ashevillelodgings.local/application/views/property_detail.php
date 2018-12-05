<?php $this->load->view('common/header');?>
    <!-- end main header area -->

<style>
.morecontent div {
    display: none;
}
.morelink {
    display: block;
}
.section-room-single .widget-box {
    border: 1px solid #beac5a;
    padding: 30px;
    margin-bottom: 30px;
}
.section-style-2 .section-starter
{
    background-image: url(https://www.cedarkeyislandvacationrentals.com/images/section-starter.png);
    background-repeat: no-repeat;
    background-size: contain;
    height: 15px;
    width: 67px;
    margin: 20px 0px 20px 0px;
}
.keywords p span.one {
    float: left;
    width: 49%;
}
.section-room-single .price {
    font-size: 24px;
}
.keywords p span.two {
    float: right;
    width: 49%;
    text-align: right;
}
.section-room-single .subtitle {
    font-size: 18px;
    font-weight: bold;
    margin-top: 20px;
    margin-bottom: 20px;
    -webkit-transform: translateZ(0);
}
.amnt {
    margin-top: 0;
    margin-bottom: 20px;
    border-bottom: 1px dashed rgba(0, 0, 0, 0.39);
    padding-bottom: 20px;
    padding-left: 20px;
}
.amnt li {
    list-style: none;
    margin-left: 25px;
    text-transform: capitalize;
    display: inline-block;
    width: 45%;
    font-size: 15px;
}
.amnt li::before {
    content: "-";
    margin-right: 15px;
    margin-left: -25px;
}

#rates{background-color:rgba(255,255,255,1.00);}
.table
{
background-color:rgba(250,250,250,1.00);
width: 100%; 
border-collapse: collapse; 
}

.cent{text-align:center;
vertical-align:middle!important;}


.table-bordered > tbody > tr > td, .table-bordered > tbody > tr > th, 
.table-bordered > tfoot > tr > td, .table-bordered > tfoot > tr > th, 
.table-bordered > thead > tr > td, .table-bordered > thead > tr > th
{
    line-height:2.5!important;
    height:85px;
}
 
div.floating-menu {position:fixed;width:90px;z-index:100; margin-top:375px}
div.floating-menu a, div.floating-menu h3 {display:block;margin:0 0.5em;}
 

/*RESPOSIVE TABLE CSS*/

.rates{ margin:0px auto; text-transform:capitalize;}
.rates th{  padding:5px; font-size:16px; background:#3399ff; color:#fff; font-weight:bold; text-align:center;  }
.rates td{  padding:5px; font-size:14px; text-align:center;  }
.rates span{font-size:11px;}
.responsive-table b { color: #b80909; display: block; font-weight: 600; font-size: 12px;}
.responsive-table { width: 100%; margin-bottom: 1.5em;}
.responsive-table thead { position: absolute; clip: rect(1px 1px 1px 1px);
  /* IE6, IE7 */ clip: rect(1px, 1px, 1px, 1px); padding: 0; border: 0; height: 1px; width: 1px; overflow: hidden;}
@media (min-width: 44em) {
.responsive-table thead { position: relative; clip: auto; height: auto; width: auto; overflow: auto;}
}
.responsive-table thead th { background-color: #f8b239; border: 1px solid #f8b239; font-weight: normal; text-align: center; color: white;}
.responsive-table thead th:first-of-type { text-align: left;}
.responsive-table tbody,
.responsive-table tr,
.responsive-table th,
.responsive-table td { display: block; padding: 0; text-align: left; white-space: normal;}
@media (min-width: 44em) {
.responsive-table tr { display: table-row;}
}
.responsive-table th,
.responsive-table td { padding: .5em; vertical-align: middle;}
@media (min-width: 30em) {
.responsive-table th,
.responsive-table td { padding: .75em .5em;}
}
@media (min-width: 44em) {
.responsive-table th,
.responsive-table td { display: table-cell; padding: .5em;}
}
@media (min-width: 62em) {
.responsive-table th,
.responsive-table td { padding: .75em .5em;}
}
@media (min-width: 75em) {
.responsive-table th,
.responsive-table td {padding: .75em;}
}
.responsive-table caption { margin-bottom: 1em; font-size: 1em; font-weight: bold; text-align: center;}
@media (min-width: 44em) {
.responsive-table caption { font-size: 1.5em;}
}
.responsive-table tfoot { font-size: .8em; font-style: italic;}
@media (min-width: 62em) {
.responsive-table tfoot { font-size: .9em;}
}
@media (min-width: 44em) {
.responsive-table tbody { display: table-row-group;}
}
.responsive-table tbody tr { margin-bottom: 1em; border: 2px solid #3399ff;}
@media (min-width: 44em) {
.responsive-table tbody tr { display: table-row; border-width: 1px;}
}
.responsive-table tbody tr:last-of-type { margin-bottom: 0;}
@media (min-width: 44em) {
.responsive-table tbody tr:nth-of-type(even) { background-color: rgba(94, 93, 82, 0.1);}
}
.responsive-table tbody th[scope="row"] { background-color: #3399ff; color: #fff;}
@media (min-width: 44em) {
.responsive-table tbody th[scope="row"] { background-color: transparent; color: #5e5d52; text-align: left;}
}
.responsive-table tbody td { text-align: right;}
@media (min-width: 30em) {
.responsive-table tbody td { border: 1px solid #3399ff;}
}
@media (min-width: 44em) {
.responsive-table tbody td { text-align: center; color:#000;}
}
.responsive-table tbody td[data-type=currency] { text-align: right;}
.responsive-table tbody td[data-title]:before { content: attr(data-title); float: left; font-size: .8em; color: #333;}
@media (min-width: 30em) {
.responsive-table tbody td[data-title]:before { font-size: .9em;}
}
@media (min-width: 44em) {
.responsive-table tbody td[data-title]:before { content: none;}
}

.responsive-table h6{ font-weight:normal; margin:0px; font-size:14px; text-align:center;}


.ratesAdditional{ margin:30px 0px 0px;}
.ratesAdditional h2{ font-size:20px; color:#666;}
.ratesAdditional ul{ padding:0px; margin:0px; border:1px solid #bbb;}
.ratesAdditional ul li{ border-bottom:1px solid #bbb; padding:0px 0px; list-style:none;}
.ratesAdditional ul li:last-child{ border-bottom:none;}
.ratesAdditional strong{ width:300px; display:inline-block; text-transform:uppercase; font-size:14px; color:rgb(53, 62, 68); font-weight:400; border-right: 1px solid #bbb; padding:10px;}
.ratesAdditional span{ display:inline-block; color:rgb(53, 62, 68); font-weight:300; padding:10px;}
.ownerInfo1 h2{ font-size:20px; color:#666;}


div.well .panel{cursor:pointer;}

div.revheading h4{font-family: 'Raleway', sans-serif;
font-size:1em;
;padding:10px 0px;
background-color:rgba(169,173,173,0.6)!important;
color:black;
font-weight:400;
letter-spacing:0.5px;}

div.jumbotron .well{background-color:rgba(32,126,134,0.2);margin-bottom:0px;}

div#menu2 .panel-body{
font-family: 'Raleway', sans-serif;
font-size:1em;
line-height:22px;
font-weight:400;}
.modernimg2{padding:0px 10px;}

.ratefeemrgset h4{font-family: 'Raleway', sans-serif;
font-size:1.2em;
margin-left:20px;
color:rgba(39,39,39,0.8);
padding: 20px 0px;}

.ratefeemrgset .panel-heading{font-family: 'Roboto', sans-serif;
font-size:15px;
background-color:rgba(233,233,233,0.6);
margin-bottom:10px;
font-weight: 400;
padding-left: 10px;
}
.fa-check-circle{color:rgba(21,224,113,1.00);
padding-right:10px;}
.top_heading_part{

    text-align: center;
    text-transform: uppercase;
    color: #000;
    margin: 50px 0px;
    font-family: 'Raleway', sans-serif;

}
.top_heading_part strong {
    display: block;
    font-size: 23px;
    font-weight: 600;
    padding: 10px 0px;
}
div.ratefeemrgset p{
    font-size:12px;
    font-family: 'Roboto', sans-serif;
    color:rgba(90,90,90,1.00);
    padding-left:30px!important;
    line-height: 30px;}

.respiframe{width:100%;}    
.lightBg { background:rgba(245, 245, 245, 0.8); }

@media screen and (min-width:0px) and (max-width:360px) {
    .respiframe{width:100%;height:200px;}
} 

@media screen and (min-width:361px) and (max-width:991px) {
    .respiframe{width:100%;height:300px;}
}
</style>

    <!-- page title -->
    <section class="page-title">
        <div class="container">
            <div class="content-box">
                <div class="title">Property <span>Details</span></div>
                <div class="bread-crumb">
                    <a href="{base_url}">Home &nbsp;</a> /&nbsp;<span>{property}{property_heading}{/property}</span> 
                </div>
            </div>
        </div>
    </section>
	
	<section class="welcome-section section-room-single section-style-2">
        <div class="container">
            <div class="row">
             <div class="col-xs-9 col-sm-9 col-md-9"> 
            
<link href="https://www.perfectstayz.com/royal/royalslider.css" rel="stylesheet">
<script src="https://www.perfectstayz.com/royal/jquery-1.8.3.min.js"></script>
<script src="https://www.perfectstayz.com/royal/jquery.royalslider.min.js?v=9.3.6"></script>
<link href="https://www.perfectstayz.com/royalreset.css?v=1.0.4" rel="stylesheet">
<link href="https://www.perfectstayz.com/royal/rs-default.css?v=1.0.4" rel="stylesheet">
<style>
	#gallery-1 {
	width: 100%;
	height:627px;
	-webkit-user-select: none;
	-moz-user-select: none;  
	user-select: none;
	}
	.royalSlider > .rsImg {
	visibility:hidden;
	}
	.royalSlider img {
	}
	.rsWebkit3d .rsSlide {
	-webkit-transform: none;
	}
	.rsWebkit3d img {
	-webkit-transform: translateZ(0);
	}
	.section-block {
    padding: 90px 0px 0px 0px !important;
    background-color: #fff;
}
</style>
 
  <div  class="page wrapper main-wrapper">  
       
<div class="row clearfix"> 
 
<div class="col span_6 fwImage">
  <div id="gallery-1" class="royalSlider rsDefault">
      {fdb}
     
      <a class="rsImg"  data-rsBigImg="uploads/{property_id}/{file_name}" href="uploads/{property_id}/{file_name}">
        <img width="96" height="72" class="rsTmb" src="uploads/{property_id}/{file_name}" />
    </a>
      {/fdb}
     
  </div>
</div>
</div>

  </div>
  <div class="wrapper page">
      
  
    <script>
      jQuery(document).ready(function($) {


  $('#gallery-1').royalSlider({
    fullscreen: {
      enabled: true,
      nativeFS: true
    },
    controlNavigation: 'thumbnails',
    autoScaleSlider: true, 
    autoScaleSliderWidth: 960,     
    autoScaleSliderHeight: 550,
    loop: false,
    imageScaleMode: 'fit-if-smaller',
    navigateByClick: true,
    numImagesToPreload:2,
    arrowsNav:true,
    arrowsNavAutoHide: true,
    arrowsNavHideOnTouch: true,
    keyboardNavEnabled: true,
    fadeinLoadedSlide: true,
    globalCaption: true,
    globalCaptionInside: false,
    thumbs: {
      appendSpan: true,
      firstMargin: true,
      paddingBottom: 4
    }
  });

    $('.rsContainer').on('touchmove touchend', function(){});

});

    </script>
  

  
  <div style="display:none;"> 
      
  </div>
 
			</div>
			
			<div class="room-description">
                        <h2 class="title-top">{property}{property_heading}{/property}</h2>
                  		<div class="section-starter"></div>
                        <div class="content more">{property}{property_content}{property}
</div>
                        <div id="cal" class="clearfix">&nbsp;</div>
                          <div class="rooms-catagori" >
                        <br />
                            <h3>Availability</h3>
                            <div class="row">
                                <iframe src="<?php echo base_url();?>calender/calender.php?property={property_id}{/property}" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                        </div>    
                        
                          <h2 class="title">Rates</h2>

                        <div class="section-starter"></div>
 
                     <table cellpadding="0" cellspacing="0" class="responsive-table">
                              <thead>
                                <tr>
                                  <th scope="col">Dates</th>
                                  <th scope="col">Nightly</th>
                                  <th scope="col">Weekend Night</th>
                                  <th scope="col">Weekly</th>
                                  <th scope="col">Monthly</th>
                                  <th scope="col">Minimum Stay</th>
                                </tr>
                              </thead>
                              <tbody>
                                {rdb}

                                <tr>
                                  <th data-title="Dates" scope="row">{pro_new_rate_desc}<spam>({pro_new_rate_sdate})</spam> </th>
                                   <td data-title="Nightly"> ${pro_new_rate_week_nt} </td>
                                   <td data-title="Weekend Night"> ${pro_new_rate_weekend_nt} </td>
                                   <td data-title="Weekly"> ${pro_new_rate_weekly_nt} </td>
                                   <td data-title="Monthly"> ${pro_new_rate_monthly}</td>
                                    <td data-title="Min">{pro_new_rate_min_stay}night min stay</td>
                                 </tr>
                                {/rdb}
                             <?php  /* <tr>
                                  <th data-title="Dates" scope="row">Labor Day<spam>(Aug 30-2018 - Sep 04-2018                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">3 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Leaf Season 2017<spam>(Oct 04-2018 - Nov 13-2018                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> </td>
                                    <td data-title="Min">3 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Thanksgiving<spam>(Nov 21-2018 - Nov 28-2018                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">5 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Christmas/New Year<spam>(Dec 20-2018 - Jan 01-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">5 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Winter Season<spam>(Jan 02-2019 - Feb 13-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $268 </td>
                                   <td data-title="Weekend Night"> $331 </td>
                                   <td data-title="Weekly"> $1528 </td>
                                   <td data-title="Monthly"> $3600</td>
                                    <td data-title="Min">3 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Valentines Day<spam>(Feb 14-2019 - Feb 17-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly">  </td>
                                   <td data-title="Monthly"> </td>
                                    <td data-title="Min">3 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Easter<spam>(Apr 18-2019 - Apr 22-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">4 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">Memorial Day<spam>(May 23-2019 - May 27-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night">  </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">5 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">My Standard Rate </th>
                                   <td data-title="Nightly"> $335 </td>
                                   <td data-title="Weekend Night"> $390 </td>
                                   <td data-title="Weekly"> $1910 </td>
                                   <td data-title="Monthly"> $4500</td>
                                    <td data-title="Min">3 night min stay</td>
                                 </tr>
                                                                 <tr>
                                  <th data-title="Dates" scope="row">July<spam>(Jul 01-2019 - Jul 31-2019                                 )</spam> </th>
                                   <td data-title="Nightly"> $385 </td>
                                   <td data-title="Weekend Night"> $445 </td>
                                   <td data-title="Weekly"> $2325 </td>
                                   <td data-title="Monthly"> </td>
                                    <td data-title="Min">5 night min stay</td>
                                 </tr>*/ ?>
                                                                 </tbody>
                            </table>
                            <strong>Additional information about rental rates</strong>
                                <div class="ownerInfo1 margin-top-big" >
                                    <strong>Fees</strong>
                                        <p>Cleaning Fee  --  ${edb}{pro_cleaning_fee}{/edb}</p> 
                                        <p>Tax Rate --{edb}{add_fees}{/edb}%</p>
                                </div>
                            <strong>Notes</strong>
                           
                            {edb}{notes}{/edb}
                            <div class="ownerInfo1 margin-top-big">
                              <strong>Cancellation Policy:</strong>
                              <p>{edb}{can_policy}{/edb}</p>
                            </div>
                            
                                          
                       <style>
.panel-heading .accordion-toggle:after {
    /* symbol for "opening" panels */
    font-family: 'Glyphicons Halflings';  /* essential for enabling glyphicon */
    content: "\e114";    /* adjust as needed, taken from bootstrap.css */
    float: right;        /* adjust as needed */
    color: grey;         /* adjust as needed */
}
.panel-heading .accordion-toggle.collapsed:after {
    /* symbol for "collapsed" panels */
    content: "\e080";    /* adjust as needed, taken from bootstrap.css */
}

</style>                       
                      
  
                  
<div class="container"> 
    <h2 class="title">Additional Information</h2>
    <div class="section-starter"></div>
  <div class="panel-group" id="accordion">
 
   
         
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse1">
          General        </a>
      </h3>
    </div>
    <div id="collapse1" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>air conditioning</li>
                                                                      	
					         <li>clothes dryer</li>
                                                                      	
					         <li>fireplace</li>
                                                                      	
					         <li>hair dryer</li>
                                                                      	
					         <li>Central Heating</li>
                                                                      	
					         <li>Internet access</li>
                                                                      	
					         <li>living room</li>
                                                                      	
					         <li>parking</li>
                                                                      	
					         <li>Washing machine</li>
                                                                      	
					         <li>wireless connection</li>
                                                                      	
					         <li>Iron</li>
                                                                      	
					         <li>Board Dishwasher</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
          Kitchen        </a>
      </h3>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>coffee machine</li>
                                                                      	
					         <li>Dishes and Utensils</li>
                                                                      	
					         <li>dishwasher</li>
                                                                      	
					         <li>Full Kitchen</li>
                                                                      	
					         <li>microwave oven</li>
                                                                      	
					         <li>oven</li>
                                                                      	
					         <li>spices</li>
                                                                      	
					         <li>refrigerator</li>
                                                                      	
					         <li>cooker</li>
                                                                      	
					         <li>toaster</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse3">
          Dining room        </a>
      </h3>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>dining area</li>
                                                                      	
					         <li>8 places</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse4">
          Bathrooms        </a>
      </h3>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>2 Bathrooms</li>
                                                                      	
					         <li>1 toilet</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse5">
          Bedrooms        </a>
      </h3>
    </div>
    <div id="collapse5" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>4 bedrooms</li>
                                                                      	
					         <li>sleeps maximum of 8 people</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse6">
          Entertainment        </a>
      </h3>
    </div>
    <div id="collapse6" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>DVD player</li>
                                                                      	
					         <li>cable or satellite tv</li>
                                                                      	
					         <li>stereo</li>
                                                                      	
					         <li>Smart TV</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse7">
          Outside        </a>
      </h3>
    </div>
    <div id="collapse7" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>Deck / Patio</li>
                                                                      	
					         <li>garden / lawn</li>
                                                                      	
					         <li>barbecue grill</li>
                                                                      	
					         <li>lake/pond</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse8">
          Other         </a>
      </h3>
    </div>
    <div id="collapse8" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>Arboretum</li>
                                                                      	
					         <li>Botanical Garden</li>
                                                                      	
					         <li>Churches</li>
                                                                      	
					         <li>Movie theaters</li>
                                                                      	
					         <li>festivals</li>
                                                                      	
					         <li>health / beauty spa</li>
                                                                      	
					         <li>Library</li>
                                                                      	
					         <li>playground</li>
                                                                      	
					         <li>Recreation center</li>
                                                                      	
					         <li>winery tours</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse9">
          Leisure activities        </a>
      </h3>
    </div>
    <div id="collapse9" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>Paddle boating</li>
                                                                      	
					         <li>horse riding</li>
                                                                      	
					         <li>miniature golf</li>
                                                                      	
					         <li>photography</li>
                                                                      	
					         <li>Panoramic roads</li>
                                                                      	
					         <li>mall</li>
                                                                      	
					         <li>picturesque landscapes</li>
                                                                      	
					         <li>walking</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse10">
          Local Services &amp; Businesses        </a>
      </h3>
    </div>
    <div id="collapse10" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>ATMs</li>
                                                                      	
					         <li>fitness center</li>
                                                                      	
					         <li>supermarket</li>
                                                                      	
					         <li>Hospital</li>
                                                                      	
					         <li>automatic laundry</li>
                                                                      	
					         <li>masseur</li>
                                                                      	
					         <li>health care</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
      
     <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse11">
          Sports and Adventure Activities        </a>
      </h3>
    </div>
    <div id="collapse11" class="panel-collapse collapse">
      <div class="panel-body">
        <ul class="amnt">
                                                                     	
					         <li>cycling</li>
                                                                      	
					         <li>fishing with rod</li>
                                                                      	
					         <li>freshwater fishing</li>
                                                                      	
					         <li>golf</li>
                                                                      	
					         <li>hunting</li>
                                                                      	
					         <li>mountain bike</li>
                                                                      	
					         <li>mountaineering</li>
                                                                      	
					         <li>sneakers</li>
                         					
                      	</ul>
      </div>
    </div>
  </div>
    
  </div> 
</div>
 

                    </div>
</div>
                              <div class="col-md-3">
                    <h3 class="hidden">Room side bar</h3>
                                        <div class="widget-box text-center">
                       <em >from <span class="price">$367</span> avg / night</em>					   
                    </div>
					<div align="center"><a href="property/1#cal"><button class="btn-lg btn-success">Book Now</button></a></div>
                     
                    <h2 class="title-top">Details</h2>
                    <div class="section-starter"></div>
                     <div class="keywords widget-box ">
                                                <p><span class="one">Property</span>: <span class="two">House</span></p>
                                                                     <p><span class="one">Sleeps</span>: <span class="two">8</span></p>
                                                                     <p><span class="one">Bedrooms</span>: <span class="two">4</span></p>
                                                                     <p><span class="one">Bathrooms</span>: <span class="two">2.5</span></p>
                                                                     <p><span class="one">Minimum Stay</span>: <span class="two">3 Nights</span></p>
                                           </div>
                    
                    
                   <h2 class="title-top">Quick Connect</h2>
                    <div class="section-starter"></div>
                     <div class="conn widget-box ">
                                              <p><span class="one"><i class="fa fa-phone" aria-hidden="true"></i></span>: <span class="two">828-222-0440</span></p>                       <p><span class="one"><i class="fa fa-envelope" aria-hidden="true"></i></span>: <span class="two"><a href="mailto:info@ashevillelodgings.com" title="">info@ashevillelodgings.com</a></span></p>
                     
                    </div>
                   
                    
                    
                </div>
              
            </div>
        </div>
    </section>
    <section class="faqs-section faq-page">
    	<div class="container">
    		<div class="row">
	    		<div class="col-md-12 col-sm-12 col-xs-12">
	    			<div class="accrodian-area">
                        <div class="accordion-box">
					                            <div class="accordion animated out" data-delay="0" data-animation="fadeInUp">
                                <div class="acc-btn">
                                    Allen H.                                    <div class="toggle-icon">
                                        <i class="plus fa fa-angle-down"></i><i class="minus fa fa-angle-up"></i>
                                    </div>
                                </div>
                                <div class="acc-content">
                                    <p><p>Eight of us went up for an "Extended Family" short vacation. Ages from 17 to 87, and it was the perfect place! Lots of room to spread out and enjoy ourselves yet still be able to have our space. 2 small dogs enjoyed the rabbits, and fish. Pond was beautiful and stocked with lots of fish. Fish Food when we arrived was an unexpected surprise!</p>

<p>Close to downtown Asheville and right off the highway, and close to Grocery Stores and restaurants, etc.</p>

<p>House was nice and well equipped. Would definitely stay again!</p>

<p>Kudo&#39;s to the Owners!</p>

<p>Perfect for 2 families to stay and enjoy all the surrounding areas have to offer.</p>
</p>
                                </div>
                            </div>
				                            <div class="accordion animated out" data-delay="0" data-animation="fadeInUp">
                                <div class="acc-btn">
                                    Kathleen Q.                                    <div class="toggle-icon">
                                        <i class="plus fa fa-angle-down"></i><i class="minus fa fa-angle-up"></i>
                                    </div>
                                </div>
                                <div class="acc-content">
                                    <p><p>We had a great vacation at this very conveniently located home. Very close to the Ingles supermarket, it is on it&#39;s own private road and actually feels quite remote when you pull into the driveway and explore the property. Sitting on the front porch, overlooking the pond, we had the sense of serenity and privacy. The house was perfect for us as my husband and I had comfortable surroundings to enjoy while my son and his family explored the mountains, river rafting and beautiful water holes in the surrounding mountains. We toured the Biltmore estate, had a wine tasting, lunch at the Grove Park Inn, attended the Folk Dance and Music Festival , took the Hop On Trolly Tour and walked through the gorgeous NC Arboretum which had a Lego sculpture exhibit integrated into the beautiful gardens.</p>

<p>My husband is a baseball nut and the TVs had all the channels he could want. The kitchen lent itself to fun family meals as we sat around the large table for eight.</p>

<p>We had a minor issue that when reported was immediately taken care of and the owner was extremely responsive. I&#39;d recommend this house to any family.</p>
</p>
                                </div>
                            </div>
				                        </div>
                    </div>
                </div>
            </div>
         </div>
      </section>                      



     
<script type="text/javascript">
$(document).ready(function() {
    // Configure/customize these variables.
	    var showChar =1934;  // How many characters are shown by default
			    var ellipsestext = "...";
    var moretext = "Show More >";
    var lesstext = "Show Less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<div class="moreellipses">' + ellipsestext+ '&nbsp;</div><div class="morecontent"><div>' + h + '</div>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></div>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});
</script>
 

   <?php $this->load->view('common/footer'); ?>
