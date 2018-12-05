<?php $this->load->view('common/header'); ?>

  <!-- page title -->
  <section class="page-title">
        <div class="container">
            <div class="content-box">
                <div class="title">Contact <span>Us</span></div>
                <div class="bread-crumb">
                    <a href="{base_url}">Home &nbsp;</a> /&nbsp;<span>Contact Us</span> 
                </div>
            </div>
        </div>
    </section>
    <!--End Page Title-->


    <!-- contact info -->
    <section class="contact-info centred">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12 contact-column">
                    <div class="single-item">
                        <div class="title"><h3>ADDRESS</h3></div>
                        <div class="text">{contact_content}</div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 contact-column">
                    <div class="single-item">
                        <div class="title"><h3>Phone Number</h3></div>
                        <div class="text">{contact_phone}</div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12 contact-column">
                    <div class="single-item hvr-grow-shadow">
                        <div class="title"><h3>Email</h3></div>
                        <div class="text">{contact_email}</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- contact info end -->
    

    <!-- contact section -->
    <section class="contact-section">
        <div class="container">
            <div class="contact-title centred">Contact form</div>
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12 column">
                    <span style="color:red;"><?php echo @$msg;?></span>
                    <div class="contact-area">
                        <form  name="contact_form" class="default-form" action="" method="post">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="name" value="" placeholder="Your Name" required="">
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="email" name="email" value="" placeholder="Your Email" required="">
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <input type="text" name="phone" value="" placeholder="Phone" required="">
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <textarea placeholder="Your Message" name="message" required=""></textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn-one" name="submit" >SEND YOUR MESSAGE</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12 contact-column">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.669038036777!2d-82.59587268511427!3d35.66052498019906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88598aedfcc67e37%3A0xd11efc754b8e54f1!2s105+Appalachian+Village+Rd%2C+Asheville%2C+NC+28804%2C+USA!5e0!3m2!1sen!2sin!4v1534868202606" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- contact section end -->


    <!-- main footer area -->
<?php $this->load->view('common/footer'); ?>