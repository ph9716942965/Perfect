 <!-- main footer area -->
 <footer class="main-footer-area footer-style-two">
        <div class="container">
            <div class="footer-top centred sec-pad">
                <div class="footer-logo"><a href="{base_url}"><figure><img src="{assets_url}images/ash-logo.png" alt=""></figure></a></div>
                <ul class="footer-menu">
                    <li><a href="{base_url}" class="active">Home</a></li> 
                    <li><a href="{base_url}reviews" class="">Reviews</a></li>
                    <li><a href="{base_url}attraction" class="">Attractions</a></li> 
                    <li><a href="{base_url}contact_us" class="">Contact Us</a></li>
                </ul>
                <ul class="footer-social">
                    <li><a href="{facebook_url}"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="{twitter_url}"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="{gplus_url}"><i class="fab fa-google-plus-g"></i></a></li> 
                </ul>
            </div>
        </div>
        <div class="footer-bottom centred">
            <div class="copyright">Copyright &copy; 2018 <a href="#">Asheville Lodgings</a>. All Rights Reserved</div>
			<div class="copyright">Designed & Developed By <a href="https://greatwebmakers.com/"><img src="https://greatwebmakers.com/images/logo.png" style="width:165px" /></a></div>
        </div>
    </footer>
    <!-- main-footer-area end -->


    
<!--End pagewrapper-->


<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".main-header"><span class="icon fa fa-angle-up"></span></div>


<!--jquery js -->


<script type="text/javascript" src="{assets_url}js/jquery-2.1.4.js"></script>
<script src="{assets_url}js/bootstrap.min.js"></script>
<script src="{assets_url}js/owl.carousel.min.js"></script>
<script src="{assets_url}js/wow.js"></script>
<script src="{assets_url}js/validation.js"></script>
<script src="{assets_url}js/isotope.js"></script>
<script src="{assets_url}js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="{assets_url}js/SmoothScroll.js"></script>
<script src="{assets_url}js/html5lightbox/html5lightbox.js"></script>
<script src="{assets_url}js/jquery.countdown.js"></script> 

<!-- revolution -->
<script src="{assets_url}vendor/revolution/jquery.themepunch.tools.min.js"></script>
<script src="{assets_url}vendor/revolution/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="{assets_url}vendor/revolution/revolution.extension.migration.min.js"></script>
<script src="{assets_url}js/script.js"></script>
<script src="http://tna.aztechtcs.com/assets/angular.min.js" ></script>
<script>
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
    $scope.records = <?php echo $this->Api->property_h();?>});
</script>
<!-- End of .page_wrapper -->
</body> 
</html>
