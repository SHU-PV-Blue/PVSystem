<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>光伏软件登录</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/login.css">
</head>
<body>
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
            <a class="navbar-brand" href="#">光伏软件</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" style="visibility: hidden">
                <li><a href=""></a>首页</li>
                <li><a href="#">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><span class="glyphicon glyphicon-plus" aria-hidden="true"></span><a href="#">新建项目</a></li>
                <li><span class="glyphicon glyphicon-user"  aria-hidden="true" ></span><a href="#"></a></li>
                <li><a href="#">当前项目：test</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="index">登录</a></li>
                <li ><a href="/home/register">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="container-fluid tp">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>欢迎登录</h2>
            <p class="right">还没有账号？<a href="/home/register">立即注册</a>
            <p>
                <form class="form-horizontal" role="form" action="/login">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-6">
                            <input type="text" name="userId" class="form-control" id="inputEmail3">
                        </div>
                        <div class="col-sm-4">
            <p id="p1"><span></span></p>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" id="password">
        </div>
        <div class="col-sm-4">
           <p id="p2"><span></span></p>
        </div>

    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-6">
            <div class="checkbox">
                <label>
                    <input type="checkbox" checked="checked">自动登录
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-6">
           <button type="submit" class="btn btn-primary  btn-block">登录</button>
            <a href="home/forget" class="forget">忘记密码?</a>
        </div>
    </div>
    </form>
   </div>
</div>
<div>
    ${msg}
    <%session.removeAttribute("msg");%>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
</body>
</html>