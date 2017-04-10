<%@ page contentType="text/html";charset="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/nav.css">
  <link rel="stylesheet" type="text/css" href="css/0.css">
  <meta charset="UTF-8">
  <title>流程</title>
</head>
<body>
  <nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">光伏软件</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav" id="nav1">
        <li class="active"><a href="#">自定义设备</a></li>
        <li ><a href="#">我的项目</a></li>
        <li><a href="#">新建项目</a> </li>  
        <li><a href="#" >当前项目</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" id="nav2">
        <li><a href="#">注销登录</a></li>
        <li><a href="#">当前用户：</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<div class="container">
<div class="row">
  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="项目信息" src="images/xiangmuxinxi.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button1">项目信息</a>
  </div>
</div>
</div>

<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="地理气象" src="images/气象.png" class="gao" >
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button2" disabled="disabled">地理气象</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="组件选型" src="images/组件.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button3" >组件选型</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="方位角和倾角设计" src="images/倾角.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button4">方位角和倾角设计</a>
  </div>
</div>
</div>
</div>
<hr class="divider">
<!--第一行结束-->
<div class="row ">
  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="组件布局" src="images/组件布局.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button5">组件布局</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="低压侧设计" src="images/低压侧.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button6">低压侧设计</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="高压侧设计" src="images/高压侧.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button7">高压侧设计</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="效率分析" src="images/效率分析.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button8">效率分析</a>
  </div>
</div>
</div>
</div>
<hr class="divider">
<!--第二行结束-->
<div class="row gao">
  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="效益分析" src="images/效益分析.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button9">效益分析</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="报告" src="images/报告.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" id="button10">报告</a>
  </div>
</div>
</div>
</div>
<!--第三行结束-->
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
<script type="text/javascript">
var ul=document.getElementById("bs-example-navbar-collapse-1");
var li=ul.getElementsByTagName("li");
for(var i=0;i<li.length;i++)
{
  li[i].index=i;
  li[i].onclick=function(){
    for(var j=0;j<li.length;i++)
      li[j].className="";
    this.className="active";

  }
}
</script>
</body>
</html>