<?php
$featured_categories = \App\Model\Common\Category::Published()
    ->IsFeatured()
    ->orderBy('priority')
    ->take(5)
    ->get();
?>
<div class="boxes fixed_bottom" id="box_item">
    <nav class="box_tab">
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
            @foreach($featured_categories as $fcKey=> $f_category)
                <?php
                if ($fcKey == 0) {
                    $bg_color = 'bg_gray_dark';
                } elseif ($fcKey == 1) {
                    $bg_color = 'bg_cofee';
                } elseif ($fcKey == 2) {
                    $bg_color = 'bg_lightRed';
                } elseif ($fcKey == 3) {
                    $bg_color = 'bg_lightCofee';
                } elseif ($fcKey == 4) {
                    $bg_color = 'bg_yellow';
                }
                $segment = Request::segment(2);
                if ($segment == $f_category->slug) {
                    $add_class = 'show active';
                } else {
                    $add_class = '';
                }
                ?>
                <a class="nav-item nav-link {{ $bg_color }} {{ $add_class }}"
                   id="" href="{{ url('category/'.$f_category->slug )}}#box_item">{!! $f_category->title !!}</a>
            @endforeach
        </div>
    </nav>
</div>