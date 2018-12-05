<?php $this->load->view('common/header');?>
<style>
h4.prop-title a {
    font-size: 17px;
}
</style>
    <!-- page title -->
    <section class="page-title">
        <div class="container">
            <div class="content-box">
                <div class="title"><span>Vacation Rentals</span></div>
                <div class="bread-crumb">
                    <a href="{base_url}">Home &nbsp;</a> /&nbsp;<span>Vacation Rentals</span> 
                </div>
            </div>
        </div>
    </section>
    <!--End Page Title-->


    <!-- blog classic -->
    <section class="welcome-section">
        <div class="container">
 
            <div class="row">
       
             {property_r}
                <div class="col-md-4 col-sm-6 col-xs-12 welcome-column">
                    <div class="single-item">
                        <div class="img-box"><figure>
                            <a href="property/{property_id}"><img style="height:270px" src="uploads/{property_id}/{file_name}" alt=""></a></figure></div>
                        <div class="lower-content" style="text-align:center">
                            <div class="content-text">
                                <h3 style="font-size:21px">{property_heading}</h3> 
                            </div>
                            <div class="button"><a href="property/{property_id}">Book Now</a></div>
                        </div>
                    </div>
                </div>

            {/property_r}
                
            </div>
        </div>
    </section>
    <!-- blog classic end -->



<?php $this->load->view('common/footer');?>
