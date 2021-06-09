@extends('frontend.master')
@section('content')
<?php
    
    $service_banar_title = SM::smGetThemeOption("service_banar_title");
    $service_banar_subtitle = SM::smGetThemeOption("service_banar_subtitle");
    $service_banner_image = SM::smGetThemeOption("service_banner_image");
     $service_offer_title = SM::smGetThemeOption("service_offer_title");
      $service_offer_description = SM::smGetThemeOption("service_offer_description");
    ?>
     <!-- Header block start -->
 <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="{!! SM::sm_get_the_src($service_banner_image) !!}">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h1>{{$service_banar_title}}</h1>
                                <p>{{ $service_banar_subtitle}}</p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
			<!-- Header block end -->
<main>
           
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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="title-service">
                                        <h4>Our services</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-15">
                               @foreach($featured_categories as $fcKey=> $f_category)
                                <?php
                                $segment = Request::segment(2);
                                if ($segment == $f_category->slug) {
                                    $add_class = 'show active';
                                } else {
                                    $add_class = '';
                                }
                                ?>
                            <!-- Service item start -->
                                <a href="{{ url('category/'.$f_category->slug )}}" class="services_item">
                                    <span class="services_item_title">{!! $f_category->title !!}</span>
                                    <span class="services_item_desc">{!! $f_category->description !!}</span>
                                </a>
                                  @endforeach
                                <!-- Service item end -->
                            </div>
                            
                            <div class="view_servises">
                                <a href="{{ url('category/'.$f_category->slug )}}" class="more">View all servises</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service end -->
            
            <!-- See Testimonials Block start -->
            <div class="row see_testimonials_row">
                <div class="container overflow_hidden">
					<div class="see_testimonials background_blue radius_mini row"> 
                        <div class="center_blue  row">
    						<div class="see_testimonials_content">
    							<h3>We are good at what we do. <br> And no doubts</h3>
                                <div><i class="fa fa-angle-double-down" aria-hidden="true"></i></div>
    							<a href="/testimonial" class="btn_transparent">See Testimonials</a>
    						</div> 
                        </div>  
					</div>
                </div>
            </div>
            <!-- See Testimonials Block end --> 
   <!-- What We Can Offer start -->
            <div class="row can_offer_row">
                <div class="container">
                    <div class="can_offer_title">
                        <i class="fa fa-star"></i> 
                        <div class="can_offer_title_lite"></div>
                    </div>
                    <div class="row can_offer_text">
                        <h4>{{$service_offer_title}}</h4>
                        <p>  {!! stripslashes($service_offer_description) !!}</p>
                       
                    </div>
                </div>
            </div>
            <!-- What We Can Offer end --> 

            
            
            <!-- Posts start -->
            <div class="row posts_row"> 
                <!-- Posts item start -->
                  @foreach($featured_categories as $fcKey=> $f_category)
                                <?php
                                $segment = Request::segment(2);
                                if ($segment == $f_category->slug) {
                                    $add_class = 'show active';
                                } else {
                                    $add_class = '';
                                }
                                ?>
                <div class="row posts_item">
                        <div class="container">
                        <div class="row">
                            <div class="col-1-60 posts_item_img">
                                <div class="radius">
                                    <img class="lozad" src="{!! SM::sm_get_the_src( $f_category->image) !!}" alt="DiDent">
                                </div>
                            </div>
                            <div class="col-1-40 posts_item_desk">
                                <div class="posts_item_title">{!! $f_category->title !!}</div>
                                <div class="posts_item_text">
                                    <p>{!! $f_category->description !!}</p>
                                    <a href="{{ url('category/'.$f_category->slug )}}" class="btn_white" >Learn more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                   @endforeach
                <!-- Posts item end -->
              
                 
            </div>
            <!-- Posts end -->
        
    </main>
        <!--  Main end -->
	</div> 
 @endsection