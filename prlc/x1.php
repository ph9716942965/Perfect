<div class="col-xs-12 col-sm-12 col-md-12 ">

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
    <a class="rsImg"  data-rsBigImg="assets/img/t1.jpg" href="assets/img/t1.jpg"><img width="96" height="72" class="rsTmb" src="assets/img/t1.jpg" /></a>
    <a class="rsImg"  data-rsBigImg="assets/img/t2.jpg" href="assets/img/t2.jpg"><img width="96" height="72" class="rsTmb" src="assets/img/t2.jpg" /></a>
    <a class="rsImg"  data-rsBigImg="assets/img/t3.png" href="assets/img/t3.png"><img width="96" height="72" class="rsTmb" src="assets/img/t3.png" /></a>
    <a class="rsImg"  data-rsBigImg="assets/img/t4.jpg" href="assets/img/t4.jpg"><img width="96" height="72" class="rsTmb" src="assets/img/t4.jpg" /></a>
    
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
</div>