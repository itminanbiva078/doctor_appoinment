
<?php

$testimonial_title = SM::smGetThemeOption( "testimonial_title", "" );
?>
@extends('frontend.master')

@section('content')
<main>
       <!-- Start Testimonials -->
            <div class="testimonials"> 
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
                         @foreach($testimonial as $value)
                        <!-- Start Testimonials Item -->
                        <div class="item">
                            <div class="slideshow-image"><img class="lozad" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="img/story_avatar_2.png" data-srcset="img/story_avatar_2.png, img/story_avatar_2@2x.png 2x" alt="DiDent"></div> 
                            <div class="ale_bg_overlay" style="background-color: rgba(0,0,0,0.20)"></div>
                            <div class="container">
                                <div class="row owl_testimonials_top">
                                    <div class="owl_testimonials_top_img"><img class="lozad" src="{!! SM::sm_get_the_src($value['testimonial_image']) !!}"  alt="DiDent" /></div>
                                    <div class="owl_testimonials_top_r">
                                        <div class="owl_testimonials_top_r_name">{{$value['title']}}</div>
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
                                     {{$value['description']}}
                                </div>
                                <div class="rating_date">
                                    <i class="fa fa-yelp"></i>
                                    {{$value['date']}}
                                </div>
                            </div>
                        </div>
                          @endforeach
                        <!-- End Testimonials Item --> 
                       </div>
                </div>
            </div>
        </div>
    </div>
            <!-- End Testimonials -->
            <!-- Testimonials We Like Most Start -->
                        
            <?php
            $testimonial = SM::smGetThemeOption("testimonials", array());
            ?>
            <div class="row recent_testimonials">
                <div class="container">
                    <h4>{{$testimonial_title}}</h4>
                    <div class="recent_testimonials_row"> 
                    @foreach($testimonial as $value)
                    <!-- Testimonials We Like Most Item Start -->
                        <div class="recent_testimonials_item row">
                            <div class="recent_testimonials_item_l"> 
                                <div class="recent_testimonials_title row">
                                    <img class="lozad" src="{!! SM::sm_get_the_src($value['testimonial_image']) !!}" alt="{{$value['title']}}" />
                                    <div class="recent_testimonials_name">{{$value['title']}}</div>
                                </div> 
                                <div class="recent_testimonials_desk">
                                <div class="row owl_testimonials_text">
                                     {{$value['description']}}
                                </div>
                                    <div class="rating_date">
                                        <i class="fa fa-yelp"></i>
                                        {{$value['date']}}
                                    </div>
                                </div> 
                            </div>
                            <div class="recent_testimonials_item_r">
                                <div class="make_us_item_rating radius_niz">
                                    <div class="make_us_item_rating_vn row">
                                        <span>4.9</span>
                                        <div class="make_us_star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        @endforeach
                        <!-- Testimonials We Like Most Item End --> 
                    </div>
                </div>
            </div>
            <!-- Testimonials We Like Most End -->
         <!-- What to share your opinion? Start -->
            <div class="row what_to_share">
                <div class="container">
                    <h4>What to share your opinion?</h4>
                    <p>We are always glad to hear from you!</p>
                    <a href="#" class="btn">Leave Feedback</a>
                </div>
            </div>
            <!-- What to share your opinion? End -->
        </main>

@endsection