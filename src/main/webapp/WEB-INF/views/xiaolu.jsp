<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>效率分析</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/xiaolu.css">
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
<div class="container">
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">年平均综合损度表</h3>
            </div>
            <table border="1px">
                <tr>
                    <th>损耗因素</th>
                    <td>阴影损耗</td>
                    <td>灰尘等遮挡损耗</td>
                    <td>组件升温损耗</td>
                    <td>直流电缆损耗</td>
                    <td>组串内分配损耗</td>
                    <td>逆变器运行损耗</td>
                    <td>变压器运行损耗</td>
                    <td>交流电缆损耗</td>
                    <td>故障检修、电网等其他损耗</td>
                    <th>总损耗值：</th>
                    <th>总效率值：</th>
                </tr>
                <tr>
                    <th>效率预估值/%</th>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                    <td><input type="text" size="2"></td>
                </tr>
            </table>
        </div>
    </div><!--第一行结束-->
    <hr class="divider"/>
    <div class="row">
        <div class="col-md-6">
            <div>
                系统年并入电网电量：
            </div>
        </div>
        <div class="col-md-6">
            <div class="list-group smaller">
                <a href="#" class="list-group-item disabled">
                    请选择观察的图形
                </a>
                <a href="#" class="list-group-item">月总辐照度</a>
                <a href="#" class="list-group-item">损耗电量</a>
                <a href="#" class="list-group-item">并入电网电量</a>
            </div>
            <form action="" method=""><!--填表单-->
                组件性能衰减(%)：<input type="text" size=2>&nbsp;&nbsp;&nbsp;&nbsp;
                发电系统运行年数(年): <input type="text" size=2><br/>
                第多少年<!--不会弄-->
                <input type="range" class="ii"/>
                <br/>
                <a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
                <a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
            </form>
        </div><!--另外一列-->
    </div><!--第二行结束-->
</div>

<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
</body>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>