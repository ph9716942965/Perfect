<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>
 <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="index.php">Home</a></li>
                	<li>Things To Do Close By</li>
                </ul>
            </div>
        </div>


			<div class="container">
			<?php 
						query_posts(array('post_type'=>'post', 'order'=>'asc'));
						if(have_posts()): while(have_posts()): the_post(); 
					?>
			
				<div class="thingstodo">
				<div class="things">
					<div class="row">
					<div class="col-sm-4">
						<div class="things-img"><a href="<?php the_permalink();?>"><img src="<?php echo get_the_post_thumbnail_url();?>" class="img-responsive"></a></div>
					</div>
					<div class="col-sm-8">
						<div class="things-content">
						<h3 class="things-title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h3>
						<p><?php
echo wp_trim_words( get_the_content(), 150, '...' );
?></p>
						<a href="<?php the_permalink();?>" class="btn btn-primary">Read More</a>
						
						</div>
					</div>
				</div>
					</div>
					</div>
					
					<?php endwhile; endif; wp_reset_query(); ?>
				</div>
				
			</div><!-- /.md-wrapper  -->

	

		
<?php get_footer(); ?>
