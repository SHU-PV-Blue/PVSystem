<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>光伏软件注册</title>
    <script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../statics/css/register.css">
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
            <ul class="nav navbar-nav">
                <li class="active"><a href="/home/project">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a href="#">新建项目</a></li>
                <li><a href="#">当前项目</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../index">登录</a></li><!--可能有问题-->
                <li class="active"><a href="#">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="container-fluid tp">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2>新用户注册</h2>
            <p class="right">已有账号？<a href="#">马上登录</a>
            <p>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">手机号</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail4" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail4" placeholder="字母汉字数字或下划线">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="字母和数字的组合，至少6位">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary  btn-lg btn-block">登录</button>
                    </div>
                </div>
            </form>
        </div>
        <!--验证码-->


        <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
            <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>

        </nav>
    </div>
</div>
</body>
</html>