<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>项目信息</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/nav.css">
    <script src="../statics/laydate/laydate.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/information.css">
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
                <li><a href="#">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a href="active">新建项目</a></li>
                <li><a href="#">当前项目</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right" id="nav2">
                <li><a href="#" id="userId"></a></li>
                <li><a href="/login/loginOut"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;注销</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="row">
    <div class="col-md-4">
        <table>
            <caption>项目基本信息</caption>
            <tr>
                <th>项目名称:</th>
                <td><input class="in"/></td>
            </tr>
            <tr>
                <th>拟建地点:</th>
                <td><input class="in"/></td>
            </tr>
            <tr>
                <th>建设单位:</th>
                <td><input class="in"/></td>
            </tr>
            <tr>
                <th>时间:</th>
                <td>
                    <input class="in laydate-icon" onclick="laydate()">
                </td>
            </tr>
            <th>备注:</th>
            <td><textarea rows=10 cols=20 id="beizhu"></textarea></td>
            </tr>
            <tr>
                <th>地理位置：</th>
                <th align="left">经度 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;纬度</th>
            </tr>
            <td></td>
            <td align="left"><input type="text" size=4 id="jingdu"> <input type="text" size=4 id="weidu"></td>
        </table>
    </div>
    <div class="col-md-8"><img src="../statics/images/basic.jpg"></div>
</div>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>