@extends('frontend.master')

@section('content')
<?php
if ($blog->comments == 1) {
	$commentTitle = '1 Comment';
} elseif ($blog->comments > 1) {
	$commentTitle = $blog->comments . ' Comments';
} else {
	$commentTitle = 'No Comments';
}
if ($blog->views == 1) {
	$viewsTitle = '1 View';
} elseif ($blog->views > 1) {
	$viewsTitle = $blog->views . ' Views';
} else {
	$viewsTitle = 'No View';
}
if ($blog->likes == 1) {
	$likesTitle = '1 Like';
} elseif ($blog->likes > 1) {
	$likesTitle = $blog->likes . ' Likes';
} else {
	$likesTitle = 'No Likes';
}

$blogUrl = (url("blog/$blog->slug"));
$bannerImage = SM::smGetThemeOption("blog_detail_banner_image");
$blog_popular_is_enable = SM::smGetThemeOption( "blog_popular_is_enable", 1 );
$blog_show_category = SM::smGetThemeOption( "blog_show_category", 1 );
$blog_show_tag = SM::smGetThemeOption( "blog_show_tag", 1 );
$blog_sidebar_add = SM::smGetThemeOption( "blog_sidebar_add", 1 );
?>
 <main> 
            <!-- Blog Post Content Start-->
            <div class="row blog_post_content">
                <div class="container"> 
                	<h4>{{$blog->title}}</h4>
                   <!--  <h1>Tips from Our Main Dentist</h1> -->
                    <div class="row"> 
                        <!-- Post Header Start -->
                        <div class="row post_head">
                            <!-- Date Block Start -->
                            <div class="row post_head_date">
                                 <strong>{{ date("d", strtotime($blog->created_at)) }}</strong>
                                <b>{{ date("F-y", strtotime($blog->created_at)) }}</b>
                            </div>
                            <!-- Date Block End -->
                             
                            <!-- Autor Block Start -->
                             @empty(!$blog->image)
	                            <div class="row post_head_autor">
                                <img class="lozad" src="{!! SM::sm_get_the_src( $blog->image) !!}"
                                     alt="{{$blog->title}}" />
                                <span>By Adrainne Prestomelt</span>
                            </div>
                             @endempty
                            <!-- Autor Block End -->
                            
                        </div>
                        <!-- Post Header End -->
                        
                        <!-- Post Content Start -->
                        <div> 
                            <div> {!! stripslashes($blog->long_description) !!}  </div> 
                           <!-- Post Image Start -->
                              @empty(!$blog->image)
                            <div class="overflow_hidden post_img">
                                <div class="radius"><img class="lozad" src="{!! SM::sm_get_the_src( $blog->image) !!}" alt="DiDent" /></div>
                            </div>
                             @endempty
                            <!-- Post Image End -->
                             </div>
                        <!-- Post Content End -->
                        
                    </div>
                </div>
            </div>
            <!-- Blog Post Content End -->  
            
            <!-- Comments Start --> 
                <div class="container">
                    <div class="row comments" id="comments">
                       
                         <!-- Comments Form Start -->
                    	@if($blog->comment_enable ==1)
                        <div class="blog-comments-area">
                            <div class="com-replay-form" id="leaveAComment">
                                <h3 class="com-title">LEAVE A COMMENT</h3>
                                <div class="row  com-form-border">
                                    {!! Form::open(['method'=>"post",'action'=>"Front\HomeController@saveComment", "id"=>"commentForm"]) !!}
                                    <div class="col-lg-12">
                                        {!! Form::textarea("comments", null, ["placeholder"=>"Your Comment", "id"=>"comments"]) !!}
                                        <span id="commentValidity" class="comments-helper help-block pull-left"
                                              style="display: none">Comment must between 10 to 500 Characters</span>
                                        <span id="commentLeft" class="comments-helper  help-block pull-right">Left 500 Characters</span>
                                    </div>
                                   
                                    <div class="col-lg-12">
                                        <input type="hidden" value="0" name="parent_id" id="parent_comment_id">
                                        <input type="hidden" value="{{$blog->id}}" name="blog_id" id="">
                                      
                                        <input type="submit" id="commentSubmit" value="Submit your comment">
                                    </div>

                                    <div class="col-lg-12" id="commentErrors">
                                    </div>
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
                    @endif
                        <!-- Comments Form End -->
                    </div>
                </div>
            <!-- Comments End -->
</main>
        @endsection