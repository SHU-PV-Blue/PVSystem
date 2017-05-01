<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>报告</title>
     <link rel="stylesheet" type="text/css" href="../statics/DataTables-1.10.15/media/css/jquery.dataTables.css">
    <script src="../statics/DataTables-1.10.15/media/js/jquery.js"></script>
    <script src="../statics/DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/nav.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/baogao.css">

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
                <li><a href="/login/loginOut"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
    <div class="row">
    <table id="biao" class="col-md-8 col-md-offset-2 table-bordered ">
        <caption>综合经济效益表</caption>
        <thead>
        <tr>
            <th>名称</th>
            <th>金额</th>
            <th>备注</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>项目总现金支出</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>其中:设计费</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>设备费</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>建安费</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>监理费</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>其他费用</th>
            <td></td>
            <td>含税</td>
        </tr>
        <tr>
            <th>项目建设成本</th>
            <td></td>
            <td>不含税</td>
        </tr>
        <tr>
            <th>建设期</th>
            <td></td>
            <td>月</td>
        </tr>
        <tr>
            <th>收益期</th>
            <td></td>
            <td>年</td>
        </tr>
        <tr>
            <th>年总收入</th>
            <td>&nbsp;</td>
            <td>年</td>
        </tr>
        </tbody>
    </table>
</div>

<div class="aa" style="margin-top:100px;margin-left: 40%">
    <a href="#" class="btn btn-primary btn-sm " role="button">导出PDF</a>
    <a href="#" class="btn btn-default btn-sm " role="button">返回 </a>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
</body>
</html>
<script src="../statics/js/userInfo.js"></script>
<script src="../statics/js/baogao.js"></script>