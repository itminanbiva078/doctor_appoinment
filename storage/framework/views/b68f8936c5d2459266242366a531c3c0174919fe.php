<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-category-main" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-building"></i> </span>
            <h2><?php echo e($f_name); ?> Category</h2>

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
            <div class="widget-body padding-10">
                <div class="row">
                    <div class="col-sm-12">
                        <?php echo $__env->make("nptl-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'categories'], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group <?php echo e($errors->has('parent_id') ? ' has-error' : ''); ?>">

                            <?php echo Form::label('categories','Parent Category'); ?>

                            <?php
                            $cat_select_array['0'] = 'Main Category';
                            if (isset($categories) && count($categories) > 0) {
                                foreach ($categories as $category) {
                                    $cat_select_array[$category->id] = $category->title;
                                    $return_val = SM::category_tree_for_select_option($category->id, 0);
                                    $cat_select_array = SM::sm_multi_array_to_sangle_array($cat_select_array, $return_val);
                                }
                            }
                            if (isset($category_info->id) && isset($cat_select_array[$category_info->id])) {
                                unset($cat_select_array[$category_info->id]);
                            }
//                            var_dump($cat_select_array);
                            ?>
                            <?php echo Form::select('parent_id',$cat_select_array,null,['class'=>'select2']); ?>

                            <?php if($errors->has('parent_id')): ?>
                                <span class="help-block">
                                      <strong><?php echo e($errors->first('parent_id')); ?></strong>
                                   </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <?php echo Form::label('color_code','Color Code'); ?>

                            <?php echo Form::color('color_code', null,['class'=>'form-control', 'placeholder'=>'Color Code']); ?>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <?php echo Form::label('priority','Priority'); ?>

                            <?php echo Form::number('priority', null,['class'=>'form-control', 'placeholder'=>'Priority']); ?>

                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group<?php echo e($errors->has('description') ? ' has-error' : ''); ?>">
                            <?php echo Form::label('description','Category Description'); ?>

                            <?php echo Form::textarea('description', null,['class'=>'form-control ckeditor']); ?>

                            <?php if($errors->has('description')): ?>
                                <span class="help-block">
                                    <strong><?php echo e($errors->first('description')); ?></strong>
                                 </span>
                            <?php endif; ?>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-id-category-publish" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>Category Publish</h2>

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
            <div class="widget-body padding-10">
                <div class="form-group smart-form">
                    <label class="toggle">
                        <?php echo Form::checkbox('is_featured', null); ?>

                        <i data-swchon-text="Yes" data-swchoff-text="No"></i>Is featured?
                    </label>
                </div>
                <br>
                <?php
                $permission = SM::current_user_permission_array();
                if (SM::is_admin() || isset($permission) && isset($permission['categories']['category_status_update']) && $permission['categories']['category_status_update'] == 1)
                {
                ?>
                <div class="form-group<?php echo e($errors->has('status') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('status', 'Publication Status'); ?>

                    <?php echo Form::select('status',['1'=>'Publish','2'=>'Pending / Draft', '3'=>'Cancel'],null,['required'=>'','class'=>'form-control']); ?>

                    <?php if($errors->has('status')): ?>
                        <span class="help-block">
                             <strong><?php echo e($errors->first('status')); ?></strong>
                          </span>
                    <?php endif; ?>
                </div>
                <?php
                }
                ?>
                <div class="form-group">
                    <button class="btn btn-success btn-block" type="submit">
                        <i class="fa fa-save"></i>
                        <?php echo e($btn_name); ?> Category
                    </button>
                </div>

            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->


<?php
if (old('image')) {
    $image = old('image');
} elseif (isset($category_info->image)) {
    $image = $category_info->image;
} else {
    $image = '';
}
if (old('fav_icon')) {
    $fav_icon = old('fav_icon');
} elseif (isset($category_info->fav_icon)) {
    $fav_icon = $category_info->fav_icon;
} else {
    $fav_icon = '';
}

if (old('image_gallery')) {
    $image_gallery = old('image_gallery');
} elseif (isset($category_info->image_gallery)) {
    $image_gallery = $category_info->image_gallery;
} else {
    $image_gallery = '';
}

?>
<?php echo $__env->make('nptl-admin/common/common/image_form',['header_name'=>'Category', 'image'=>$image], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('nptl-admin/common/common/image_form',['header_name'=>'Category fav icon', 'image'=>$fav_icon, 'input_holder'=>'fav_icon', 'img_holder'=>'second_ph'], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php

$input_holder = 'image_gallery';
$img_holder = 'gallery_first_ph';
?>
<?php echo $__env->make('nptl-admin.common.common.gallary_form',['header_name'=>'Category Gallery', 'image' => $image_gallery,'input_holder'=>$input_holder,'img_holder'=>$img_holder], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('nptl-admin/common/common/meta_info',['header_name'=>'Category',
'width'=>'col-lg-12'], array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
