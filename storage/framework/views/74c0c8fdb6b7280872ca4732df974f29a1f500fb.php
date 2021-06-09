<nav id="admin_main_nav">
     <ul>
        <li ctrl="dashboard">
            <a href="<?php echo e(url(url(SM::smAdminSlug()))); ?>" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i>
                <span class="menu-item-parent">Dashboard</span>
            </a>
        </li>
        <li ctrl="media">
            <a href="<?php echo e(url(url(SM::smAdminSlug('media')))); ?>" title="Media"><i class="fa fa-lg fa-fw fa-picture-o"></i>
                <span class="menu-item-parent">Media Gallery</span>
            </a>
        </li>
        <?php if (SM::check_this_contoller_access('tags')): ?>
        <li ctrl="tags">
            <a href="#"><i class="fa fa-lg fa-fw fa-tags"></i> <span
                        class="menu-item-parent">Tag Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('tags', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('tags/create'))); ?>">Add Tag</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('tags', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('tags'))); ?>">All Tag</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('categories')): ?>
        <li ctrl="categories">
            <a href="#"><i class="fa fa-lg fa-fw fa-list"></i> <span
                        class="menu-item-parent">Service Category </span></a>
            <ul>
                <?php if (SM::check_this_method_access('categories', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('categories/create'))); ?>">Add category</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('categories', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('categories'))); ?>">All Categories</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('services')): ?>
        <li ctrl="services">
            <a href="#"><i class="fa fa-lg fa-fw fa-list-ul"></i> <span
                        class="menu-item-parent">Service Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('services', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('services/create'))); ?>">Add Service</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('services', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('services'))); ?>">All Services</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('products')): ?>
        <li ctrl="products" style="display: none;">
            <a href="#"><i class="fa fa-lg fa-fw fa-list-alt"></i> <span
                        class="menu-item-parent">Product Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('products', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('products/create'))); ?>">Add Product</a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('products', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('products'))); ?>">All Product</a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('products', 'reviews')): ?>
                <li mtd="reviews">
                    <a href="<?php echo e(url(SM::smAdminSlug('products/reviews'))); ?>">All Reviews</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('brands')): ?>
        <li ctrl="brands" style="display: none;">
            <a href="#"><i class="fa fa-lg fa-fw fa-tags"></i> <span
                        class="menu-item-parent">Brand Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('brands', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('brands/create'))); ?>">Add Brand</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('brands', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('brands'))); ?>">All Brand</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('blogs')): ?>
        <li ctrl="blogs">
            <a href="#"><i class="fa fa-lg fa-fw fa-list-alt"></i> <span
                        class="menu-item-parent">Blog Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('blogs', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('blogs/create'))); ?>">Add Blog</a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('blogs', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('blogs'))); ?>">All Blog</a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('blogs', 'comments')): ?>
                <li mtd="comments">
                    <a href="<?php echo e(url(SM::smAdminSlug('blogs/comments'))); ?>">All Comments</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('coupons')): ?>
        <li ctrl="coupons" style="display: none;">
            <a href="#"><i class="fa fa-lg fa-fw fa-thumbs-up"></i> <span
                        class="menu-item-parent">Coupon Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('coupons', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('coupons/create'))); ?>">Add Coupon</a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('coupons', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('coupons'))); ?>">All Coupon</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('page')): ?>
        <li ctrl="page">
            <a href="#"><i class="fa fa-lg fa-fw fa-pagelines"></i> <span
                        class="menu-item-parent">Page Management</span></a>
            <ul>
                <?php if (SM::check_this_method_access('page', 'add_page')): ?>
                <li mtd="add_page">
                    <a href="<?php echo e(url(SM::smAdminSlug('pages/add_page'))); ?>">Add Page</a>
                </li>
                <?php endif; ?>

                <?php if (SM::check_this_method_access('page', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('pages'))); ?>">All Page</a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('sliders')): ?>
        <li ctrl="sliders">
            <a href="#"><i class="fa fa-lg fa-fw fa-sliders"></i> <span class="menu-item-parent">
                    Sliders
                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('sliders', 'add_slider')): ?>
                <li mtd="add_slider">
                    <a href="<?php echo e(url(SM::smAdminSlug('sliders/add_slider'))); ?>">
                        <?php echo e(__("menu.addSlider")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('sliders', 'sliders')): ?>
                <li mtd="sliders">
                    <a href="<?php echo e(url(SM::smAdminSlug('sliders'))); ?>">
                        <?php echo e(__("menu.sliders")); ?>

                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('appearance')): ?>
        <li ctrl="appearance">
            <a href="#"><i class="fa fa-lg fa-fw fa-eye"></i> <span class="menu-item-parent">
                    <?php echo e(__("menu.appearance")); ?>

                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('appearance', 'smthemeoptions')): ?>
                <li mtd="smthemeoptions">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/smthemeoptions'))); ?>">
                        <?php echo e(__("menu.themeOption")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('appearance', 'menus')): ?>
                <li mtd="menus">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/menus'))); ?>">
                        <?php echo e(__("menu.menus")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('appearance', 'editor')): ?>
                <li mtd="editor">
                    <a href="<?php echo e(url(SM::smAdminSlug('appearance/editor'))); ?>">
                        <span class="menu-item-parent">Editor</span></a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif;?>
        <?php if (SM::check_this_contoller_access('users')): ?>
        <li ctrl="users">
            <a href="#"><i class="fa fa-lg fa-fw fa-user"></i> <span class="menu-item-parent">
                    Users
                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('users', 'add_user')): ?>
                <li mtd="add_user">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/add_user'))); ?>">
                        <?php echo e(__("menu.addUser")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('users'))); ?>">
                        <?php echo e(__("menu.allUser")); ?>

                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'add_role')): ?>
                <li mtd="add_role">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/add_role'))); ?>">
                        Add Role
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('users', 'roles')): ?>
                <li mtd="roles">
                    <a href="<?php echo e(url(SM::smAdminSlug('users/roles'))); ?>">
                        User Roles
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('customers')): ?>
        <li ctrl="customers" style="display: none;">>
            <a href="#"><i class="fa fa-lg fa-fw fa-users"></i> <span class="menu-item-parent">
                    Customers
                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('customers', 'add_customer')): ?>
                <li mtd="add_customer">
                    <a href="<?php echo e(url(SM::smAdminSlug('customers/add_customer'))); ?>">
                        Add Customer
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('customers', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('customers'))); ?>">
                        Customer List
                    </a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('contacts')): ?>
        <li ctrl="contacts">
            <a href="<?php echo e(url(url(SM::smAdminSlug('contacts')))); ?>" title="contacts"><i class="fa fa-lg fa-fw fa-address-book"></i>
                <span class="menu-item-parent">Contacts</span>
            </a>
        </li>
        <?php endif; ?>
         <?php if (SM::check_this_contoller_access('subscribers')): ?>
        <li ctrl="subscribers">
            <a href="<?php echo e(url(url(SM::smAdminSlug('subscribers')))); ?>" title="subscribers"><i class="fa fa-lg fa-fw fa-star"></i>
                <span class="menu-item-parent">Subscribers</span>
            </a>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('Taxes')): ?>
        <li ctrl="taxes" style="display: none;">
            <a href="#"><i class="fa fa-lg fa-fw fa-money"></i> <span class="menu-item-parent">
                    Taxes
                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('Taxes', 'create')): ?>
                <li mtd="create">
                    <a href="<?php echo e(url(SM::smAdminSlug('taxes/create'))); ?>">
                        Add Tax
                    </a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('Taxes', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('taxes'))); ?>">
                        Tax List
                    </a>c
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
        <?php if (SM::check_this_contoller_access('setting')): ?>
        <li ctrl="setting">
            <a href="#"><i class="fa fa-lg fa-fw fa-cog"></i> <span class="menu-item-parent">
                    <?php echo e(__("menu.setting")); ?>

                </span></a>
            <ul>
                <?php if (SM::check_this_method_access('setting', 'index')): ?>
                <li mtd="index">
                    <a href="<?php echo e(url(SM::smAdminSlug('setting'))); ?>"><i class="fa fa-lg fa-fw fa-cogs"></i>
                        <span class="menu-item-parent"><?php echo e(__("menu.generalSetting")); ?></span></a>
                </li>
                <?php endif; ?>
                <?php if (SM::check_this_method_access('setting', 'social')): ?>
                <li mtd="social">
                    <a href="<?php echo e(url(SM::smAdminSlug('setting/social'))); ?>"><i class="fa fa-lg fa-fw fa-share"></i>
                        <span class="menu-item-parent">Social Setting</span></a>
                </li>
                <?php endif; ?>
            </ul>
        </li>
        <?php endif; ?>
    </ul>
</nav>
<span class="minifyme" data-action="minifyMenu">
   <i class="fa fa-arrow-circle-left hit"></i>
</span>