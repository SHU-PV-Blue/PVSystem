<%--
  Created by IntelliJ IDEA.
  User: acer1
  Date: 2017/5/6
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>投资成本</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
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
<div class="row">
    <div class="col-md-2">
        <div class="list-group">
            <a href="#" class="list-group-item ">
                项目总收入预算
            </a>
            <a href="#" class="list-group-item">分包预算</a>
            <a href="#" class="list-group-item">项目直接费用预算</a>
            <a href="#" class="list-group-item">其他</a>
            <a href="#" class="list-group-item"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>返回</a>
        </div>
    </div>
    <div class="col-md-9">
        <!--这里只有一个面板-->
        <div class="panel panel-default" id="first">
            <!-- Default panel contents -->
            <div class="panel-heading">项目总收入预算</div>

            <!-- Table -->
            <table class="table">
                <tr>
                    <th>其他</th>
                    <th>年发电量/Kwh</th>
                    <th>产值(含税)/元</th>
                    <th>产值(不含税)/元</th>
                    <th>年补贴(不含税)/元</th>
                    <th>年收入(含税)/元</th>
                    <th>年收入(不含税)/元</th>
                </tr>
            </table>
            <div class="panel-footer"><button type="button" class="btn btn-success">显示详情<span class="caret"></span></button></div>
        </div>

<!--其他-->
        <div id="other">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">合同</h3>
                </div>
                <div class="panel-body">
                  <
                </div>
            </div>

        </div>
    </div>

</div>
<!--用datatable显示-->


<!--
</body>
</html>
