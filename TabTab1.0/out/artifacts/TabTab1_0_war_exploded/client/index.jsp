<%--
  Created by IntelliJ IDEA.
  User: 王宇琨
  Date: 2020/6/17
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<head>--%>
<%--  <title>$Title$</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<a href="Hello">第一个动态web项目</a>--%>
<%--</body>--%>

<head>
  <meta charset="utf-8">
  <meta name="author" content="Kodinger">
  <title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body class="my-login-page">
<section class="h-100">
  <div class="container h-100">
    <div class="row justify-content-md-center h-100">
      <div class="card-wrapper">
        <div class="brand">
          <img src="../client/images/tabtab_logo.jpg"/>
        </div>
        <div class="card fat">
          <div class="card-body">
            <h4 class="card-title">Login</h4>
            <form method="POST">

              <div class="form-group">
                <label for="email">E-Mail Address</label>

                <input id="email" type="email" class="form-control" name="email" value="" required autofocus>
              </div>

              <div class="form-group">
                <label for="password">Password
                  <a href="forgot.html" class="float-right">
                    Forgot Password?
                  </a>
                </label>
                <input id="password" type="password" class="form-control" name="password" required data-eye>
              </div>

              <div class="form-group">
                <label>
                  <input type="checkbox" name="remember"> Remember Me
                </label>
              </div>

              <div class="form-group no-margin">
                <button type="submit" class="btn btn-primary btn-block">
                  Login
                </button>
              </div>
              <div class="margin-top20 text-center">
                Don't have an account? <a href="register.html">Create One</a>
              </div>
            </form>
          </div>
        </div>
        <div class="footer">
          Copyright &copy; Your Company 2017 - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/my-login.js"></script>
</body>
</html>
