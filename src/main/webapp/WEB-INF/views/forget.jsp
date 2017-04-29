<%--
  Created by IntelliJ IDEA.
  User: acer1
  Date: 2017/4/23
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码</title>
</head>
<body>
<script src="../statics/js/jquery.min.js"></script>
<script src="../statics/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../statics/css/forget.css">

</body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
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
                <li><a href="#">我的项目</a></li>
                <li><a href="#">新建项目</a></li>
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
        <div class="panel panel-danger">
            <div class="panel-heading">
                <h3 class="panel-title">验证手机号</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal">
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">手机号:</label>
                    <div class="col-sm-6">
                        <input type="text" name="phone" class="form-control" id="phone">
                    </div>
                    <div class="col-sm-4">
                        <p id="p1"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:red" ></span>请输入正确的手机号</p>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-6">
                       <!--<button type="submit" class="btn btn-primary  btn-block">验证手机号</button>-->
                        <a href="/home/forget2">登录</a>
                    </div>
                </div>
            </form>
            </div>

        </div>
    </div>
    <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
        <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
    </nav>
</div>
</html>
