<%--
  Created by IntelliJ IDEA.
  User: 北
  Date: 2023/5/24
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>学生就业管理系统-设置</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="/index/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/index/css/apexcharts.css" rel="stylesheet">
    <link href="/index/css/tooplate-mini-finance.css" rel="stylesheet">
</head>

<body>
<header class="navbar sticky-top flex-md-nowrap">
    <div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
        <a class="navbar-brand" href="index.html">
            <i class="bi-box"></i>
            学生就业管理系统
        </a>
    </div>

    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <form class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0"
          action="#" method="get" role="form">
        <input class="form-control" name="search" type="text" placeholder="Search" aria-label="Search">
    </form>

    <div class="navbar-nav me-lg-2">
        <div class="nav-item text-nowrap d-flex align-items-center">
            <div class="dropdown ps-3">
                <a class="nav-link dropdown-toggle text-center" href="#" role="button" data-bs-toggle="dropdown"
                   aria-expanded="false">
                    <i class="bi-bell"></i>
                    <span
                            class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                            <span class="visually-hidden">New alerts</span>
                        </span>
                </a>

                <ul class="dropdown-menu notifications-block-wrap bg-white shadow">
                    <small>Notifications</small>

                    <li class="notifications-block border-bottom pb-2 mb-2">
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="notifications-icon-wrap bg-success">
                                <i class="notifications-icon bi-check-circle-fill"></i>
                            </div>

                            <div>
                                <span>Your account has been created successfuly.</span>

                                <p>12 days ago</p>
                            </div>
                        </a>
                    </li>

                    <li class="notifications-block border-bottom pb-2 mb-2">
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="notifications-icon-wrap bg-info">
                                <i class="notifications-icon bi-folder"></i>
                            </div>

                            <div>
                                <span>Please check. We have sent a Daily report.</span>

                                <p>10 days ago</p>
                            </div>
                        </a>
                    </li>

                    <li class="notifications-block">
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="notifications-icon-wrap bg-danger">
                                <i class="notifications-icon bi-question-circle"></i>
                            </div>

                            <div>
                                <span>Account verification failed.</span>

                                <p>1 hour ago</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="dropdown px-3">

            </div>
        </div>
    </div>
</header>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-3 d-md-block sidebar collapse">
            <div class="position-sticky py-4 px-3 sidebar-sticky">
                <ul class="nav flex-column h-100">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/index/student/index.jsp">
                            <i class="bi-house-fill me-2"></i>
                            首页
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/index/student/profile.jsp">
                            <i class="bi-person me-2"></i>
                            个人中心
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/index/student/wallet.jsp">
                            <i class="bi-wallet me-2"></i>
                            实习就业管理
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="/index/student/setting.jsp">
                            <i class="bi-gear me-2"></i>
                            设置
                        </a>
                    </li>

                    <li class="nav-item border-top mt-auto pt-2">
                        <a class="nav-link" href="/Login/login.jsp">
                            <i class="bi-box-arrow-left me-2"></i>
                            退出系统
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
            <div class="title-group mb-3">
                <h1 class="h2 mb-0">Settings</h1>
            </div>

            <div class="row my-4">
                <div class="col-lg-7 col-12">
                    <div class="custom-block bg-white">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="profile-tab" data-bs-toggle="tab"
                                        data-bs-target="#profile-tab-pane" type="button" role="tab"
                                        aria-controls="profile-tab-pane" aria-selected="true">修改个人信息</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="password-tab" data-bs-toggle="tab"
                                        data-bs-target="#password-tab-pane" type="button" role="tab"
                                        aria-controls="password-tab-pane" aria-selected="true">修改密码</button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <!-- <button class="nav-link" id="password-tab" data-bs-toggle="tab" data-bs-target="#password-tab-pane" type="button" role="tab" aria-controls="password-tab-pane" aria-selected="false">密码</button> -->
                            </li>

                            <!-- <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="notification-tab" data-bs-toggle="tab" data-bs-target="#notification-tab-pane" type="button" role="tab" aria-controls="notification-tab-pane" aria-selected="false">通知</button>
                                </li> -->
                        </ul>

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="profile-tab-pane" role="tabpanel"
                                 aria-labelledby="profile-tab" tabindex="0">
                                <h6 class="mb-4">个人信息</h6>

                                <form class="custom-form profile-form" action="#" method="post" role="form">
                                    <input type="text" name="major" id="major" pattern=""
                                           class="form-control" placeholder="请输入专业" required="">

                                    <input type="text" name="phone" id="phone"
                                           pattern="[0-9]{1,11}" class="form-control" placeholder="请输入联系方式"
                                           required="">

                                    <div class="d-flex">
                                        <%--                                        <button type="button" class="form-control me-3">--%>
                                        <%--                                            重置--%>
                                        <%--                                        </button>--%>

                                        <button type="submit" class="form-control ms-2">
                                            保存
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <!-- 修改密码 -->
                            <div class="tab-pane fade" id="password-tab-pane" role="tabpanel"
                                 aria-labelledby="password-tab" tabindex="0">
                                <h6 class="mb-4">密码</h6>

                                <form class="custom-form password-form" action="#" method="post" role="form">
                                    <input type="password" name="password" id="password" pattern="[0-9a-zA-Z]{4,10}"
                                           class="form-control" placeholder="请输入旧密码" required="">

                                    <input type="password" name="confirm_password" id="confirm_password"
                                           pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="请输入新密码"
                                           required="">

                                    <input type="password" name="confirm_password" id="confirm_password_again"
                                           pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="请再一次输入新密码"
                                           required="">

                                    <div class="d-flex">
                                        <%--                                        <button type="button" class="form-control me-3">--%>
                                        <%--                                            重置--%>
                                        <%--                                        </button>--%>

                                        <button type="submit" class="form-control ms-2">
                                            保存
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
</div>

<!-- JAVASCRIPT FILES -->
<script src="/index/js/jquery.min.js"></script>
<script src="/index/js/bootstrap.bundle.min.js"></script>
<script src="/index/js/custom.js"></script>


</body>
</html>
