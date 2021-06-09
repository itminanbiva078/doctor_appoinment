@extends('frontend.master')
@section('content')
<?php
    $contact_form_title = SM::smGetThemeOption("contact_form_title");
    $contact_title = SM::smGetThemeOption("contact_title");
    $contact_subtitle = SM::smGetThemeOption("contact_subtitle");
    $contact_des_title = SM::smGetThemeOption("contact_des_title");
    $contact_description = SM::smGetThemeOption("contact_description");
    $title = SM::smGetThemeOption("contact_banner_title");
    $subtitle = SM::smGetThemeOption("contact_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("contact_banner_image");

    $contact_location_title = SM::smGetThemeOption("contact_location_title");
    $contact_location_subtitle = SM::smGetThemeOption("contact_location_subtitle");

    $mobile = SM::get_setting_value('mobile');
    $email = SM::get_setting_value('email');
    $address = SM::get_setting_value('address');
    $contact_banner_title = SM::smGetThemeOption("contact_banner_title");
    $contact_banner_subtitle = SM::smGetThemeOption("contact_banner_subtitle");
    $about_banner_image = SM::smGetThemeOption("about_banner_image");
    ?>
    	<!-- Header block start -->

     <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="{!! SM::sm_get_the_src($about_banner_image) !!}">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h2>{{$contact_banner_title}}</h2>
                                <p>{{ $contact_banner_subtitle}}</p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
	<!-- Header block end -->
<main>
            <!-- Contact -->
            <div class="container">
                <div class="row contact_row">
                    <!-- Get in Touch -->
                    <div class="row contact_row_title">
                        <h1>{{$contact_form_title}}</h1>
                        <div class="contact_row_soc">
                        	<a href="#"><i class="fa fa-facebook"></i></a>
                        	<a href="#"><i class="fa fa-twitter"></i></a>
                        	<a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-yelp"></i></a>
                        </div>
                    </div>
                    <!-- Get in Touch -->
                    <!-- Leave a Reply -->
                    <h4>{{$contact_title}}</h4>
                    <p>{{ $contact_subtitle}}</p>
                    {!! Form::open(['method'=>'post', 'action'=>'Front\HomeController@send_mail', 'id'=>'contactMail']) !!}
                    <div class="row form_row">
                        <div class="row message_row">
                            <div class="leable">Message</div>
                            <textarea class="posText" name="message"  id="message"></textarea>
                        </div>
                        <div class="row row-15">
                            <div class="col-3">
                                <div class="leable">Full Name</div>
                                <input class="posName" type="text" name="fullname" id="fullname">
                            </div>
                            <div class="col-3">
                                <div class="leable">Email</div>
                                <input class="posEmail" type="email" name="email" id="email" />
                            </div>
                            <div class="col-3">
                                <div class="leable">Phone </div>
                                <input class="posTel" type="text" name="phone" id="phone">
                            </div>
                        </div> 
                    </div>
                      
                    <!-- Leave a Reply -->
                    
                    <!-- Send button -->
                 
                    <div class="center">
                       	<button type="submit" >Send a Message</button>  
                    </div> 
                    <!-- Send button -->
                    {!! Form::close() !!}
                    <!-- Open Hours -->
                    <div class="row open_hours_contact">
                        <h4>Open Hours</h4>
                        <div class="row open_hours_row">
                            <div class="col-3 open_hours_l">
                                <div class="day">Monday-Friday</div>
                                <div class="row open_hours_block">
                                    <div class="hours">
                                        10:00
                                        <span>am</span>
                                    </div>
                                    <div class="minute">
                                           - 6:00
                                        <span>pm</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 open_hours_c">
                                <div class="day">Saturday</div>
                                <div class="row open_hours_block">
                                    <div class="hours">
                                        11:00
                                        <span>am</span>
                                    </div>
                                    <div class="minute">
                                           - 4:00
                                        <span>pm</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 open_hours_r">
                                <div class="day">Sunday</div>
                                <div class="row open_hours_block">
                                     By appointment
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Open Hours --> 
                </div>
            </div>
            <!-- Contact --> 
        </main>
@endsection