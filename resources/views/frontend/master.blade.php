
<html>
<head>
    @include('frontend.common.meta')
    @include('frontend.inc.css')
    @include('frontend.common.additional_css')
     @stack('style')
</head>
<body>

@include('frontend.inc.header')


@yield('content')

@include('frontend.inc.footer_top')

@include('frontend.inc.footer')

@include('frontend.inc.js')
{{--@include('frontend.common.additional_js')--}}
@stack('script')
