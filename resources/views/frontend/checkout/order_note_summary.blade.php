<div class="notes-summary-area">
    <div class="heading">
        <h2>Order Notes and Summary</h2>
        <hr>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-6 order-notes">
            <p class="title">Please write notes of your order</p>
            <div class="form-group">
                <p for="order_comments"></p>
                <textarea name="order_note" id="order_note" class="form-control"
                          placeholder="Order Notes">@if(!empty(session('order_comments'))){{session('order_comments')}}@endif</textarea>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 order-summary">
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                    <tr>
                        <th><span>SubTotal</span></th>
                        <td align="right"
                            id="subtotal">{{ SM::currency_price_value($sub_total) }}</td>
                    </tr>
                    @if($tax>0)
                        <tr>
                            <th><span>Tax</span></th>
                            <td align="right">{{ SM::currency_price_value($tax) }}</td>
                        </tr>
                    @endif
                    <tr>
                        <th><span>Shipping Cost</br>
                                <small> {{ $shipping_method_name }}</small></span></th>
                        <td align="right">{{ SM::currency_price_value($shipping_method_charge) }}</td>
                    </tr>
                    @if($noraml_discount_amount>0)
                        <tr>
                            <th><span>Discount (Noraml)
                                @if($discount_amount>0)
                                        - {{ $discount_amount }} %
                                    @endif
                                </span></th>
                            <td align="right"
                                id="discount">
                                {{ SM::currency_price_value($noraml_discount_amount) }}</td>
                        </tr>
                    @endif
                    <tr>
                        <th><span>Discount(Coupon)</span></th>
                        <td class="coupon_amount_val" align="right"
                            id="coupon_amount">
                            {{ SM::currency_price_value($coupon_amount) }}</td>
                    </tr>
                    <tr>
                        <th class="last"><span>Total</span></th>
                        <td class="last grand_total_val" align="right"
                            id="grand_total">{{ SM::currency_price_value($grand_total) }}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>