<?php
$sliders = \App\Model\Common\Slider::Published()->get();
?>

<?php if(isset($sliders) && count($sliders)>0): ?>
    <?php
    $slider_change_autoplay = (int)SM::smGetThemeOption("slider_change_autoplay", 4);
    $slider_change_autoplay *= 3000;
    ?>
     <!-- Header slideshow start -->
<div class="overflow_hidden">
            <div class="radius_niz_mini"> 
                <div class="slideshow owl-carousel owl-theme">
                    <!-- Start slideshow item -->
                     <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                if ($key == 0) {
                    $active = 'active';
                } else {
                    $active = '';
                }
                ?>
                    <div class="item">
                    <div class="row slideshow_heding">
                            <div class="slideshow-image lozad" data-background-image="<?php echo SM::sm_get_the_src($slider->image, 1903, 1051); ?>" ></div>

                            
                            
                            <h4><?php echo e($slider->title); ?></h4>
                            <div class="slideshow_info_block"><?php echo e($slider->description); ?></div>
                            <div class="popup"><a href="#step1" data-effect="mfp-zoom-in" class="step1 btn">Make an Appointment</a></div>
                    </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <!-- End slideshow item -->
                   </div> 
                </div>
       </div> 
        <?php endif; ?>
        <!--  Header slideshow end -->
