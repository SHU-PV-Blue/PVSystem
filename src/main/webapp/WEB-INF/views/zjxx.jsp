<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>组件选型</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/zujianxx.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http:\\cdn.bootcss.com/echarts/3.4.0/echarts.common.js"></script>
    <script src="../statics/js/echarts3.js"></script>
    <script src="../statics/js/zjxx.js"></script>
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
<div class="panel panel-info kuang">
    <div class="panel-heading">
        <h3 class="panel-title">选择组件</h3>
    </div>
    <div class="panel-body">
        <form><!--表单-->
            <select class="form-control input-lg">
                <option disabled>--选择组件--</option>
                <option disabled> (公司)&nbsp;&nbsp;&nbsp;&nbsp;(类型)&nbsp;&nbsp;&nbsp;&nbsp;(系列)&nbsp;&nbsp;&nbsp;&nbsp;(型号)&nbsp;&nbsp;&nbsp;&nbsp;W(峰值功率)&nbsp;&nbsp;&nbsp;&nbsp;%(转换效率)</option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>
                <option value="">天合&nbsp;&nbsp;&nbsp;单晶&nbsp;&nbsp;&nbsp; HoneyPlus&nbsp;&nbsp;&nbsp; TSM-DC05A.08(Ⅱ)&nbsp;&nbsp;&nbsp;
                    290&nbsp;&nbsp;&nbsp; 17.7
                </option>

            </select><!--没有补完-->
        </form>
        <table class="table table-bordered">
            <tr>
                <td>开路电压(v)</td>
                <td>最大功率点电压(v)</td>
                <td>最大功率点电流(A)</td>
                <td>转换效率(%)</td>
                <td>短路电流(A)</td>
                <td>开路电压温度系数(%/℃)</td>
                <td>最大温度功率系数(%/℃)</td>
            </tr>
            <td>22</td>
            <td>22</td>
            <td>22</td>
            <td>22</td>
            <td>22</td>
            <td>22</td>
            <td>22</td>
            </tr>
            <tr>
                <td>短路电流温度系数(%/℃)</td>
                <td>长度(mm)</td>
                <td>宽度(mm)</td>
                <td>重量(kg)</td>
                <td>工作温度下限(℃)</td>
                <td>工作温度下限(℃)</td>
            </tr>
            <tr>
                <td>22</td>
                <td>22</td>
                <td>22</td>
                <td>22</td>
                <td>22</td>
                <td>22</td>
            </tr>
        </table>
    </div>
</div><!--面板结束-->
<div class="next">
    <div class="left" id="iv">
    </div>
    <div class="left" id="pv" style="display: none">
    </div>
    <div class="right">
        <span>请选择图形:</span>
        <form>
            <select class="form-control input-sm">
                <option id="piv" selected="selected">i-v图</option>
                <option id="ppv">p-v图</option>
            </select>
        </form>
        <div class="last">
            <a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
            <a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
        </div>
    </div>
</div><!--下面一个div结束-->
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
</body>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>