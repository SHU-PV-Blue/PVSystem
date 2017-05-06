<%--
  Created by IntelliJ IDEA.
  User: acer1
  Date: 2017/5/6
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>参数列表</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <style type="text/css">
        .center-blockh {
            width:80%;
            margin-left: auto;
            margin-right: auto;

        }
        table input{
            width:100px;
            height:30px;
        }
    </style>

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
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a href="#">新建项目</a></li>
                <li><a href="#">当前项目</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" id="userId"></a></li>
                <li><a href="/login/loginOut"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;注销</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</div>
<div class="center-blockh">
    <h3>请填写下面的参数</h3>
    <table class="table table-bordered  table-condensed" style="text-align: center">
        <tr>
        <td>设备费单价(元/w)</td>
        <td>建安费单价(元/w)</td>
        <td>设计费单价(元/w)</td>
        <td>监理费单价(元/w)</td>
        <td>分包税金及其他费(元/w)</td>
    </tr>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>综合利率(%)</td>
            <td>电站年限/年</td>
            <td>建设期(月)</td>
            <td>结算周期(月)</td>
            <td>地方电价(元/Kwh)</td>

        </tr>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>设备费单价(元/w)</td>
            <td>建安费单价(元/w)</td>
            <td>建安费单价(元/w)</td>
            <td>建安费单价(元/w)</td>
            <td>建安费单价(元/w)</td>

        </tr>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
        </tr>
    </table>
</div>
</body>
</html>
