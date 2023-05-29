<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 北
  Date: 2023/5/26
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>学生就业管理系统-辅导员管理</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="/index/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/index/css/apexcharts.css" rel="stylesheet">
    <link href="/index/css/tooplate-mini-finance.css" rel="stylesheet">
    <link href="/index/css/wallet.css" rel="stylesheet">
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
            <!-- 消息提示 -->
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
            <!-- 头像导航栏 -->
            <div class="dropdown px-3">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                   aria-expanded="false">
                    <img src="../../images/user.png" class="profile-image img-fluid" alt="">
                </a>
                <ul class="dropdown-menu bg-white shadow">
                    <li>
                        <div class="dropdown-menu-profile-thumb d-flex">
                            <!-- <img src="../images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid me-3" alt=""> -->

                            <div class="d-flex flex-column">
                                <small>${userName}</small>
                                <a href="#">${userId}</a>
                            </div>
                        </div>
                    </li>

                    <li>
                        <a class="dropdown-item" href="/index/admin/setting.html">
                            <i class="bi-gear me-2"></i>
                            设置
                        </a>
                    </li>

                    <li class="border-top mt-3 pt-2 mx-4">
                        <a class="dropdown-item ms-0 me-0" href="/Login/login.jsp">
                            <i class="bi-box-arrow-left me-2"></i>
                            退出系统
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<div class="container-fluid">
    <!-- 左侧导航栏 -->
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-3 d-md-block sidebar collapse">
            <div class="position-sticky py-4 px-3 sidebar-sticky">
                <ul class="nav flex-column h-100">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/index/admin/index.jsp">
                            <i class="bi-house-fill me-2"></i>
                            首页
                        </a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link" href="/index/admin/wallet.jsp">
                            <i class="bi-wallet me-2"></i>
                            实习就业管理
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="/teacherInformation">
                            <i class="bi-wallet me-2"></i>
                            辅导员管理
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/index/admin/setting.jsp">
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
            <!--  查询条件  -->
            <h5>搜索条件</h5>
            <div class="search">
                <form action="" method="post">
                    <div class="searchBox">工号<input type="text"></div>
                    <div class="searchBox">姓名<input type="text"></div>
                    <div class="searchBox">性别<input type="text"></div>
                    <div class="searchBox">学院<input type="text"></div>
                    <div class="searchBox">专业<input type="text"></div>

                    <div class="searchBox">
                        <input type="button" value="查询">
                        <input type="reset" value="重置">
                    </div>
                </form>
            </div>
            <!--  信息显示表格   -->
            <div class="inputBox" id="poplayer">
                <input type="button" onclick="popDiv();" value="添加辅导员信息">
            </div>
            <c:forEach var="teachers" items="${teachers}">
            <div class="tableBox">
                <table border="1px" cellpadding="5px" cellspacing="1px">
                    <tr>
                        <th>工号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>联系方式</th>
                        <th>操作</th>
                    </tr>

                    <tr>
                            <td>${teachers.teacherId}</td>
                            <td>${teachers.teacherName}</td>
                            <td>${teachers.teacherSex}</td>
                            <td>${teachers.college}</td>
                            <td>${teachers.major}</td>
                            <td>${teachers.teacherTel}</td>
                            <td>
                                <a href="#" onclick="popDiv()">修改</a>
                                <a href="#">删除</a>
                            </td>
                    </tr>
                </table>
            </div>
            </c:forEach>

            <!-- 添加修改信息弹窗 -->
            <div id="popDiv">
                <div class="close">
                    <a href="javascript:void(0)" onclick="closePop()">X</a>
                </div>
                <form action="" method="post">
                    <div class="addBox">
                        <span>工号</span>
                        <input type="text">
                    </div>
                    <div class="addBox">
                        <span>姓名</span>
                        <input type="text">
                    </div>
                    <div class="addBox">
                        <span>性别</span>
                        <input type="text" list="sexlist" placeholder="请选择您的性别">
                        <datalist id="sexlist">
                            <option name="man">男</option>
                            <option name="women">女</option>
                        </datalist>
                    </div>
                    <div class="addBox">
                        <span>学院</span>
                        <input type="text">
                    </div>
                    <div class="addBox">
                        <span>专业</span>
                        <input type="text">
                    </div>
                    <div class="addBox">
                        <span>联系方式</span>
                        <input type="text">
                    </div>
                    <div class="addBox submit">
                        <input type="submit" value="提交">
                        <input type="reset" value="重置">
                    </div>
                </form>
            </div>
        </main>

    </div>
</div>

<!-- JAVASCRIPT FILES -->
<script src="/index/js/jquery.min.js"></script>
<script src="/index/js/bootstrap.bundle.min.js"></script>
<script src="/index/js/apexcharts.min.js"></script>
<script src="/index/js/custom.js"></script>
<script src="/index/js/wallet.js"></script>
</body>
</html>
