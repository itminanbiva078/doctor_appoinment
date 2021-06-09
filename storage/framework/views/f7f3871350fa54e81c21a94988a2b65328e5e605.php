<?php
    $about_title = SM::smGetThemeOption("about_title");
    $about_subtitle = SM::smGetThemeOption("about_subtitle");
    $about_description = SM::smGetThemeOption("about_description");
    $about_feature_title = SM::smGetThemeOption("about_feature_title");
    $about_banar_title = SM::smGetThemeOption("about_banar_title");
    $about_banar_subtitle = SM::smGetThemeOption("about_banar_subtitle");
    $about_banner_image = SM::smGetThemeOption("about_banner_image");
?>

<?php $__env->startSection('content'); ?>
<main> 
 <!-- Header block start -->
 <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="<?php echo SM::sm_get_the_src($about_banner_image); ?>">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h1><?php echo e($about_banar_title); ?></h1>
                                <p><?php echo e($about_banar_subtitle); ?></p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
			<!-- Header block end -->
            <!-- About start -->
            <div class="container about_section">
                <div class="row">
                    <!-- About left col start -->
                    <div class="col-2 about_left">
                        <div class="row">
                            <h2><?php echo e($about_title); ?></h2>
                            <div class="about_left_h2">
                                <?php echo e($about_subtitle); ?>

                            </div>
                            <div class="about_left_text">
                                 <?php echo stripslashes($about_description); ?>

                            </div>
                            <a class="more">Learn more</a>
                            <!-- Advantages start -->
                            <div class="row advantages">
                                <div class="advantages_item"> 
                                    <strong>12</strong>
                                    <span>years of experience</span> 
                                </div>
                                <div class="advantages_item"> 
                                    <strong>Hundreds</strong>
                                    <span>happy clients</span> 
                                </div>
                                <div class="advantages_item"> 
                                    <strong>15</strong>
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

 
            <!-- Why We Are start -->
                                <?php
                                $feature = SM::smGetThemeOption("feature", array());
                                ?>
            <div class="row why_we_are">
                <div class="container">
                     <h4><?php echo e($about_feature_title); ?></h4>
                     
                     <div class="row why_we_are_content">
                       
                        <div class="row">

                           <!-- Why We Are item start -->
                            <?php $__currentLoopData = $feature; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-3 why_we_are_item">
                                <div class="why_we_are_item_icon"><i class="<?php echo e($value['icon']); ?>"></i></div>
                               <div class="why_we_are_item_title"><?php echo e($value['title']); ?></div>
                                <div class="why_we_are_item_text"><?php echo e($value['description']); ?></div>
                            </div>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <!-- Why We Are item end -->
                        </div>
                     </div>
                     
                </div>
            </div>
            <!-- Why We Are end -->  

            <!-- Certificates start -->
            <div class="row certificates" style="display: none;">
                <div class="container row">
                    <h4>Certificates & Associations</h4>
                    <div class="navigation"></div>
                </div>
                <div class="owl_certificates owl-carousel owl-theme gallery">
                    <div class="item"><a href="img/certificates_1.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_1.png" data-srcset="img/certificates_1.png, img/certificates_1@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_2.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_2.png" data-srcset="img/certificates_2.png, img/certificates_2@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_3.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_3.png" data-srcset="img/certificates_3.png, img/certificates_3@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_4.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_4.png" data-srcset="img/certificates_4.png, img/certificates_4@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_1.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_1.png" data-srcset="img/certificates_1.png, img/certificates_1@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_2.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_2.png" data-srcset="img/certificates_2.png, img/certificates_2@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_3.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_3.png" data-srcset="img/certificates_3.png, img/certificates_3@2x.png 2x" alt="DiDent" /></a></div>
                    <div class="item"><a href="img/certificates_4.png"><img class="owl-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/certificates_4.png" data-srcset="img/certificates_4.png, img/certificates_4@2x.png 2x" alt="DiDent" /></a></div>
                 </div>
            </div>
            <!-- Certificates end -->
            
        </main>
	
		<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>