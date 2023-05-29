<%--
  Created by IntelliJ IDEA.
  User: 北
  Date: 2023/5/23
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="/Login/login.css" type="text/css">
</head>
<body>
  <section>
    <!-- <div class="color"></div>
    <div class="color"></div>
    <div class="color"></div> -->
    <div class="box">
      <div class="container">
        <div class="form">
          <h2>学生就业管理系统</h2>
          <form action="/Login" method="post" >
            <div class="inputBox"><input type="text" name="Id" placeholder="请输入学号"></div>
            <div class="inputBox"><input type="password" name="Pwd" placeholder="请输入密码"></div>
              <div class="inputBox">
                <input type="radio" class="radio" name="userIdentity" value="student" checked="true">学生
                <input type="radio" class="radio" name="userIdentity" value="teacher">辅导员
                <input type="radio" class="radio" name="userIdentity" value="admin">管理员
            </div>
            <div class="inputBox"><input type="submit" value="登录"></div>
            <p class="register">账号未注册?<a href="/register/register.jsp">Sign Up</a></p>
          </form>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
