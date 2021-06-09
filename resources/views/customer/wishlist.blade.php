@extends('frontend.master')
@section("title", "Wishlist")
@section("content")
    <section class="common-section bg-black">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    @include("customer.left-sidebar")
                </div>
                <div class="col-sm-9">
                    <div class="account-panel">
                        <h2>My wishlist </h2>
                        @if(count($wishlists)>0)
                            <div class="list-wishlist-load">
                                <ul class="row list-wishlist">
                                @foreach($wishlists as $key=>$wishdata)
                                    <li class="col-sm-3 wishlistRow">
                                        <div class="">
                                            <a href="{{ url('product/'.$wishdata->product['slug']) }}">
                                                <img src="{{ SM::sm_get_the_src($wishdata->product['image'], 210, 255) }}" alt="{{ $wishdata->product['title'] }}" class="wish-image-style">
                                            </a>
                                        </div>
                                        <h5 class="product-name">
                                            <a href="{{ url('product/'.$wishdata->product['slug']) }}">{{ $wishdata->product['title'] }}</a>
                                            <a data-wshlist_id="{{ $wishdata->product->id }}"
                                               class="removeToWishlist pull-right"
                                               title="Remove item"
                                               href="javascript:void(0)"><i class="fa fa-close"></i></a>
                                        </h5>
                                    </li>
                                @endforeach
                            </ul>
                            </div>
                        @else
                            <div class="alert alert-warning">
                                <i class="fa fa-warning"></i> No data found
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection