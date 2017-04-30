<%--
  Created by IntelliJ IDEA.
  User: acer1
  Date: 2017/4/29
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码</title>
</head>
<script src="../statics/js/jquery.min.js"></script>
<script src="../statics/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
<!--<link rel="stylesheet" type="text/css" href="../statics/css/forget.css">-->
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/home">光伏软件</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" style="visibility:hidden">
                <li class="active"><a href="/home/project">自定义设备</a></li>
                <li><a href="#">项目管理</a></li>
                <li><a href="#">个人中心</a></li>
                <li><a href="#">当前用户</a></li>
                <li><a href="#">当前项目:test</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../index">登录</a></li><!--可能有问题-->
                <li class="active"><a href="#">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="row">
    <div class="col-md-5 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-body">
                <h2>验证手机号:</h2>
                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-2">
                            <input type="text" name="phone" class="form-control" id="phone">
                        </div>
                        <div class="col-sm-4">
                            <button>获取验证码</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-6">
                            <button type="submit" class="btn btn-primary  btn-block">验证</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="col-md-5 col-md-offset-3">
                        <dl>
                            <dt>还没有收到验证码?</dt>
                            <dd>1.检查手机是否有误或是否欠费关机等</dd>
                            <dd>2.一分钟后重新发送验证码</dd>
                        </dl>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
