<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_token" content="{{csrf_token()}}"/>
<meta name="csrf-token" content="{{ csrf_token() }}">
<?php
$site_name = SM::sm_get_site_name();
$fb_app_id = SM::get_setting_value('fb_app_id');
$shop_url = SM::get_setting_value('shop_url');
$site_name = SM::sm_string($site_name) ? $site_name : 'Next Page Technology Ltd.';

$seo_title = stripslashes(
    (
        isset($seo_title)
        && SM::sm_string($seo_title)
    )
        ? $seo_title
        : SM::get_setting_value('seo_title')
);
$meta_key = stripslashes(
    (
        isset($meta_key)
        && SM::sm_string($meta_key)
    )
        ? $meta_key
        : SM::get_setting_value('site_meta_keywords')
);
$meta_description = stripslashes(
    (
        isset($meta_description)
        && SM::sm_string($meta_description)
    )
        ? $meta_description
        : SM::get_setting_value('site_meta_description')
);
$image = (isset($image)
    && SM::sm_string($image)) ? $image
    : asset(SM::sm_get_the_src(SM::get_setting_value('site_screenshot')));


?><title>{{ $seo_title }}</title>

<meta name="keywords" content="{!!$meta_key!!}">
<meta name="description" content="{!! $meta_description !!}"/>

<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="{{$seo_title}}">
<meta itemprop="description" content="{!! $meta_description !!}">
<meta itemprop="image" content="{!!$image!!}">

<!-- Twitter Card data -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="{{$site_name}}">
<meta name="twitter:title" content="{{ $seo_title }}">
<meta name="twitter:description" content="{!! $meta_description !!}">
<meta name="twitter:image:src" content="{!!$image!!}">

<!-- Open Graph data -->
<meta property="og:title" content="{{ $seo_title }}"/>
<meta property="og:type" content="article"/>
<meta property="og:image" content="{!!$image!!}"/>
<meta property="og:description" content="{!! $meta_description !!}"/>
<meta property="og:site_name" content="{{$site_name}}"/>
<meta property="og:url" content="{!! $shop_url !!}"/>
<meta property="fb:app_id" content="{!! $fb_app_id !!}"/>
<link rel="icon" href="<?php echo SM::sm_get_the_src(SM::sm_get_site_favicon(), 30, 30); ?>" type="image/x-icon">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-145278129-1"></script>
<!-- Load Facebook SDK for JavaScript -->
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>


<section class="chat-box-area">

    <script>
        window.fbAsyncInit = function() {
            FB.init({
                appId            : '312088412769976',
                autoLogAppEvents : false,
                xfbml            : false,
                version          : 'v2.12'
            });
        };

        (function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <div class="fb-customerchat" page_id="407901929999387" minimized="true" theme_color="#b11b21"></div>