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
    <title>注册</title>
    <link rel="stylesheet" href="../register/register.css">
</head>
<body>
  <section>
    <div class="color"></div>
    <div class="color"></div>
    <div class="color"></div>
    <div class="box">
      <div class="container">
        <div class="form">
          <h2>学生就业管理系统</h2>
          <form action="/login" method="post" >
            <div class="inputBox"><input type="text" name="userId" placeholder="请输入学号"></div>
            <div class="inputBox"><input type="password" name="userPwd" placeholder="请输入密码"></div>
            <div class="inputBox"><input type="text" name="userName" placeholder="请输入姓名"></div>
            <div class="inputBox">
              <input type="text" list="sexlist" placeholder="请选择您的性别">
              <datalist id="sexlist">
                <option name="man">男</option>
                <option name="women">女</option>
              </datalist>
            </div>
            <div class="inputBox"><input type="text" name="" placeholder="请输入班级"></div>
            <div class="inputBox"><input type="text" name="" placeholder="请输入专业"></div>
            <div class="inputBox"><input type="text" name="" placeholder="请输入联系电话"></div>
            <div class="inputBox"><input type="text" name="" placeholder="请输入辅导姓名"></div>
            <div class="inputBox"><input type="submit" id="register" value="注册"></div>
            <p class="login">账号已注册?<a href="/login.jsp">Click here</a></p>
            <p class="login">您是辅导员?<a href="/register2.jsp">Sign Up</a></p>
          </form>
        </div>
      </div>
    </div>
  </section>
</body>
</html>