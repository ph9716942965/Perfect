<?php $this->load->view('common/header'); ?>
  <!-- page title -->
  <section class="page-title">
        <div class="container">
            <div class="content-box">
                <div class="title"><span>Attractions</span></div>
                <div class="bread-crumb">
                    <a href="{base_url}">Home &nbsp;</a> /&nbsp;<span>Attractions</span> 
                </div>
            </div>
        </div>
    </section>
    <!--End Page Title-->


    <!-- blog classic -->
    <section class="blog-classic news-section blog-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 content-side">
                    <div class="blog-classic-content">
                   {gallery}
                        <div class="single-item col-md-6">
                            <div class="img-box">
                                <a href="javascript:void(0)"><figure><img src="{img}" alt=""></figure></a>
                            </div>
                            <div class="lower-content">
                                <h4><a href="Attractions">{heading}</a></h4>
                                <div class="text"><p>{content}</p></div> 
                            </div>
                        </div>
                    {/gallery}
                    </div>
                </div>
                 
            </div>
        </div>
    </section>

<?php $this->load->view('common/footer'); ?>