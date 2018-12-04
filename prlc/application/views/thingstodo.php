<?php $this->load->view('common/header'); ?>
<!-- Menu Responsive End --> 


        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="#">Home</a></li>
                	<li>Pine Ridge Soap</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-typography">
					<div class="row box-alter-40 clearfix">
 
 
		<div class="tab_container">
			<input id="tab1" type="radio" name="tabs" checked>
			<label for="tab1"><span>Top of the Rock</span></label>

			<input id="tab2" type="radio" name="tabs">
			<label for="tab2"><span>Dogwood Canyon</span></label>

			
			<section id="content1" class="tab-content">
                 <iframe src="<?php echo base_url('x1.php');?>" style="width:100%; height:700px"></iframe> 
                 
			</section>

			<section id="content2" class="tab-content">
				 
		      <iframe src="<?php echo base_url('x2.php');?>" style="width:100%; height:700px"></iframe> 

 
			</section>

	 
		</div>
					</div><!-- /.row -->
                    
				    <!-- /.row -->
				</div>
			</div><!-- /.md-wrapper  .md-typography -->

			
            <!-- footer : starts -->
<?php $this->load->view('common/footer'); ?>