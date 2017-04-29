<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>光伏软件注册</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/register.css">
    <script src="../statics/js/regiser.js"></script>
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
            <a class="navbar-brand" href="/home">光伏软件</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" style="visibility:hidden">
                <li class="active"><a href="/home/project">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a href="#">新建项目</a></li>
                <li><span class="glyphicon glyphicon-user"  aria-hidden="true" ></span><a href="#"></a></li>
                <li><a href="#">当前项目:test</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" id="userId"></a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;注销</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="container-fluid tp">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h2>新用户注册</h2>
            <p class="right">已有账号？<a href="/">马上登录</a>
            <p>
                <form class="form-horizontal" role="form" action="">
                    <div class="form-group">
                        <label for="user" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-4">
                            <input type="email" class="form-control" name="userId" id="user">
                        </div>
                        <div class="col-sm-6">
            <p id="p1" class="pp">用户名不能为空</p>
        </div>
    </div>
    <div class="form-group">
        <label for="userName" class="col-sm-2 control-label">昵称</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="userName"  id="userName">
        </div>
        <div class="col-sm-6">
            <p id="p2" class="pp">昵称不能为空</p>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <div class="col-sm-6">
            <p id="p3" class="pp">密码字母加数字组合不能少于6位</p>
        </div>
    </div>
    <div class="form-group">
        <label for="input4" class="col-sm-2 control-label">确认密码</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" id="input4" disabled>
        </div>
        <div class="col-sm-6">
            <p id="p4" class="pp">密码输入不一致</p>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
            <button type="submit" class="btn btn-primary   btn-block">登录</button>
        </div>
        <div class="col-sm-2">
            <button type="reset" class="btn btn-primary   btn-block">重置</button>
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

