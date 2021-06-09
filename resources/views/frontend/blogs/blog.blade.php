<?php
    $countStickyPost = count($stickyBlogPost);
    $isBreadcrumbEnable = SM::smGetThemeOption("blog_is_breadcrumb_enable", false);

    $pagination = [
        [
            "title" => "Blog"
        ]
    ];
    $title = SM::smGetThemeOption("blog_banner_title");
    $subtitle = SM::smGetThemeOption("blog_banner_subtitle");
    $bannerImage = SM::smGetThemeOption("blog_banner_image");
    $blog_popular_is_enable = SM::smGetThemeOption( "blog_popular_is_enable", 1 );
    $blog_show_category = SM::smGetThemeOption( "blog_show_category", 1 );
    $blog_show_tag = SM::smGetThemeOption( "blog_show_tag", 1 );
    $blog_sidebar_add = SM::smGetThemeOption( "blog_sidebar_add", 1 );
    ?>

@extends('frontend.master')
@section('content')
<main> 
 <!-- Header block start -->
 <div class="overflow_hidden title_blog">
                <div class="radius_niz_mini"> 
                    <div class="row title_blog_fon lozad" data-background-image="{!! SM::sm_get_the_src($bannerImage) !!}">
        			     <div class="container"> 
        					<div class="title_blog_container row">
                                
                                <h1>{{$title}} </h1>
                                <p>{{ $subtitle}}</p>
                              
                            </div>
        				</div>
        			</div>
                </div>
            </div>
			<!-- Header block end -->


        <div class="row category_content">
            <div class="container"> 
                <h2>{{$title}}</h2>
                <div class="row">
                    
                    <!-- Col Left Start -->
                     @if(!empty($stickyBlogPost))
         
                    <div class="row col_left"> 
                         
                        <div class="row row-15 blog_grid more3"> 
                             <div class="row">
                                @foreach($stickyBlogPost as $blog)
                                
                                <!-- Blog Item Start -->
                                <div class="col-2 blogBox ">
                                    <div class="blog_grid_p">
                                    <div class="row blog_item_vn">
                                        <div class="overflow_hidden blog_item_img">
                                            <div class="radius_niz">
                                                <a href="{!! url( "blog/$blog->slug" ) !!}"><img class="lozad" src="{!! SM::sm_get_the_src( $blog->image) !!}" alt="DiDent" /></a>
                                            </div>
                                        </div> 
                                        <div class="blog_item_cont">
                                            <a href="{!! url( "blog/$blog->slug" ) !!}" class="blog_item_title">{{$blog->title}}</a>
                                            <span class="date">{{date("F d, Y", strtotime($blog->created_at))}}</span>
                                            <p>{{$blog->short_description}}</p>
                                            <a href="{!! url( "blog/$blog->slug" ) !!}" class="btn_white">Learn more</a>
                                        </div> 
                                    </div>
                                    </div>
                                </div>
                                 @endforeach
                                <!-- Blog Item End -->
                            </div>
                        </div>
                          
                    <div class="center row"><a href="#" id="loadMore" class="btn">Load More</a></div>                             
                    </div>
                      @endif
                    <!-- Best Left End--> 
                    
                    <!-- Col Right Sidebar Start -->
                    <div class="row col_right sidebar">
                       <!-- Subscription Start -->
                        {!! Form::open(["method"=>"post", "action"=>'Front\HomeController@subscribe', 'class'=>'form-inline form-subscribe', 'id'=>"newsletterForm"]) !!}
                       <div class="row subscription">
                            <div class="subscription_top">
                                <div class="wighet-title">Subscription</div>
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="subscription_input input_white">
                                <label>Email</label>
                                <input class="white" name="email" required type="email" placeholder="Your Email" />
                                <input type="submit" value="Subscribe" id="newsletterFormSubmit"/>
                            </div>
                       </div>
                       {!! Form::close() !!}

                       <!-- Subscription End -->
                     
                       <!-- Follow Us On Start -->
                       <div class="row follow_us_on block_sidebar">
                            <div class="wighet-title">Follow Us on</div>
                            <div class="row block_sidebar_content">
                                <div class="sidebar_social_button">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-rss"></i></a> 
                                </div>
                            </div>
                       </div>
                       <!-- Follow Us On End -->
                       
                       <!-- Categories Start -->
                        @if($blog_show_category==1)
                        <?php
                        $getCategories = SM::getCategories(0);
                        ?>
                        @if(count($getCategories)>0)
                       <div class="row block_categories block_sidebar">
                            <div class="wighet-title">Categories</div>
                            <div class="row block_sidebar_content">
                                <div class="sidebar_categories"> 
                                    <!-- Categories Url Start -->
                                    <ul>
                                         @foreach($getCategories as $cat)
                                        <li class="row">
                                            <a href="{!! url("blog/category/".$cat->slug) !!}"> {{$cat->title}}</a>
                                           <span>( {{count($cat->blogs)}} )</span>
                                        </li>
                                          @endforeach
                                    </ul>  
                                    <!-- Categories Url End --> 
                                    </div>
                            </div>
                       </div>
                           </aside>
        @endif
    @endif
                       <!-- Categories End --> 
                       
                    </div>
                    <!-- Col Right Sidebar End-->
                </div>
            </div>
        </div>
        <!-- Blog Category Content End --> 
        




    </main>
@endsection