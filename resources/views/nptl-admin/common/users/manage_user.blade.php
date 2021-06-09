@extends(('nptl-admin/master'))
@section('title','Users')
@section('content')
	<?php
	$edit = SM::check_this_method_access( 'users', 'edit_user' ) ? 1 : 0;
	$status_update = SM::check_this_method_access( 'users', 'user_status_update' ) ? 1 : 0;
	$delete = SM::check_this_method_access( 'users', 'delete_user' ) ? 1 : 0;
	$per = $edit + $delete;
	?>
    <section id="widget-grid" class="">

        <!-- row -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="front_user_list_wid">
                    <!-- widget options:
                       usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                       data-widget-colorbutton="false"
                       data-widget-editbutton="false"
                       data-widget-togglebutton="false"
                       data-widget-deletebutton="false"
                       data-widget-fullscreenbutton="false"
                       data-widget-custombutton="false"
                       data-widget-collapsed="true"
                       data-widget-sortable="false"

                    -->
                    <header>
                        <span class="widget-icon"> <i class="fa fa-users"></i> </span>
                        <h2>User list </h2>

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
                                    <th>Role</th>
                                    <th>Image</th>
                                    <th>Full Name</th>
                                    <th>Username</th>
                                    <th>Email</th>
									<?php if ($status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </thead>
                                <tbody id="dataBody">
                                @include('nptl-admin.common.users.users')
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Role</th>
                                    <th>Image</th>
                                    <th>Full Name</th>
                                    <th>Username</th>
                                    <th>Email</th>
									<?php if ($status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </tfoot>
                            </table>
                            @include('nptl-admin.common.common.pagination_links', ['smPagination'=>$users])


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

