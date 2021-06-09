
<html>
<head>
    <?php echo $__env->make('frontend.common.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <?php echo $__env->make('frontend.inc.css', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <?php echo $__env->make('frontend.common.additional_css', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
     <?php echo $__env->yieldPushContent('style'); ?>
</head>
<body>

<?php echo $__env->make('frontend.inc.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>


<?php echo $__env->yieldContent('content'); ?>

<?php echo $__env->make('frontend.inc.footer_top', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->make('frontend.inc.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->make('frontend.inc.js', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->yieldPushContent('script'); ?>
