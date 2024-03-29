<?php $__env->startSection('title','Admin Blog'); ?>
<?php $__env->startSection('content'); ?>
    <section id="widget-grid" class="">
	<?php
	$edit_blog = SM::check_this_method_access( 'blogs', 'edit' ) ? 1 : 0;
	$blog_status_update = SM::check_this_method_access( 'blogs', 'blog_status_update' ) ? 1 : 0;
	$delete_blog = SM::check_this_method_access( 'blogs', 'delete' ) ? 1 : 0;
	$per = $edit_blog + $delete_blog;
	?>
    <!-- row -->
        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="blog_list_wid">
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
                        <span class="widget-icon"> <i class="fa fa-comments"></i> </span>
                        <h2>Blog list </h2>

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
                                    <th>Categories</th>
                                    <th>Title</th>
                                    <th>Image</th>
                                    <th>Is Sticky?</th>
                                    <th>Author</th>
                                    <th>Views</th>
                                    <th>Likes</th>
                                    <th>Comments</th>
									<?php if ($blog_status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </thead>
                                <tbody id="dataBody">
                                <?php echo $__env->make('nptl-admin.common.blog.blogs', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Categories</th>
                                    <th>Title</th>
                                    <th>Image</th>
                                    <th>Is Sticky?</th>
                                    <th>Author</th>
                                    <th>Views</th>
                                    <th>Likes</th>
                                    <th>Comments</th>
									<?php if ($blog_status_update != 0): ?>
                                    <th class="text-center">Status</th>
									<?php endif; ?>
									<?php if ($per != 0): ?>
                                    <th class="text-center">Action</th>
									<?php endif; ?>
                                </tr>
                                </tfoot>
                            </table>
                            <?php echo $__env->make('nptl-admin.common.common.pagination_links', ['smPagination'=>$all_blog], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('nptl-admin/master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>