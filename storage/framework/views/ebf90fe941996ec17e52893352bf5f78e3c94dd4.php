    <?php
    $countStickyPost = count($stickyBlogPost);
    $isBreadcrumbEnable = SM::smGetThemeOption("blog_is_breadcrumb_enable", false);

    $pagination = [
        [
            "title" => "Blog"
        ]
    ];
    $title = SM::smGetThemeOption("blog_banner_title");
    $subtitle = SM::smGetThemeOption("blog_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("blog_banner_image");
    $blog_popular_is_enable = SM::smGetThemeOption( "blog_popular_is_enable", 1 );
    $blog_show_category = SM::smGetThemeOption( "blog_show_category", 1 );
    $blog_show_tag = SM::smGetThemeOption( "blog_show_tag", 1 );
    $blog_sidebar_add = SM::smGetThemeOption( "blog_sidebar_add", 1 );
    ?>


<?php $__env->startSection('content'); ?>
<main> 
 <!-- Header block start -->
 <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="<?php echo SM::sm_get_the_src($bannerImage); ?>">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h1><?php echo e($title); ?></h1>
                                <p><?php echo e($subtitle); ?></p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
			<!-- Header block end -->


        <div class="row category_content">
            <div class="container"> 
                <h2><?php echo e($title); ?></h2>
                <div class="row">
                    
                    <!-- Col Left Start -->
                     <?php if($countStickyPost>0): ?>
                    <div class="row col_left"> 
                         
                        <div class="row row-15 blog_grid more3"> 
                             <div class="row">
                                <?php $__currentLoopData = $stickyBlogPost; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <!-- Blog Item Start -->
                                <div class="col-2 blogBox blog_item">
                                    <div class="blog_grid_p">
                                    <div class="row blog_item_vn">
                                        <div class="overflow_hidden blog_item_img">
                                            <div class="radius_niz">
                                                <a href="<?php echo url( "blog/$blog->slug" ); ?>"><img class="lozad" src="<?php echo SM::sm_get_the_src( $blog->image); ?>" alt="DiDent" /></a>
                                            </div>
                                        </div> 
                                        <div class="blog_item_cont">
                                            <a href="<?php echo url( "blog/$blog->slug" ); ?>" class="blog_item_title"><?php echo e($blog->title); ?></a>
                                            <span class="date"><?php echo e(date("F d, Y", strtotime($blog->created_at))); ?></span>
                                            <p><?php echo e($blog->short_description); ?></p>
                                            <a href="<?php echo url( "blog/$blog->slug" ); ?>" class="more">Learn more</a>
                                        </div> 
                                    </div>
                                    </div>
                                </div>
                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <!-- Blog Item End -->
                            </div>
                        </div>
                          
                    <div class="center row"><a href="#" id="loadMore" class="btn">Load More</a></div>                             
                    </div>
                      <?php endif; ?>
                    <!-- Best Left End--> 
                    
                    <!-- Col Right Sidebar Start -->
                    <div class="row col_right sidebar">
                       <!-- Subscription Start -->
                       <div class="row subscription">
                            <div class="subscription_top">
                                <div class="wighet-title">Subscription</div>
                                <i class="dental_icon dentalic_letter"></i>
                            </div>
                            <div class="subscription_input input_white">
                                <label>Email</label>
                                <input class="white" placeholder="Your Email" />
                                <input type="submit" value="Subscribe" />
                            </div>
                       </div>
                       <!-- Subscription End -->
                     
                       <!-- Follow Us On Start -->
                       <div class="row follow_us_on block_sidebar">
                            <div class="wighet-title">Follow Us on</div>
                            <div class="row block_sidebar_content">
                                <div class="sidebar_social_button">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-rss"></i></a> 
                                </div>
                            </div>
                       </div>
                       <!-- Follow Us On End -->
                       
                       <!-- Categories Start -->
                        <?php if($blog_show_category==1): ?>
                        <?php
                        $getCategories = SM::getCategories(0);
                        ?>
                        <?php if(count($getCategories)>0): ?>
                       <div class="row block_categories block_sidebar">
                            <div class="wighet-title">Categories</div>
                            <div class="row block_sidebar_content">
                                <div class="sidebar_categories"> 
                                    <!-- Categories Url Start -->
                                    <ul>
                                         <?php $__currentLoopData = $getCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li class="row">
                                            <a href="<?php echo url("blog/category/".$cat->slug); ?>"> <?php echo e($cat->title); ?></a>
                                           <span>( <?php echo e(count($cat->blogs)); ?> )</span>
                                        </li>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>  
                                    <!-- Categories Url End --> 
                                    </div>
                            </div>
                       </div>
                           </aside>
        <?php endif; ?>
    <?php endif; ?>
                       <!-- Categories End --> 
                       
                    </div>
                    <!-- Col Right Sidebar End-->
                </div>
            </div>
        </div>
        <!-- Blog Category Content End --> 
        




    </main>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>