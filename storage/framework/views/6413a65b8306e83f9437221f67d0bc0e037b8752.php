<?php
$mobile = SM::get_setting_value('mobile');
$email = SM::get_setting_value('email');
$address = SM::get_setting_value('address');
$country = SM::get_setting_value('country');
$time = SM::smGetThemeOption( "time", "" );
$header_logo = SM::smGetThemeOption( "header_logo", "" );
if (Auth::check()) {
    $blogAuthor = Auth::user();
    $fname = $blogAuthor->firstname . " " . $blogAuthor->lastname;
    $fname = trim($fname) != '' ? $fname : $blogAuthor->username;
} else {
    $fname = __('common.join_login');
    $logonMoadal = 'data-toggle="modal" data-target="#loginModal"';
}
?>
<!-- Wrapper start -->
<div class="wrapper">

    <!-- HEADER start -->
    <header>
        <div id="site-header" class="sticky">
            <!-- Header top start -->
            <div class="row header_top">
                <div class="container_1336">
                    <div class="row">
                        <!-- Start clock -->
                        <div class="header_clock">
                            <i class="fa fa-clock-o"></i>
                             
                               <span><?php echo e($time); ?></span>
                           </div>
                          
                        <!-- End clock -->
                        <!-- Start phone -->
                        <a href="tel:<?php echo e($mobile); ?>" class="header_phone">
                            <i class="fa fa-phone"></i><?php echo e($mobile); ?>

                        </a>
                        <!-- End phone -->
                        <!-- Start mail -->
                        <a href="mailto:<?php echo e($email); ?>" class="header_mail">
                            <i class="fa fa-envelope"></i><?php echo e($email); ?>

                        </a>
                        <!-- End mail -->
                        <!-- Start address -->
                        <div class="header_address">
                            <i class="fa fa-map-marker"></i><?php echo e($address); ?>

                        </div>
                        <!-- End address -->
                        <!-- Start social button -->
                <div class="header_social_button">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-youtube"></i></a>
                      
               </div>
                    <!-- End social button -->
                    </div>
                </div>
            </div>
            <!-- Header top end -->

            <!-- Header bottom start -->
            <div class="row header_bottom">
                <div class="container_1336">
                    <div class="row">
                        <!-- LOGO start -->
                        <div class="logo">
                            <a href="/"><img class="lozad" src="<?php echo SM::sm_get_the_src( SM::sm_get_site_logo(), 193, 78 ); ?>" alt="<?php echo SM::get_setting_value( 'site_name' ); ?>" /></a>
                        </div>
                        <!-- LOGO end -->

                        <!-- Headr Button start -->
                        <div class="header_btn">
                            <div class="popup"><a href="#step1" data-effect="mfp-zoom-in" class="step1 btn_white">Make an Appointment</a></div>
                        </div>
                        <!-- Headr Button end -->

                        <!-- NAVIGATION start -->
                        <div class="menu">
                            <nav>
                                <?php
                                    $menu = array(
                                        'nav_wrapper' => 'ul',
                                        'start_class' => 'navbar-nav mr-auto',
                                        'link_wrapper' => 'li',
                                        'home_class' => 'nav-item',
                                        'a_class' => 'nav-link',
                                        'dropdown_class' => 'nav-item',
                                        'subNavUlClass' => 'dropdown-menu mega_dropdown',
                                        'has_dropdown_wrapper_class' => 'dropdown',
                                        'show' => TRUE
                                    );
                                    SM::sm_get_menu($menu);
                                    ?>
                            </nav>
                        </div>
                        <!-- NAVIGATION end -->
                        <!-- Mobile Menu start -->
                    <nav class="nav" id="menu_right_sidebar">
                        <div class="menu-right-button open-button"><i class="fa fa-bars"></i></div>
                        <div class="container_right_menu">
                            <span class="close-button"><i class="fa fa-times"></i></span>
                            <div class="row header_menu"> 
                                <div class="row logotype_light">
                                    <img class="lozad" src="<?php echo SM::sm_get_the_src( SM::sm_get_site_logo(), 193, 78 ); ?>" alt="<?php echo SM::get_setting_value( 'site_name' ); ?>" >
                                </div>
                                <div id="dl-menu" class="dl-menuwrapper">
                                    <ul class="dl-menu dl-menuopen"> 
                                       
                                         <?php
                                                    $menu = array(
                                                   'nav_wrapper' => 'ul',
                                                    'start_class' => 'navbar-nav mr-auto',
                                                    'link_wrapper' => 'li',
                                                    'home_class' => 'nav-item',
                                                    'a_class' => 'nav-link',
                                                    'show' => TRUE
                                    );
                                    SM::sm_get_menu($menu);
                                    ?>   
                                    </ul>
                                </div>
                            </div>
                            <div class="row footer_item_social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                <a href="#"><i class="fa fa-youtube"></i></a>
                             </div>
                            <div class="row menu_contact">
                                <ul>
                                    <li><i class="fa fa-map-marker"></i> <address><?php echo e($address); ?></address></li>
                                    <li><i class="fa fa-phone"></i><?php echo e($mobile); ?></li>
                                    <li><i class="fa fa-envelope-o"></i><?php echo e($email); ?></li>
                                    <li><i class="fa fa-clock-o"></i><?php echo e($time); ?></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <!-- Mobile Menu end --> 
                    </div>
                </div>
            </div>
            <!-- Header bottom end -->
        </div>
    </header>
