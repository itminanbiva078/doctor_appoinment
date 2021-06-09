@extends('frontend.master')

@section('content')
<?php
 $teamTitle = SM::smGetThemeOption("team_title");
  $teams = SM::smGetThemeOption("teams");
   $about_banar_title = SM::smGetThemeOption("about_banar_title");
    $about_banar_subtitle = SM::smGetThemeOption("about_banar_subtitle");
    $about_banner_image = SM::smGetThemeOption("about_banner_image");
?>

 <!-- Header block start -->
 <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="{!! SM::sm_get_the_src($about_banner_image) !!}">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h1>{{$about_banar_title}}</h1>
                                <p>{{ $about_banar_subtitle}}</p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
			<!-- Header block end -->
            <!-- Start Best Specialists Tabs -->
            <div class="row specialists" id="specialists">
                <!-- Start Best Specialists Tabs Container -->
                <div class="container">
                    <div class="row tabs">
                        <!-- Start Best Specialists Tabs Title Start -->
                        <div class="row">
                            <h4>{{$teamTitle}}</h4>
                          </div>
                        <!-- End Best Specialists Tabs Title -->

                        <!-- Start periodontists content -->
                        @if(count($teams)>0)
                        <div class="tab_content">
                            <!-- Start doctor item -->
                             @foreach($teams as $team)
                             @if(!empty($team))
                            <div class="row specialists_row">
                                <div class="special_img col-2">
                                     <img src="{!! SM::sm_get_the_src($team["team_image"]) !!}" alt="{{ $team["title"] }}"/>
                                  </div> 
                                <div class="special_desk col-2">
                                    <div class="special_desk_title_row row">
                                        <div class="special_desk_title">
                                            <a href="#" class="special_desk_name">{{ $team["title"] }}</a>
                                            <div class="special_desk_profession">{{ $team["designation"] }}</div>
                                        </div>
                                        <div class="special_desk_soc">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Start doctor list -->
                                    <div class="special_desk_service row">
                                        <div class="special_desk_service_icon">
                                            <i class=" {{ $team["education_icon"] }}"></i>
                                        </div>
                                        <div class="special_desk_service_r">
                                            <div class="special_desk_service_title">Education</div>
                                            <div class="row special_desk_service_list">
                                                <ul>
                                                {{ $team["education"] }}
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End doctor list -->
                                    <!-- Start doctor list -->
                                    <div class="special_desk_service row">
                                        <div class="special_desk_service_icon">
                                            <i class=" {{ $team["member_icon"] }}"></i>
                                        </div>
                                        <div class="special_desk_service_r">
                                            <div class="special_desk_service_title">Membership</div>
                                            <div class="row special_desk_service_list">
                                                <ul>
                                                {{ $team["membarship"] }}
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End doctor list -->
                                    <!-- Start doctor list -->
                                    <div class="special_desk_service row">
                                        <div class="special_desk_service_icon">
                                            <i class=" {{ $team["language_icon"] }}"></i>
                                        </div>
                                        <div class="special_desk_service_r">
                                            <div class="special_desk_service_title">Languages</div>
                                            <div class="row special_desk_service_list">
                                                <ul>
                                                {{ $team["languages"] }}
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End doctor list -->
                                    <!-- Start doctor text -->
                                    <div class="special_desk_desk row">
                                        {!! $team["description"] !!}
                                    </div>
                                    <!-- End doctor text -->
                                    <div class="popup"><a href="#step1" data-effect="mfp-zoom-in" class="step1 btn">Make an Appointment with This Dentist</a></div>
                                </div>
                            </div>
                            @endif
                                @endforeach
                            <!-- End doctor item --> 
                        </div>
                         @endif
                        <!-- End periodontists content -->
                    </div>
                </div>
                <!-- End Best Specialists Tabs Container -->
            </div>
            <!-- End Best Specialists Tabs -->
@endsection