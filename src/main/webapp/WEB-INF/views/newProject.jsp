<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/nav.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/index.css">
    <meta charset="UTF-8">
    <title>流程</title>
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
            <ul class="nav navbar-nav" id="nav1">
                <li><a href="/home/project">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li class="active"><a href="#">新建项目</a></li>
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
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="项目信息" src="../statics/images/xiangmuxinxi.png" class="gao">
                <div class="caption">
                    <a href="/home/information" class="btn btn-primary btn-block " role="button" id="button1">项目信息</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="地理气象" src="../statics/images/气象.png" class="gao">
                <div class="caption">
                    <a href="/home/weather" class="btn btn-primary btn-block " role="button" id="button2"
                       disabled="disabled">地理气象</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="组件选型" src="../statics/images/组件.jpg" class="gao">
                <div class="caption">
                    <a href="/home/zjxx" class="btn btn-primary btn-block " role="button" id="button3">组件选型</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="方位角和倾角设计" src="../statics/images/倾角.png" class="gao">
                <div class="caption">
                    <a href="/home/fwqj" class="btn btn-primary btn-block " role="button" id="button4">方位角和倾角设计</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="divider">
    <!--第一行结束-->
    <div class="row ">
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="组件布局" src="../statics/images/组件布局.png" class="gao">
                <div class="caption">
                    <a href="/home/zjbj" class="btn btn-primary btn-block " role="button" id="button5">组件布局</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="低压侧设计" src="../statics/images/低压侧.png" class="gao">
                <div class="caption">
                    <a href="/home/diyacesheji" class="btn btn-primary btn-block " role="button" id="button6">低压侧设计</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="高压侧设计" src="../statics/images/高压侧.png" class="gao">
                <div class="caption">
                    <a href="/home/gaoyc" class="btn btn-primary btn-block " role="button" id="button7">高压侧设计</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="效率分析" src="../statics/images/效率分析.png" class="gao">
                <div class="caption">
                    <a href="/home/xiaolu" class="btn btn-primary btn-block " role="button" id="button8">效率分析</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="divider">
    <!--第二行结束-->
    <div class="row gao">
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="效益分析" src="../statics/images/效益分析.png" class="gao">
                <div class="caption">
                    <a href="/home/xiaoyi" class="btn btn-primary btn-block " role="button" id="button9">效益分析</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="报告" src="../statics/images/报告.png" class="gao">
                <div class="caption">
                    <a href="/home/baogao" class="btn btn-primary btn-block " role="button" id="button10">报告</a>
                </div>
            </div>
        </div>
    </div>
    <!--第三行结束-->
    <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
        <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
    </nav>
    <!--底部导航条-->
    <%--<script type="text/javascript">--%>
    <%--var ul=document.getElementById("bs-example-navbar-collapse-1");--%>
    <%--var li=ul.getElementsByTagName("li");--%>
    <%--for(var i=0;i<li.length;i++)--%>
    <%--{--%>
    <%--li[i].index=i;--%>
    <%--li[i].onclick=function(){--%>
    <%--for(var j=0;j<li.length;i++)--%>
    <%--li[j].className="";--%>
    <%--this.className="active";--%>

    <%--}--%>
    <%--}--%>
    <%--</script>--%>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>