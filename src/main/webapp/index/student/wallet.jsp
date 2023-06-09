<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>学生就业管理系统-实习就业管理</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="/index/css/apexcharts.css" rel="stylesheet">
    <link href="/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="/index/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/index/css/tooplate-mini-finance.css" rel="stylesheet">
    <link href="/index/css/wallet.css" rel="stylesheet">

<body>
<header class="navbar sticky-top flex-md-nowrap">
    <div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
        <a class="navbar-brand" href="/index/student/index.jsp">
            <i class="bi-box"></i>
            学生就业管理系统
        </a>
    </div>

    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <form class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0" action="#"
          method="get" role="form">
        <input class="form-control" name="search" type="text" placeholder="Search" aria-label="Search">
    </form>
    <div class="navbar-nav me-lg-2">
        <div class="nav-item text-nowrap d-flex align-items-center">
            <!-- 消息提示 -->
            <div class="dropdown ps-3">
                <a class="nav-link dropdown-toggle text-center" href="#" role="button" data-bs-toggle="dropdown"
                   aria-expanded="false">
                    <i class="bi-bell"></i>
                    <span class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
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
                        <a class="dropdown-item" href="profile.jsp">
                            <i class="bi-person me-2"></i>
                            个人中心
                        </a>
                    </li>

                    <li>
                        <a class="dropdown-item" href="setting.jsp">
                            <i class="bi-gear me-2"></i>
                            设置
                        </a>
                    </li>

                    <li class="border-top mt-3 pt-2 mx-4">
                        <a class="dropdown-item ms-0 me-0" href="#">
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
                        <a class="nav-link" aria-current="page" href="/index/student/index.jsp">
                            <i class="bi-house-fill me-2"></i>
                            首页
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/StudentInformation">
                            <i class="bi-person me-2"></i>
                            个人中心
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="/EmploymentInformation">
                            <i class="bi-wallet me-2"></i>
                            实习就业管理
                        </a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link" href="/index/student/setting.jsp">
                            <i class="bi-gear me-2"></i>
                            设置
                        </a>
                    </li>

                    <li class="nav-item border-top mt-auto pt-2">
                        <a class="nav-link" href="/index.jsp">
                            <i class="bi-box-arrow-left me-2"></i>
                            退出系统
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">

            <div class="inputBox" id="poplayer">
                <input type="button" onclick="popDiv();" value="添加就业信息">
            </div>
            <div id="popDiv">
                <div class="close">
                    <span>一经添加不可修改!</span>
                    <a href="javascript:void(0)" onclick="closePop()">X</a>
                </div>
                <form action="/AddStudentInformation" method="post">
                    <div class="addBox">
                        <span>就业时间</span>
                        <input type="date" name="employmentTime">
                    </div>
                    <div class="addBox">
                        <span>就业公司</span>
                        <input type="text" name="employmentCompany">
                    </div>
                    <div class="addBox">
                        <span>就业公司地址</span>
                        <input type="text" name="companyAddress">
                    </div>
                    <div class="addBox">
                        <span>就业岗位</span>
                        <input type="text" name="employmentPost">
                    </div>
                    <div class="addBox">
                        <span>薪资待遇</span>
                        <input type="text" name="salary">
                    </div>
                    <div class="addBox">
                        <span>公司联系人</span>
                        <input type="text" name="employmentContact">
                    </div>
                    <div class="addBox">
                        <span>公司联系人电话</span>
                        <input type="text" name="contactTel">
                    </div>
                    <div class="addBox">
                        <span>就业状态</span>
                        <input type="radio" class="radio" name="state" value="在职" checked="true">在职
                        <input type="radio" class="radio" name="state" value="实习中">实习中
                        <input type="radio" class="radio" name="state" value="已离职">已离职
                    </div>
                    <div class="addBox submit">
                        <input type="submit" value="提交">
                        <input type="reset" value="重置">
                    </div>
                </form>
            </div>
            <c:forEach items="${employment}" var="employment">
                <div class="tableBox">
                    <table border="1px" cellpadding="5px" cellspacing="1px">
                        <tr>
                            <th>就业时间</th>
                            <th>就业单位</th>
                            <th>就业单位地址</th>
                            <th>就业岗位</th>
                            <th>薪资待遇</th>
                            <th>单位联系人</th>
                            <th>单位联系人电话</th>
                            <th>目前状态</th>
                                <%--                            <th>操作</th>--%>
                        </tr>
                        <tr>
                            <td>${employment.employmentTime}</td>
                            <td>${employment.employmentCompany}</td>
                            <td>${employment.companyAddress}</td>
                            <td>${employment.employmentPost}</td>
                            <td>${employment.salary}元</td>
                            <td>${employment.employmentContact}</td>
                            <td>${employment.contactTel}</td>
                            <td>${employment.state}</td>

                                <%--                            <td>--%>
                                <%--                                <a href="#" onclick="popDiv2()">修改</a>--%>
                                <%--                            </td>--%>
                        </tr>

                    </table>
                </div>
                <div id="popDiv2">
                    <div class="close">
                        <a href="javascript:void(0)" onclick="closePop2()">X</a>
                    </div>
                    <form action="/UpdateEmploymentInformation" method="post">
                        <div class="addBox">
                            <span>就业岗位</span>
                            <input type="text" name="employmentPost"
                                   value="${employment.employmentPost}">
                        </div>
                        <div class="addBox">
                            <span>薪资待遇</span>
                            <input type="text" name="salary" value="${employment.salary}">
                        </div>
                        <div class="addBox">
                            <span>公司联系人</span>
                            <input type="text" name="employmentContact"
                                   value="${employment.employmentContact}">
                        </div>
                        <div class="addBox">
                            <span>公司联系人电话</span>
                            <input type="text" name="contactTel" value="${employment.contactTel}">
                        </div>
                        <div class="addBox">
                            <span>就业状态</span>
                            <input type="radio" class="radio" name="state"
                                   value="在职" ${employment.state =='在职' ? 'checked' : ''}>在职
                            <input type="radio" class="radio" name="state"
                                   value="实习中" ${employment.state == '实习中' ? 'checked' : ''}>实习中
                            <input type="radio" class="radio" name="state"
                                   value="已离职" ${employment.state == '已离职' ? 'checked' : ''}>已离职
                        </div>
                        <div class="addBox submit">
                            <input type="submit" value="提交">
                            <input type="reset" value="重置">
                        </div>
                    </form>
                </div>
            </c:forEach>


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