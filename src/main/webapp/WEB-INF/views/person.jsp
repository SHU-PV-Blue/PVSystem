<%--
  Created by IntelliJ IDEA.
  User: acer1
  Date: 2017/4/27
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/person.css">
    <script src="../statics/js/person.js"></script>
</head>
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
            <ul class="nav navbar-nav" id="nav1">
                <li class="active"><a href="/home/project">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a href="#">新建项目</a></li>
                <li><a href="#">当前项目</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" id="nav2">
                <li><a href="" id="userId"></a></li>
                <li><a href="/login/loginOut"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;注销</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="row">
    <div class="col-md-offset-2 col-md-6">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab"
                                                      data-toggle="tab">
                <span class="glyphicon glyphicon-user"></span>
            </a></li>
            <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab"><span
                    class="glyphicon glyphicon-cog"></span></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="profile">
                <h3>个人信息</h3>
                <table id="mytable">
                    <tr>
                        <th>用户名:</th>
                        <td>dawang</td>
                    </tr>
                    <tr>
                        <th>昵称:</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>手机号:</th>
                        <td>18717850836</td>
                    </tr>
                    <tr>
                        <th>所在公司:</th>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div role="tabpanel" class="tab-pane" id="settings">
                <h3>修改昵称</h3>
                <hr>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">原昵称</label>
                        <div class="col-sm-4">
                            <p></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nikename" class="col-sm-3 control-label">新昵称</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="nikename">
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-sm-offset-3 col-sm-4">
                            <button type="submit" class="btn btn-primary btn-block">保存</button>
                        </div>
                    </div>
                </form>
                <h3>绑定手机</h3>
                <hr>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="phone" class="col-sm-3 control-label">新手机号码</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-4">
                            <button type="submit" class="btn btn-primary btn-block">保存</button>
                        </div>
                    </div>
                </form>
                <h3>修改密码</h3>
               <hr>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="oldpassword" class="col-sm-3 control-label">原密码</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" id="oldpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="newpassword" class="col-sm-3 control-label">新密码</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" id="newpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="reaptpassword" class="col-sm-3 control-label">重复新密码</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" id="reaptpassword">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-4">
                            <button type="submit" class="btn btn-primary btn-block">保存</button>
                        </div>
                    </div>
                </form>

            </div>

        </div>


    </div>
</div>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>
