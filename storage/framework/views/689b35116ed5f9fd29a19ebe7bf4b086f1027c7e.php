<?php
    $about_title = SM::smGetThemeOption("about_title");
    $about_subtitle = SM::smGetThemeOption("about_subtitle");
    $about_description = SM::smGetThemeOption("about_description");
    $about_feature_title = SM::smGetThemeOption("about_feature_title");
    $total_experience = SM::smGetThemeOption("total_experience");
    $happy_client = SM::smGetThemeOption("happy_client");
    $total_awards = SM::smGetThemeOption("total_awards");

?>

<?php $__env->startSection('title', ''); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('frontend.common.slider', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<!--  Main start -->
        <main>
            <!-- Service start -->

            <?php
            $featured_categories = \App\Model\Common\Category::Published()
            // ->IsFeatured()
            ->orderBy('priority')
            ->take(6)
            ->get();
            ?>
            <div class="row services">
                <div class="overflow_hidden">
                    <div class="radius_row_niz services_row">
                        <div class="container">
                            <div class="row row-15">
                               <?php $__currentLoopData = $featured_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fcKey=> $f_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                $segment = Request::segment(2);
                                if ($segment == $f_category->slug) {
                                    $add_class = 'show active';
                                } else {
                                    $add_class = '';
                                }
                                ?>
                            <!-- Service item start -->
                                <a href="<?php echo e(url('category/'.$f_category->slug )); ?>" class="services_item">
                                    <span class="services_item_title"><?php echo $f_category->title; ?></span>
                                    <span class="services_item_desc"><?php echo $f_category->description; ?></span>
                                </a>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <!-- Service item end -->
                            </div>
                            
                            <div class="view_servises">
                                <a href="<?php echo e(url('category/'.$f_category->slug )); ?>" class="btn_white">View all servises</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service end -->

            <!-- About start -->
            <div class="container about">
                <div class="row">
                   <!-- About left col start -->
                   <div class="col-2 about_left">
                        <div class="row">
                            <h1><?php echo e($about_title); ?></h1>
                            <div class="about_left_h2">
                               <?php echo e($about_subtitle); ?>

                            </div>
                            <div class="about_left_text">
                            <?php echo stripslashes($about_description); ?>

                            </div>
                            
                            <!-- Advantages start -->
                            <div class="row advantages">
                                <div class="advantages_item"> 
                                    <strong><?php echo e($total_experience); ?></strong>
                                    <span>years of experience</span> 
                                </div>
                                <div class="advantages_item"> 
                                    <strong><?php echo e($happy_client); ?></strong>
                                    <span>happy clients</span> 
                                </div>
                                <div class="advantages_item"> 
                                    <strong><?php echo e($total_awards); ?></strong>
                                    <span>awards in industry</span> 
                                </div>
                            </div>
                            <!-- Advantages end -->
                        </div>
                    </div>
                    <!-- About left col end --> 


                    <!-- About right col start -->
                    <div class="col-2 about_right">
                        <!-- About image start -->
                        <div class="row about_image">
                            <!-- About image left col start -->
                            <?php
                                $image = SM::smGetThemeOption("about_Left_image", array());
                                ?>
                            <div class="col-2 about_image_left">
                            <?php $__currentLoopData = $image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <img class="lozad" src="<?php echo SM::sm_get_the_src($value["about_left_image"]); ?>"  alt="DiDent" />
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <!-- About image left col end -->
                           <!-- About image right col start -->
                           <?php
                                $image = SM::smGetThemeOption("about_image", array());
                                ?>
                            <div class="col-2 about_image_right">
                            <?php $__currentLoopData = $image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <img class="lozad" src="<?php echo SM::sm_get_the_src($value["about_right_image"]); ?>" alt="DiDent" />
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            
                            <!-- About image right col end -->
                        </div>
                        <!-- About image end -->
                    </div>
                    <!-- About right col end -->
                </div>
            </div>
            <!-- About end -->

            <!-- Certificates start -->
            <div class="row certificates" style="display: none;">
                <div class="container row">
                    <h4>Certificates & Associations</h4>
                    <div class="navigation"></div>
                </div>
                
                            <?php
                                $image = SM::smGetThemeOption("cirtificate", array());
                            ?>
                <div class="owl_certificates owl-carousel">
                  <?php $__currentLoopData = $image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="item">
                        <a href="<?php echo SM::sm_get_the_src($value["cirtificate_image"]); ?>">
                        <img class="owl-lazy" src="<?php echo SM::sm_get_the_src($value["cirtificate_image"]); ?>"  alt="DiDent" />
                        </a>
                     </div>
                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                 
                 </div>
            </div>
            <!-- Certificates end -->


            <!-- Start Testimonials -->
            <div class="testimonials upload_file_nahid" style="background-image: url('https://www.abbysmilecare.com/wp-content/uploads/2019/07/root-canal-treatment.jpg');"> 
               <div class="background_overlay">
                <div class="row">
                    <div class="row testimonials_title">
                        <div class="container">
                            <div class="row testimonials_title_row">
                                <div class="col-2 testimonials_title_l">
                                    <h3>Testimonials</h3>
                                </div>
                                <div class="col-2 testimonials_title_r">
                                    <a href="#" class="btn_transparent">Leave Feedback</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    $testimonial = SM::smGetThemeOption("testimonials", array());
                    ?>
                    <div class="owl_testimonials owl-carousel owl-theme"> 
                    <?php $__currentLoopData = $testimonial; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <!-- Start Testimonials Item -->
                        <div class="item">
                            <div class="slideshow-image"><img class="lozad" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/story_avatar_2.png" data-srcset="img/story_avatar_2.png, img/story_avatar_2@2x.png 2x" alt="DiDent"></div> 
                            <div class="ale_bg_overlay" style="background-color: rgba(0,0,0,0.20)"></div>
                            <div class="container">
                                <div class="row owl_testimonials_top">
                                    <div class="owl_testimonials_top_img"><img class="lozad" src="<?php echo SM::sm_get_the_src($value['testimonial_image']); ?>"  alt="DiDent" /></div>
                                    <div class="owl_testimonials_top_r">
                                        <div class="owl_testimonials_top_r_name"><?php echo e($value['title']); ?></div>
                                        <div class="rating">
                                            <span>4.0</span>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star deactivate"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="row owl_testimonials_text">
                                     <?php echo e($value['description']); ?>

                                </div>
                                <div class="rating_date">
                                    <i class="fa fa-yelp"></i>
                                    <?php echo e($value['date']); ?>

                                </div>
                            </div>
                        </div>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <!-- End Testimonials Item --> 
                       </div>
                </div>
                </div>
            </div>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>