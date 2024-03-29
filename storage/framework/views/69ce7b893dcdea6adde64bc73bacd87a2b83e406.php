  <!-- Footer start -->
  <?php
 $teamTitle = SM::smGetThemeOption("team_title");
  $teams = SM::smGetThemeOption("teams");
  $mobile = SM::get_setting_value('mobile');
$email = SM::get_setting_value('email');
$address = SM::get_setting_value('address');
$country = SM::get_setting_value('country');
$time = SM::smGetThemeOption( "time", "" );
?>
  <footer>
        <div class="svg_blue"> 
            <svg width="100%" height="100%" viewBox="0 0 653 46.107558"><defs><path d="M0 30a1789 1789 0 0 1 653 0v304a1823 1823 0 0 1-653 0z" id="a"/><clipPath  ><path stroke-width="1.00255799" d="M-1-1h656v47H-1z"/></clipPath></defs><use xlink:href="#a" width="100%" height="100%" fill-rule="evenodd"/></svg>
        </div>
        <div class="footer_row background_blue row">
          <div class="container">
                <!-- Start top_footer -->
                <div class="top_footer">
                    <!-- Start footer_logo -->
                    <a href="/" class="footer_logo">
                        <img class="lozad" src="<?php echo SM::sm_get_the_src( SM::sm_get_site_logo(), 193, 78 ); ?>"  alt="<?php echo SM::get_setting_value( 'site_name' ); ?>" />
                    </a>
                    <!-- End footer_logo -->
                    <!-- Start footer_social_button -->
                    <div class="footer_social_button">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-yelp"></i></a>
                    </div>
                    <!-- End footer_social_button -->
                </div>
                <!-- End top_footer -->
    
                <!-- Start middle_footer -->
                <div class="middle_footer">
                    <!-- Start contact_info -->
                    <div class="contact_info">
                        <div class="work_time">
                            <i class="fa fa-clock-o"></i>
                            <div class="work_time_inner">
                                <span><?php echo e($time); ?> </span>
                              </div>
                        </div>
                    <a href="tel:<?php echo e($mobile); ?>"><i class="fa fa-phone"></i><?php echo e($mobile); ?></a>
                        <a href="mailto:<?php echo e($email); ?>">
                            <i class="fa fa-envelope"></i><?php echo e($email); ?>

                        </a>
                        <div class="footer_address">
                            <i class="fa fa-map-marker"></i><?php echo e($address); ?>

                        </div>
                    </div>
                    <!-- End contact_info -->
                    <!-- Start footer_menu -->
                    <div class="footer_menu">
                        <a class="footer_see" href="#" onclick="return false"><i class="fa fa-bars"></i> <span>Navigation</span> </a>
                        
                        <div class="row footer_nav">
                            <a class="footer_menu_close" title="Close"><i class="fa fa-times" aria-hidden="true"></i></a>  
                            <div class="col-6">
                                <ul>
                                    <li><a href="/">Home</a></li>
                                    <li><a href="/about">About</a></li>
                                    <li><a href="/service">Service</a></li>
                                 </ul>
                            </div>
                            <div class="col-6">
                                <ul>
                                    <li><a href="/testimonial">Testimonials</a></li>
                                    <li><a href="/blog">Blog</a></li>
                                    <li><a href="/contact">Contact Us</a></li> 
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End footer_menu -->
                </div>
                <!-- End middle_footer -->
    
                <!-- Start bottom_footer -->
                <div class="bottom_footer">
                    <div class="bottom_footer_link popup">
                        <a href="#step1" data-effect="mfp-zoom-in" class="step1">Make an Appointment</a>
                    </div>
                    <!-- Start copyright -->
                    <div class="copyright">
                           © 2021 DiDent. All Rights Reserved
                    </div>
                    <!-- End copyright -->
                </div>
                <!-- End bottom_footer -->
            </div>
        </div>
   </footer>
   <!-- Footer end -->
   
   <form class="fofm">
    <!-- Popup Step 1 -->
        <div id="step1" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
            <input type="hidden" id="doctorName" name="doctorName"/>
        <!-- Choose a Dentist -->
                <div class="row step1_row">
                    <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Choose a Dentist</h3>
                            <div class="row">
                           
                            <?php $__currentLoopData = $teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key =>  $team): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php 
                                 $title = $team["title"];
                            ?>
                            <input onclick="doctorUpdate('<?php echo  $title;?>')" type="radio" id="radio<?php echo e($key+1); ?>">
                                <label for="radio<?php echo e($key+1); ?>">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="<?php echo SM::sm_get_the_src($team["team_image"]); ?>" alt="<?php echo e($team["title"]); ?>">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name"><?php echo e($team["title"]); ?></span>
                                                <span class="doctor_position"><?php echo e($team["designation"]); ?></span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              
                               </div>
                        </div>
                    </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step2" class="btn step-next step2" id="">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Choose a Dentist -->   
            </div> 
        </div>
        <!-- Popup Step 1 -->
        
        <!-- Popup Step 2 -->
 <script>
 function doctorUpdate(doctorTitle){
    $('#doctorName').val('');
     $('#doctorName').val(doctorTitle);
}
 </script>


<?php
$category = App\Model\Common\Category::pluck('title','title');
$service = App\Model\Common\Service::pluck('title','title');
?>
        <div id="step2" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
             <input type="hidden" name="reasonName" id="reasonName"/>
            <!-- Please Provide a Visit Reason -->
            <div class="row step2_row">
              <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Please Provide a Visit Reason</h3>
                                   <div class="row">
                                  
                                     <?php $__currentLoopData = $teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key =>  $team): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <?php if($team['team_type']==$category): ?>
                                 <?php 
                                   $serviceTitle = $team["team_type_service"];
                                    ?>
                                    <input onclick="reasonUpdate('<?php echo $serviceTitle;?>')">
                                    <label>
                                        <span class="step_item_vn">
                                            <span class="row step_item align-items-center">
                                            <?php echo e($team["team_type"]); ?>

                                            </span>
                                        </span>
                                    </label>
                                    <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                   
                                </div>
                                </div>
                            </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step1" class="btn step1">Prev</a>
                        <a href="#step3" class="btn step-next step3">Next</a>
                    </div>
                    <!-- Prev and next step button -->
                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Please Provide a Visit Reason -->
            </div> 

<script>
 function reasonUpdate(reasonName){
    $('#reasonName').val('');
     $('#reasonName').val(doctorTitle);
 } 

 
</script>
</div>


<!-- Popup Step 2 -->

        
        <!-- Popup Step 3 -->
        <div id="step3" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Start input date -->
                <div class="step3_row datepicker_row row">
                    <div class="datepicker_row_title">
                        <h3>Choose a Date</h3>
                        <div class="btn_white">First Available: Tomorrow at 10:00 am</div>
                    </div>
                    <div class="row datepicker">
                        <div id="datepicker"></div>
                        <input class="reserv_input posDate" id="temp_date_start" type="hidden"  name="posDate">
                    </div>

                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step2" class="btn step2">Prev</a>
                        <a href="#step4" class="btn step-next step4">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- End input date -->
            </div> 
        </div>
        <!-- Popup Step 3 -->
        
        <!-- Popup Step 4 -->
        <div id="step4" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Start input time -->
                <div class="row step4_row">
                    <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Choose a Time</h3>
                            <div class="row">
                                <!-- 10:00 am -->
                                <input type="radio" id="radio_time1" class="radio_time" name="radio_time" value="10:00 am">
                                <label for="radio_time1">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            10:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 10:00 am -->
                            </div>
                        </div>
                    </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step3" class="btn step3">Prev</a>
                        <a href="#step5" class="btn step-next step5">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- end input time -->
            </div> 
        </div>
        <!-- Popup Step 4 -->
    
        <!-- Popup Step 5 -->
        <div id="step5" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Almost There -->
                <div class="row step5_row almost_there">
                    <h3>Almost There!</h3>

                    <div class="row almost_select">
                        <div class="col-3">
                            <div class="almost_select_img radius_right">
                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_4l.png" data-srcset="img/dentist_photo_4l.png, img/dentist_photo_4l@2x.png 2x" alt="DiDent">
                            </div>
                            <div class="almost_details">
                                <div class="almost_doc_position">Dentist</div>
                                <div class="almost_doc_name">Dr. Jennifer Wilson</div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="almost_details">
                                <div class="almost_title">Reason</div>
                                <div class="almost_reason">Check-up and Cleaning</div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="almost_details">
                                <div class="almost_title">Date & Time</div>
                                <div class="almost_date">April 19 at 10:00 am</div>
                            </div>
                        </div>
                    </div>
                    <!-- Contact Information -->
                    <div class="row contact_information_row">
                        <h4>Contact Information</h4>
                        <p>Reach us with your questions. We are looking forward hearing form you!</p>

                        <div class="row form_row">
                            <div class="row row-15">
                                <div class="col-2">
                                    <div class="leable">Full Name</div>
                                    <input class="posName" type="text" name="posName">
                                </div>
                                <div class="col-2">
                                    <div class="leable">Email</div>
                                    <input class="posEmail" type="email" name="posEmail" />
                                </div>
                            </div>
                            <div class="leable">Phone (ex. 650 123-4000)</div>
                            <input class="posTel" type="text" name="posTel"> 
                        </div>

                        <div class="process"></div>
                        <div class="center btn_popup">
                           <a href="#step4" class="btn step4">Prev</a>
                           <button type="button" class="button send">Submit</button>
                        </div> 
                    </div>
                    <!-- Contact Information -->
 
                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Almost There -->
            </div> 
        </div>
        <!-- Popup Step 5 -->
    </form> 
        <!-- Popup Step 1 -->
        <div id="step1" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Choose a Dentist -->
                <div class="row step1_row">
                    <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Choose a Dentist</h3>
                            <div class="row">
                                <!-- Any Dentist -->
                                <input type="radio" id="radio9" class="radio_name" name="radio" value="Any Dentist">
                                <label for="radio9">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="doctor_name">Any Dentist</span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Any Dentist -->

                                <!-- Dr. Katherin Black -->
                                <input type="radio" id="radio1" class="radio_name" name="radio" value="Dr. Katherin Black">
                                <label for="radio1">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_2l.png" data-srcset="img/dentist_photo_2l.png, img/dentist_photo_2l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Katherin Black</span>
                                                <span class="doctor_position">Orthodontist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. Katherin Black -->

                                <!-- Dr. Helen Bristen -->
                                <input type="radio" id="radio2" class="radio_name" name="radio" value="Dr. Helen Bristen">
                                <label for="radio2">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_3l.png" data-srcset="img/dentist_photo_3l.png, img/dentist_photo_3l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Helen Bristen</span>
                                                <span class="doctor_position">General Dentist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. Helen Bristen -->

                                <!-- Dr. Michael Johnson -->
                                <input type="radio" id="radio3" class="radio_name" name="radio" value="Dr. Michael Johnson">
                                <label for="radio3">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/main_dentistl.png" data-srcset="img/main_dentistl.png, img/main_dentistl@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Michael Johnson</span>
                                                <span class="doctor_position">General and Cosmetic Dentist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. Michael Johnson -->


                                <!-- Dr. Brett Armstrong -->
                                <input type="radio" id="radio4" class="radio_name" name="radio" value="Dr. Brett Armstrong">
                                <label for="radio4">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_4l.png" data-srcset="img/dentist_photo_4l.png, img/dentist_photo_4l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Brett Armstrong</span>
                                                <span class="doctor_position">Periodontist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. Brett Armstrong -->

                                <!--  Dr. Jennifer Wilson -->
                                <input type="radio" id="radio5" class="radio_name" name="radio" value=" Dr. Jennifer Wilson">
                                <label for="radio5">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_5l.png" data-srcset="img/dentist_photo_5l.png, img/dentist_photo_5l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Jennifer Wilson</span>
                                                <span class="doctor_position">Endodontist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!--  Dr. Jennifer Wilson -->

                                <!-- Dr. George Wilson -->
                                <input type="radio" id="radio6" class="radio_name" name="radio" value="Dr. George Wilson">
                                <label for="radio6">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_1l.png" data-srcset="img/dentist_photo_1l.png, img/dentist_photo_1l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. George Wilson</span>
                                                <span class="doctor_position">Dental Surgeon</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. George Wilson -->

                                <!-- Dr. Nicole Green -->
                                <input type="radio" id="radio7" class="radio_name" name="radio" value="Dr. Nicole Green">
                                <label for="radio7">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/staff_photo_2l.png" data-srcset="img/staff_photo_2l.png, img/staff_photo_2l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. Nicole Green</span>
                                                <span class="doctor_position">Orthodontist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. Nicole Green -->

                                <!-- Dr. John Ridwell -->
                                <input type="radio" id="radio8" class="radio_name" name="radio" value="Dr. John Ridwell">
                                <label for="radio8">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            <span class="step_item_img radius_right">
                                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/staff_photo_1l.png" data-srcset="img/staff_photo_1l.png, img/staff_photo_1l@2x.png 2x" alt="DiDent">
                                            </span>
                                            <span class="step_item_desk">
                                                <span class="doctor_name">Dr. John Ridwell</span>
                                                <span class="doctor_position">General and Cosmetic Dentist</span>
                                            </span>
                                        </span>
                                    </span>
                                </label>
                                <!-- Dr. John Ridwell -->
                            </div>
                        </div>
                    </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step2" class="btn step-next step2">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Choose a Dentist -->   
            </div> 
        </div>
        <!-- Popup Step 1 -->
        
        <!-- Popup Step 2 -->
        <div id="step2" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Please Provide a Visit Reason -->
                <div class="row step2_row">
                    <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Please Provide a Visit Reason</h3>
                            <div class="row">
                                <!-- Broken Tooth -->
                                <input type="radio" id="radio10" class="radio_service" name="radio_service" value="Broken Tooth">
                                <label for="radio10">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Broken Tooth
                                        </span>
                                    </span>
                                </label>
                                <!-- Broken Tooth -->

                                <!-- Check-up and Cleaning -->
                                <input type="radio" id="radio11" class="radio_service" name="radio_service" value="Check-up and Cleaning">
                                <label for="radio11">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Check-up and Cleaning
                                        </span>
                                    </span>
                                </label>
                                <!-- Check-up and Cleaning -->

                                <!-- Dental Check-up and X-Rays -->
                                <input type="radio" id="radio12" class="radio_service" name="radio_service" value="Dental Check-up and X-Rays">
                                <label for="radio12">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Dental Check-up and X-Rays
                                        </span>
                                    </span>
                                </label>
                                <!-- Dental Check-up and X-Rays -->

                                <!-- General Consultation -->
                                <input type="radio" id="radio13" class="radio_service" name="radio_service" value="General Consultation">
                                <label for="radio13">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            General Consultation
                                        </span>
                                    </span>
                                </label>
                                <!-- General Consultation -->

                                <!-- Jaw Joint Pain -->
                                <input type="radio" id="radio14" class="radio_service" name="radio_service" value="Jaw Joint Pain">
                                <label for="radio14">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Jaw Joint Pain
                                        </span>
                                    </span>
                                </label>
                                <!-- Jaw Joint Pain -->

                                <!-- Teeth Whitening -->
                                <input type="radio" id="radio15" class="radio_service" name="radio_service" value="Teeth Whitening">
                                <label for="radio15">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Teeth Whitening
                                        </span>
                                    </span>
                                </label>
                                <!-- Teeth Whitening -->

                                <!-- Veneers -->
                                <input type="radio" id="radio16" class="radio_service" name="radio_service" value="Veneers">
                                <label for="radio16">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Veneers
                                        </span>
                                    </span>
                                </label>
                                <!-- Veneers -->

                                <!-- Wisdom Teeth Extractions -->
                                <input type="radio" id="radio17" class="radio_service" name="radio_service" value="Wisdom Teeth Extractions">
                                <label for="radio17">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Wisdom Teeth Extractions
                                        </span>
                                    </span>
                                </label>
                                <!-- Wisdom Teeth Extractions -->

                                <!-- Other -->
                                <input type="radio" id="radio18" class="radio_service" name="radio_service" value="Other">
                                <label for="radio18">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            Other
                                        </span>
                                    </span>
                                </label>
                                <!-- Other -->
                            </div>
                        </div>
                    </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step1" class="btn step1">Prev</a>
                        <a href="#step3" class="btn step-next step3">Next</a>
                    </div>
                    <!-- Prev and next step button -->
                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Please Provide a Visit Reason -->
            </div> 
        </div>
        <!-- Popup Step 2 -->
        
        <!-- Popup Step 3 -->
        <div id="step3" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Start input date -->
                <div class="step3_row datepicker_row row">
                    <div class="datepicker_row_title">
                        <h3>Choose a Date</h3>
                        <div class="btn_white">First Available: Tomorrow at 10:00 am</div>
                    </div>
                    <div class="row datepicker">
                        <div id="datepicker"></div>
                        <input class="reserv_input posDate" id="temp_date_start" type="hidden"  name="posDate">
                    </div>

                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step2" class="btn step2">Prev</a>
                        <a href="#step4" class="btn step-next step4">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- End input date -->
            </div> 
        </div>
        <!-- Popup Step 3 -->
        
        <!-- Popup Step 4 -->
        <div id="step4" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Start input time -->
                <div class="row step4_row">
                    <div class="prod_checbox">
                        <div class="radio-toolbar">
                            <h3>Choose a Time</h3>
                            <div class="row">
                                <!-- 10:00 am -->
                                <input type="radio" id="radio_time1" class="radio_time" name="radio_time" value="10:00 am">
                                <label for="radio_time1">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            10:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 10:00 am -->

                                <!-- 11:00 am -->
                                <input type="radio" id="radio_time2" class="radio_time" name="radio_time" value="11:00 am">
                                <label for="radio_time2">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            11:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 11:00 am -->

                                <!-- 12:00 am -->
                                <input type="radio" id="radio_time3" class="radio_time" name="radio_time" value="12:00 am">
                                <label for="radio_time3">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            12:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 12:00 am -->

                                <!-- 1:00 am -->
                                <input type="radio" id="radio_time4" class="radio_time" name="radio_time" value="1:00 am">
                                <label for="radio_time4">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            1:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 1:00 am -->

                                <!-- 2:00 am -->
                                <input type="radio" id="radio_time5" class="radio_time" name="radio_time" value="2:00 am">
                                <label for="radio_time5">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            2:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 2:00 am -->

                                <!-- 3:00 am -->
                                <input type="radio" id="radio_time6" class="radio_time" name="radio_time" value="3:00 am">
                                <label for="radio_time6">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            3:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 3:00 am -->

                                <!-- 4:00 am -->
                                <input type="radio" id="radio_time7" class="radio_time" name="radio_time" value="4:00 am">
                                <label for="radio_time7">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            4:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 4:00 am -->

                                <!-- 5:00 am -->
                                <input type="radio" id="radio_time8" class="radio_time" name="radio_time" value="5:00 am">
                                <label for="radio_time8">
                                    <span class="step_item_vn">
                                        <span class="row step_item align-items-center">
                                            5:00 am
                                        </span>
                                    </span>
                                </label>
                                <!-- 5:00 am -->
                            </div>
                        </div>
                    </div>
                    <!-- Prev and next step button -->
                    <div class="center btn_popup">
                        <a href="#step3" class="btn step3">Prev</a>
                        <a href="#step5" class="btn step-next step5">Next</a>
                    </div>
                    <!-- Prev and next step button -->

                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- end input time -->
            </div> 
        </div>
        <!-- Popup Step 4 -->
    
        <!-- Popup Step 5 -->
        <div id="step5" class="white-popup mfp-with-anim mfp-hide order_popup">
            <div class="popup_content">
                <!-- Almost There -->
                <div class="row step5_row almost_there">
                    <h3>Almost There!</h3>

                    <div class="row almost_select">
                        <div class="col-3">
                            <div class="almost_select_img radius_right">
                                <img class="lozad is-loaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/dentist_photo_4l.png" data-srcset="img/dentist_photo_4l.png, img/dentist_photo_4l@2x.png 2x" alt="DiDent">
                            </div>
                            <div class="almost_details">
                                <div class="almost_doc_position">Dentist</div>
                                <div class="almost_doc_name">Dr. Jennifer Wilson</div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="almost_details">
                                <div class="almost_title">Reason</div>
                                <div class="almost_reason">Check-up and Cleaning</div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="almost_details">
                                <div class="almost_title">Date & Time</div>
                                <div class="almost_date">April 19 at 10:00 am</div>
                            </div>
                        </div>
                    </div>
                    <!-- Contact Information -->
                    <div class="row contact_information_row">
                        <h4>Contact Information</h4>
                        <p>Reach us with your questions. We are looking forward hearing form you!</p>

                        <div class="row form_row">
                            <div class="row row-15">
                                <div class="col-2">
                                    <div class="leable">Full Name</div>
                                    <input class="posName" type="text" name="posName">
                                </div>
                                <div class="col-2">
                                    <div class="leable">Email</div>
                                    <input class="posEmail" type="email" name="posEmail" />
                                </div>
                            </div>
                            <div class="leable">Phone (ex. 650 123-4000)</div>
                            <input class="posTel" type="text" name="posTel"> 
                        </div>

                        <div class="process"></div>
                        <div class="center btn_popup">
                           <a href="#step4" class="btn step4">Prev</a>
                           <button type="button" class="button send">Submit</button>
                        </div> 
                    </div>
                    <!-- Contact Information -->
 
                    <!-- footer popup -->
                    <div class="footer_popup">
                        If you need immediate assistance, please call us at + 1 650 123-4000
                        <span>© 2019 DiDent. All Rights Reserved</span>
                    </div>
                    <!-- footer popup -->
                </div>
                <!-- Almost There -->
            </div> 
        </div>
        <!-- Popup Step 5 -->
    </form>