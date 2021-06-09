<?php

$asset = (PHP_SAPI === 'cli') ? false : asset('/');
$site = (PHP_SAPI === 'cli') ? false : url('/');
return [
    'smSite' => $site,
//admin slug and url
    'smAdminSlug' => 'admin',
    'smAdminUrl' => $site . '/admin/',
//pagination
    'smPagination' => 10,
    'smPaginationMedia' => 49,
    'smFrontPagination' => 10,
    'cachingTimeInMinutes' => 10,
    'popupHideTimeInMinutes' => 24 * 60,
    'popupHideTimeInMinutesForSubscriber' => 30 * 24 * 60,
//image upload directory and url
    'smUploadsDir' => 'uploads/',
    'smUploads' => $asset . 'uploads/',
    'smUploadsUrl' => $asset . 'uploads/',
//image size: width and height
//1: logo
//2-4:gallery
//5:manage page
//6:manage page
//7:author small
//8-10:blog
//11-11: sliders
//12 team
//13 testimonial logo
    'smPostMaxInMb' => 5,
//galary (600x400, 112x112 not crop resized)
    'smImgWidth' => [
        30, // fav icon-
        300, //logo-
        120, //loading logo-
        1903, //Slider
        77, //team
        200, //payment
        //  --admin panel---
        165, //featured-image
        112, //media small image
        80, //lists image
        600,
    ],
    'smImgHeight' => [
        30, // fav icon-
        142, //logo-
        237, //loading logo-
        1051, //Slider
        77, //team
        65, //payment
        //  --admin panel---
        165, //featured-image-
        112, //media small image-
        80, //lists image-
        400,
    ],
    //               1    2    3    4     5   6   7    8    9    10  11  12    13   14   15   16  17
];
