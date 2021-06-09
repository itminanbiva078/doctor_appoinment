@extends('frontend.master')

@section('content')
@include('frontend.common.slider')
 <main>
            <!-- Service block top start -->
            <div class="row header_row" id="single_service_details">
                @forelse($services as $pKey=> $product)
                                    <?php
                                    $show = '';
                                    if ($pKey == 0) {
                                        $show = 'show';
                                    }
                                    ?>
                <div class="container">
                    <div class="col md-12">
                        <div class="header_title_content">
                        <h1>{{ $product->title }}</h1>
                        <p> {!! $product->description !!}</p>
                           </div>
                        </div>
                </div>
                 @empty
                      @endforelse
            </div>
            <!-- Service block top end -->
             <!-- Prices Block Start -->
            <div class="row prices" id="prices">
                <div class="container">
                    <h4>Prices</h4>
                    <div class="row-15 row prices_row">
                    
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->
                        
                        <!-- Prices Item Start -->
                        <div class="row prices_item">
                            <div class="row prices_item_vn">
                                <div class="prices_item_name"><span>Porcelain Veneers</span></div>
                                <div class="prices_item_name_price overflow_hidden">
                                    <div class="radius_left">
                                        <span>$120–200</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Prices Item End -->                                                                                            
                    </div>
                </div>
            </div>
            <!-- Prices Block end -->


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
            <!-- End Testimonials -->
          
        </main>

@endsection