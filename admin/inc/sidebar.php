
<!-- /.navbar-top-links -->

<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                </div>
                <!-- /input-group -->
            </li>
            <li>
                <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
            </li>
            <?php if(Session::get('userRole') == '1'){ ?>
            <li>
                <a href="#"><i class="fa fa-wrench fa-fw"></i> Customize<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="customize.php">Title</a>
                    </li>
                    <li>
                        <a href="customize.php">Tagline</a>
                    </li>
                    <li>
                        <a href="customize.php">Logo</a>
                    </li>
                    <li>
                        <a href="customize.php">Contact Info</a>
                    </li>
                    <li>
                        <a href="customize.php">Social Icons</a>
                    </li>
                    <li>
                        <a href="customize.php">Copyright</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-bars fa-fw"></i> Menus<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="menu.php">Main Menu</a>
                    </li>
                    <li>
                        <a href="menu.php">Footer Menu</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-envelope fa-fw"></i> Contact<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="compose.php">Compose (<i class="fa fa-plus"></i>) </a>
                    </li>
                    <li>
                        <a href="inbox.php">Inbox</a>
                    </li>
                    <li>
                        <a href="sent-items.php">Sent Items</a>
                    </li>
                    <li>
                        <a href="newsletter.php">Newsletter</a>
                    </li>
                    <li>
                        <a href="spam.php">Spam</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <?php } ?>
            <li>
                <a href="#"><i class="fa fa-newspaper-o fa-fw"></i> Posts<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="posts.php">All Posts</a>
                    </li>
                    <li>
                        <a href="addpost.php">Add New Post</a>
                    </li>
                    <li>
                        <a href="category.php">Categories</a>
                    </li>
                    <li>
                        <a href="comments.php">Comments</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-user fa-fw"></i> Users<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <?php if(Session::get('userRole') == '1'){ ?>
                    <li>
                        <a href="users.php">All User</a>
                    </li>
                    <li>
                        <a href="adduser.php">Add New User</a>
                    </li>
                    <?php } ?>
                    <li>
                        <a href="profile.php">Profile</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="seo.php"><i class="fa fa-line-chart fa-fw"></i> SEO</a>
            </li>
            <li>
                <a href="settings.php"><i class="fa fa-cog fa-fw"></i> Settings</a>
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
</nav>