@extends("nptl-admin/master")
@section("title","Categories")
@section("content")
	<?php
	$edit_category = SM::check_this_method_access( 'categories', 'edit' ) ? 1 : 0;
	$category_status_update = SM::check_this_method_access( 'categories', 'category_status_update' ) ? 1 : 0;
	$delete_category = SM::check_this_method_access( 'categories', 'destroy' ) ? 1 : 0;
	$per = $edit_category + $delete_category;
 $teams = SM::smGetThemeOption("teams");
   ?>
    <section id="widget-grid" class="">

        <!-- row -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="cat_list_wid">

                    <header>
                        <span class="widget-icon"> <i class="fa fa-comments"></i> </span>
                        <h2>Category list </h2>

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->
                            <input class="form-control" type="text">
                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body table-responsive">

                            <!-- this is what the user will see -->
                            <table id="manage_blog" class="table table-striped table-bordered data_table" width="100%">

                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Title</th>
                                    <th>Color</th>
                                    <th>Priority</th>
                                    <th>Image</th>
                                    <th>Small Icon</th>
                                    <th>Total Products</th>
									<?php if ($category_status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </thead>
                                <tbody id="dataBody">
                                @include('nptl-admin.common.category.categories')
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Title</th>
                                    <th>Color</th>
                                    <th>Priority</th>
                                    <th>Image</th>
                                    <th>Small Icon</th>
                                    <th>Total Products</th>
									<?php if ($category_status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </tfoot>

                            </table>
                            @include('nptl-admin.common.common.pagination_links', ['smPagination'=>$all_category])


                        </div>
                        <!-- end widget content -->

                    </div>
                    <!-- end widget div -->

                </div>
                <!-- end widget -->

            </article>
            <!-- WIDGET END -->

        </div>

        <!-- end row -->

    </section>
@endsection