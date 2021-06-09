<?php $__env->startSection('title', 'Admin Dashboard'); ?>
<?php $__env->startSection('subtitle', ''); ?>
<?php $__env->startSection('content'); ?>
    <style>
        .huge {
            font-size: 35px;
        }

        .dashboard-title {
            font-size: 14px;
            font-weight: bold;
        }
    </style>
    <section id="widget-grid" class="">
        <!-- row -->
        <!-- WIDGET END -->
        <div class="row">
            <!-- NEW WIDGET START -->
            <article class="col-lg-12 col-xs-12">
                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-total_order_summary-info" data-widget-editbutton="false">

                    <header>
                        <span class="widget-icon"> <i class="fa fa-shopping-bag"></i> </span>
                        <h2>Summary</h2>
                    </header>
                    <!-- widget content -->
                    <div class="widget-body">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-list fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo e(SM::sm_get_count('services')); ?></div>
                                            <div class="dashboard-title">Total Services</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo e(url(config('constant.smAdminSlug') . '/services/')); ?>">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-users fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo e(SM::sm_get_count('categories')); ?></div>
                                            <div class="dashboard-title">Total Category</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo e(url(config('constant.smAdminSlug') . '/categories/')); ?>">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-address-book-o fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo e(SM::sm_get_count('contacts')); ?></div>
                                            <div class="dashboard-title">Total Contact</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo e(url(config('constant.smAdminSlug') . '/contacts/')); ?>">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-star fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge"><?php echo e(SM::sm_get_count( 'subscribers')); ?></div>
                                            <div class="dashboard-title">Total Subscriber</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo e(url(config('constant.smAdminSlug') . '/subscribers/')); ?>">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </div>
                    <!-- end widget content -->
                </div>
                <!-- end widget -->
            </article>
        </div>
        <div class="row">
            <!-- NEW WIDGET START -->
            <article class="col-sm-6">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-latest_5_subscribers-info" data-widget-editbutton="false">
                    <header>
                        <span class="widget-icon"> <i class="fa fa-lg fa-fw fa-product-hunt"></i> </span>
                        <h2>Latest 5 Subscribers</h2>
                    </header>
                    <!-- widget div-->
                    <div>
                        <!-- widget content -->
                        <div class="widget-body">
                            <table class="table table-striped">
                                <?php $__currentLoopData = $latest_5_subscribers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subscriber): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td>
                                            <strong><?php echo e($subscriber->email); ?></strong>
                                        </td>
                                        <td class="">
                                            <?php echo e($subscriber->ip); ?>

                                        </td>
                                        <td class="text-right">
                                            <?php echo e(SM::showDateTime($subscriber->created_at)); ?>

                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </table>
                        </div>
                        <!-- end widget content -->
                    </div>
                    <!-- end widget div -->
                </div>
                <!-- end widget -->
            </article>
            <!-- WIDGET END -->
            <!-- NEW WIDGET START -->
            <article class="col-sm-6">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-latest_5_contacts-info" data-widget-editbutton="false">
                    <header>
                        <span class="widget-icon"> <i class="fa fa-lg fa-fw fa-product-hunt"></i> </span>
                        <h2>Latest 5 Contact</h2>
                    </header>
                    <!-- widget div-->
                    <div>
                        <!-- widget content -->
                        <div class="widget-body">
                            <table class="table table-striped">
                                <?php $__currentLoopData = $latest_5_contacts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $contact): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td>
                                            <strong><?php echo e($contact->fullname); ?></strong>
                                        </td>
                                        <td class="">
                                            <?php echo e($contact->email); ?>

                                        </td>
                                        <td class="text-right">
                                            <?php echo e($contact->message); ?>

                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </table>
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
        <!-- row -->
        <div class="row">
            <!-- NEW WIDGET START -->
            <article class="col-sm-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-id-visitor" data-widget-editbutton="false">

                    <header>
                        <span class="widget-icon"> <i class="glyphicon glyphicon-stats txt-color-darken"></i> </span>
                        <h2>Daily Site Visitor</h2>

                        <ul class="nav nav-tabs pull-right in" id="myTab">
                            <li class="active">
                                <a data-toggle="tab" href="#s1"><i class="fa fa-clock-o"></i>
                                    <span class="hidden-mobile hidden-tablet">
                                        <?php echo e(__("dashboard.visitorStats")); ?>

                                    </span>
                                </a>
                            </li>
                        </ul>

                    </header>

                    <!-- widget div-->
                    <div class="no-padding">
                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                        </div>
                        <!-- end widget edit box -->

                        <div class="widget-body">
                            <!-- content -->
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade active in padding-10 no-padding-bottom" id="s1">
                                    <div class="row no-space">
                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                            <div id="updating-chart" class="chart-large txt-color-red"></div>

                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 show-stats">

                                            <div class="row">
                                                <div class="col-xs-6 col-sm-6 col-md-12 col-lg-12"> <span class="text">
                                                        <?php echo e(__("dashboard.todayVisitor")); ?> <span
                                                                class="pull-right"><?php
                                                            echo $today_visitor;
                                                            echo $today_visitor == 1 ? ' Person' : ' Persons';
                                                            ?> </span> </span>
                                                    <div class="progress">
                                                        <?php
                                                        if ($max_visitor > 0) {
                                                            $t_slider = ceil((100 * $today_visitor) / $max_visitor);
                                                        } else {
                                                            $t_slider = 0;
                                                        }

                                                        ?>
                                                        <div class="progress-bar bg-color-blueDark"
                                                             style="width: <?php echo "$t_slider"; ?>%;"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-12 col-lg-12"> <span class="text">
                                                        <?php echo e(__("dashboard.maxVisitor")); ?>

                                                        <span
                                                                class="pull-right"><?php
                                                            echo $max_visitor;
                                                            echo $max_visitor == 1 ? ' Person' : ' Persons';
                                                            ?></span> </span>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-color-blue"
                                                             style="width: 100%;"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-12 col-lg-12"><span class="text">
                                                <?php echo e(__("dashboard.bugsSquashed")); ?><span
                                                                class="pull-right">77%</span> </span>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-color-blue"
                                                             style="width: 77%;"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-12 col-lg-12"><span class="text">
                                                <?php echo e(__("dashboard.userTesting")); ?> <span
                                                                class="pull-right">7 Days</span> </span>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-color-greenLight"
                                                             style="width: 84%;"></div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>


                                </div>
                                <!-- end s1 tab pane -->


                            </div>

                            <!-- end content -->
                        </div>

                    </div>
                    <!-- end widget div -->
                </div>
                <!-- end widget -->

            </article>
            <!-- WIDGET END -->
        </div>
        <!-- end row -->

    </section>
    <!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
    <script src="<?php echo e(asset('nptl-admin/js/plugin/flot/jquery.flot.cust.min.js')); ?>"></script>
    <script src="<?php echo e(asset('nptl-admin/js/plugin/flot/jquery.flot.resize.min.js')); ?>"></script>
    <script src="<?php echo e(asset('nptl-admin/js/plugin/flot/jquery.flot.tooltip.min.js')); ?>"></script>
    <?php
    $mv = round($max_visitor / 20) * 20;
    $mv = $mv < $max_visitor ? $mv + 20 : $mv;
    ?>
    <script type="text/javascript">
        $(document).ready(function () {
            var data = [], totalPoints = 200, $UpdatingChartColors = $("#updating-chart").css('color');
            // setup plot
            var options = {
                yaxis: {
                    min: 0,
                    max: <?php echo($mv); ?>
                },
                xaxis: {
                    min: 0,
                    max: 50
                },
                colors: [$UpdatingChartColors],
                series: {
                    lines: {
                        lineWidth: 1,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 0
                            }, {
                                opacity: 0.4
                            }]
                        },
                        steps: false
                    }
                },
                grid: {hoverable: true}
            };
            var plot = $.plot($("#updating-chart"), [<?php echo json_encode($viewsReformatted); ?>], options);

            /*end updating chart*/

            function showTooltip(x, y, contents) {
                $('<div id="tooltip">' + contents + '</div>').css({
                    position: 'absolute',
                    display: 'none',
                    top: y - 35,
                    left: x - 10,
                    border: '1px solid #fdd',
                    padding: '2px',
                    'background-color': '#fee'
                }).appendTo("body").fadeIn(200);
            }

            var viewsInfo = <?php echo json_encode($viewsInfo); ?>;
            var previousPoint = null;
            $("#updating-chart").bind("plothover", function (event, pos, item) {
                if (item) {
                    if (previousPoint != item.dataIndex) {
                        previousPoint = item.dataIndex;
                        $("#tooltip").remove();
                        var x = item.datapoint[0].toFixed(0),
                            y = item.datapoint[1].toFixed(0);

                        showTooltip(item.pageX, item.pageY, viewsInfo[x]);
                    }
                } else {
                    $("#tooltip").remove();
                    previousPoint = null;
                }
            });
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make(('nptl-admin/master'), array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>