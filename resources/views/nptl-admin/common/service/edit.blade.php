@extends("nptl-admin.master")
@section("title","Edit Service")
@section("content")
    @include(('nptl-admin/common/media/media_pop_up'))
    <section id="widget-grid" class="">
        <!-- row -->
        <div class="row">
            {!! Form::model($edit,["method"=>"PATCH","action"=>["Admin\Common\Services@update",$edit->id]]) !!}
            @include(("nptl-admin.common.service.form"),
            ['f_name'=>__("common.edit"), 'btn_name'=>__("common.update")])
            {!! Form::close() !!}
        </div>
        <!-- end row -->
    </section>
@endsection