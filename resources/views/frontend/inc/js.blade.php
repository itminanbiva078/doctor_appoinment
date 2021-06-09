<!-- Optional JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
{!!Html::script('frontend/bootstrap/dist/js/bootstrap.min.js')!!}

<script type="text/javascript">
    $(document).ready(function () {
        $('.main_slider').css('height', $(window).height());
        $('[data-toggle="tooltip"]').tooltip();
    })

    $('a[data-toggle="tab"]').on('click', function (e) {
        totalScrolled = $(window).scrollTop();
        scrollAmount = $(window).height() - $('#nav-tab').height() - $('.main_navbar').outerHeight();
        $('html, body').animate({scrollTop: scrollAmount}, 'slow');
    })
    if (window.location.hash) {
        var url_hash = window.location.hash;
        if (url_hash == '#contact_us') {
            $('html, body').animate({scrollTop: $(window).height() - $('#nav-tab').height() - $('.main_navbar').outerHeight()}, 'slow');
        } else if (url_hash == '#payment_page') {
            $('html, body').animate({scrollTop: $(window).height() - $('#nav-tab').height() - $('.main_navbar').outerHeight()}, 'slow');
        } else if (url_hash == '#about_us') {
            console.log('asdf');
        } else {
            scrollAmount = $(window).height() - $('#nav-tab').height() - $('.main_navbar').outerHeight();
            $('html, body').animate({scrollTop: scrollAmount}, 'slow');
        }
    }

    function id(v) {
        return document.getElementById(v);
    }

    function doneLoading() {
        $('.ovrl').css('opacity', '0');
        setTimeout(function () {
            $('.ovrl').css('display', 'none');
            $('body').addClass('loaded');
            $('.lazyLoad').each(function () {
                $(this).attr('src', $(this).attr('data-image-src'));
            })
        }, 2000);
    }

    function loadbar() {
        var ovrl = id("overlay"),
            prog = id("progress"),
            stat = id("progstat"),
            img = document.images,
            c = 0;
        tot = img.length;

        function imgLoaded() {
            c += 1;
            var perc = ((100 / tot * c) << 0) + "%";
            if (c === tot)
                return doneLoading();
        }

        for (var i = 0; i < tot; i++) {
            var tImg = new Image();
            tImg.onload = imgLoaded;
            tImg.onerror = imgLoaded;
            tImg.src = img[i].src;
        }
    }

    document.addEventListener('DOMContentLoaded', loadbar, false);

    $(window).scroll(function () {
        totalScroll = $(window).scrollTop();
        windowHeight = $(window).height();
        boxItem = $('div.boxes').height();
        navHeight = $('.main_navbar').height();
        if (totalScroll > (windowHeight - (boxItem + (navHeight * 2)))) {
            $('.main_navbar').css('background', 'rgba(0,0,0,.5)');
        } else {
            $('.main_navbar').css('background', 'none');
        }
    })

</script>