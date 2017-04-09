<%@ contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>高压侧设计</title>
	<script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/7.css">
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
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">自定义设备</a></li>
        <li><a href="#">我的项目</a></li>
        <li><a href="#">新建项目</a> </li>  
        <li><a href="#" >当前项目</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">切换用户</a></li>
        <li><a href="#">当前用户：</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div><!--导航结束-->

<div class="container">
  <h3>接入电网等级：</h3>
  <input type="radio" name="dianya"/>10Kv&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dianya"/>35kv&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dianya"/>0.38kv
  <hr class="divider">
<div class="row">
  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="低压开关柜" src="images/低压开关柜.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">低压开关柜</a>
  </div>
</div>
</div>

<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="升压变压器" src="images/变压器.jpg" class="gao" >
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">升压变压器</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="高压开关柜" src="images/高压开关柜.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">高压开关柜</a>
  </div>
</div>
</div>
</div>
<hr class="divider">
  <div class="aa">
<a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
<a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
  </div>

<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
</body>
</body>
</html>