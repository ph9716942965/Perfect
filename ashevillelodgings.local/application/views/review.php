<?php $this->load->view('common/header'); ?>

    <!-- page title -->
    <section class="page-title">
        <div class="container">
            <div class="content-box">
                <div class="title">Reviews</span></div>
                <div class="bread-crumb">
                    <a href="{base_url}">Home &nbsp;</a> /&nbsp;<span>Reviews</span> 
                </div>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- blog classic -->
    <section class="blog-details news-section blog-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 content-side">
                    <div class="blog-details-content">
                        
                        <div class="comment-area">
           
                 {Review_r}
                             <div class="single-comment"> 
                                <div class="title">{c_name}</div>
                                <!-- <div class="time">
                                    <div class="text">Aug 27,2017</div>
                                   </div> -->
                                <div class="text">
                                    <p>{c_review}</p>
                                </div>
                            </div>
               {/Review_r}
                            
                        </div>
                        <div class="comment-form">
                            <div class="comment-title" align="center">LEAVE A REVIEW</div>
                            <form  name="contact_form" class="default-form" action="add_review.php" method="post">
                                <div class="row">
                                <div class="col-md-8 col-xs-offset-2">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="name" value="" placeholder="Name" required="">
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="email" name="email" value="" placeholder="Email Address" required="">
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="date" name="date" value="" placeholder="Date" required="">
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="title" value="" placeholder="Title" required="">
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <select name="pid" class="form-control">
                                            <option>Select property</option>
                                            {property_2}
                                            <option value="{property_id}">{property_heading}></option>
                                            {/property_2}
                                        </select><br>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <textarea placeholder="Review" name="review" required=""></textarea>
                                    </div>
                                     <button type="submit" class="btn-one" name="submit" >SEND YOUR MESSAGE</button>
                                </div>
                               
                               </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- blog classic end -->


    <!-- main footer area -->
<?php $this->load->view('common/footer'); ?>