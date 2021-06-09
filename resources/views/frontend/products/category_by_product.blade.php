@extends('frontend.master')
@section("title", $categoryInfo->title)
@section('content')
    <?php
    if (isset($_GET['box'])) {
        $box = $_GET['box'];
    } else {
        $box = '';
    }

    if (isset($_GET['page'])) {
        $page = $_GET['page'];
        if ($page == 'home') {
            $box = '';
        }
    } else {
        $page = '';
    }
    ?>

    <div class="tab-content bg_gray" id="nav-tabContent">
        <div class="tab-pane fade show active"
             id="business_consulting"
             role="tabpanel" aria-labelledby="nav-home-tab">
            <div class="links">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-12 col-lg-8">
                            <div class="accordion" id="links_accorodion">
                                @forelse($categoryInfo->products as $pKey=> $product)
                                    <div class="card">
                                        <div class="card-header" id="heading_business_plan_{{$pKey}}">
                                            <h2 class="mb-0 text-center">
                                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                                        data-target="#business_plan_{{$pKey}}" aria-expanded="true"
                                                        aria-controls="business_plan_{{$pKey}}">
                                                    {{ $product->title }}
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="business_plan_{{$pKey}}" class="collapse"
                                             aria-labelledby="heading_business_plan_{{$pKey}}"
                                             data-parent="#links_accorodion">
                                            <div class="card-body">
                                                {!! $product->long_description !!}
                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <div class="card">
                                        <div class="card-header" id="heading_business_plan">
                                            <h2 class="mb-0 text-center">
                                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                                        data-target="#business_plan" aria-expanded="true"
                                                        aria-controls="business_plan">
                                                    No Data Found
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="business_plan" class="collapse"
                                             aria-labelledby="heading_business_plan"
                                             data-parent="#links_accorodion">
                                            <div class="card-body">
                                                No Data Found
                                            </div>
                                        </div>
                                    </div>
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection