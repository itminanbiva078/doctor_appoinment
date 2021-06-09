@extends('frontend.master')
@section('title', 'Cart')
@section('content')
    <div class="columns-container">
        <div class="container-fluid" id="columns">
            <!-- breadcrumb -->
        @include('frontend.common.breadcrumb')
        <!-- ./breadcrumb -->
            <!-- page heading-->
            <h2 class="page-heading no-line" style="display: none;">
                <span class="page-heading-title2">Shopping Cart Summary</span>
            </h2>
            <!-- ../page heading-->
            <div class="page-content page-order">
                <div class="heading-counter warning">Your shopping cart contains:
                    <span>{{ count($cart) }} Product</span>
                </div>
                <div class="order-detail-content ">
                    <table class="table table-bordered table-responsive cart_summary cart_table">
                        <thead>
                        <tr>
                            <th class="cart_product">Product</th>
                            <th>Description</th>
                            <th>Unit price</th>
                            <th>Qty</th>
                            <th>Total</th>
                            <th class="action"><i class="fa fa-trash-o"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($cart as $id => $item)

                            <tr id="tr_{{$item->rowId}}" class="removeCartTrLi">
                                <td class="cart_product">
                                    <a href="{{ url('product/'.$item->options->slug) }}">
                                        <img src="{{ SM::sm_get_the_src($item->options->image, 100, 122) }}"
                                             alt="{{ $item->name }}"></a>
                                </td>
                                <td class="cart_description">
                                    <p class="product-name">
                                        <a style="color: #5cad5c;"
                                           href="{{ url('product/'.$item->options->slug) }}"><strong>{{ $item->name }}</strong>
                                        </a>
                                    </p>
                                    <span class="cart_ref">SKU : {{ $item->options->sku }}</span>
                                    @if($item->options->colorname != '')
                                        <br>
                                        <span>Color : {{$item->options->colorname}}</span>
                                    @endif
                                    @if($item->options->sizename != '')
                                        <br>
                                        <span>Size : {{$item->options->sizename}}</span>
                                    @endif
                                </td>
                                <td class="price"><span>{{ SM::currency_price_value($item->price) }} </span></td>
                                <td class="qty">
                                    <style>
                                        .input-group-btn {
                                            font-size: unset;
                                        }
                                    </style>
                                    <div class="input-group" style="display: table-caption;">
                                        <span class="input-group-btn inc" data-row_id="{{ $item->rowId }}" id=""><i
                                                    class="fa fa-plus" aria-hidden="true"></i></span>
                                        <input type="text" name="qty" class="form-control input-sm qty-inc-dc"
                                               id="{{ $item->rowId }}" value="{{ $item->qty }}">
                                        <span id="" class="input-group-btn dec" data-row_id="{{ $item->rowId }}"><i
                                                    class="fa fa-minus" aria-hidden="true"></i></span>
                                    </div>
                                </td>
                                <td class="price">
                                    <span>{{ SM::currency_price_value($item->price * $item->qty) }} </span>
                                </td>
                                <td class="action">
                                    <a data-product_id="{{ $item->rowId }}"
                                       class="btn btn-danger remove_link removeToCart"
                                       title="Delete item"
                                       href="javascript:void(0)"><i class="fa fa-trash-o"></i></a>

                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="7" class="text-center">
                                    <p class="product-name" style="color: red">No data found!</p>
                                </td>
                            </tr>
                        @endforelse
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="2" rowspan="3"></td>
                            <td colspan="3">Sub Total</td>
                            <td colspan="2">{{SM::currency_price_value(Cart::instance('cart')->subTotal())}}</td>
                        </tr>
                        <tr>
                            <td colspan="3"><strong>Total</strong></td>
                            <td colspan="2">
                                <strong>{{ SM::currency_price_value(Cart::instance('cart')->total())}}</strong></td>
                        </tr>

                        </tfoot>
                    </table>
                    <div class="pull-right">
                        @if(Auth::check())
                            <a class="btn btn-success active next-btn" href="{{url('/checkout')}}">Proceed to
                                checkout</a>
                        @else
                            <a class="btn btn-success active next-btn" data-toggle="modal" data-target="#loginModal"
                               href="#">Proceed to checkout</a>
                        @endif
                    </div>
                    <div class="">
                        <a class="btn btn-info active" href="{{url('/shop')}}">Continue shopping</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection