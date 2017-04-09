<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>方位倾角和设计</title>
	<script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="http:\\cdn.bootcss.com/echarts/3.4.0/echarts.common.js"></script>
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/4.css">
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
</div>
<div class="row">
<div class="col-md-9">
<div class="panel panel-default">
  <div class="panel-heading">
    <div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
    选择折线图
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">年总辐照度</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">组件年输出电量</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">月总辐照度</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">月总组件输出电量</a></li>
  </ul>
</div>
    
  </div><!--面板头部结束-->
  <div class="panel-body">
  <div class="tu">
  图
  </div>

  </div><!--面板中间部分结束-->
</div>
</div>
<div class="col-md-3">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">方位角和倾角</h3>
  </div>
  <div class="panel-body">
  <div class="input-group">
  <span class="input-group-addon">方位角：</span>
  <input type="text" class="form-control" id="fangw">
</div>
 <div class="input-group qingjiao">
  <span class="input-group-addon">倾角：</span>
  <input type="text" class="form-control"  id="qing">
</div>
  </div>
  <div class="panel-footer">
    <h5>最优倾角信息</h5>
    <table  class="table-bordered">
      <tr>
        <td>年总蝠照度：</td>
        <td>最优倾角:</td>
        <td id="zui"></td>
        <td>最大值:</td>
        <td id="zd">&nbsp;</td>
      </tr>
      <tr>
        <td>组件年输出电量：</td>
         <td>最优倾角:</td>
        <td id="you"></td>
        <td>最大值:</td>
        <td id="da">&nbsp;</td>
      </tr>

    </table>

  </div>
</div>
<a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
<a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
</div><!--行结束-->
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
<script type="text/javascript">

  var fangwj={ "angleInfo": {  //方位角和倾角
            "dip": "34",     //方位角
            "bestDipH": 28,   //年辐照度最优倾角
            "bestDipG": 29,  //年输出电量最优倾角
            "az": "12",      //倾角
            "max": 425.267330976606,  //年输出电量最大值
            "max_H": 1519.433390479158  //年辐照度最大值
        }
      }


      document.getElementById("fangw").value=fangwj.angleInfo.dip;
      document.getElementById("qing").value=fangwj.angleInfo.az;
      document.getElementById("zui").innerHTML=fangwj.angleInfo.bestDipH;
      document.getElementById("zd").innerHTML=fangwj.angleInfo.max_H.toFixed(2);//需要提取前六位
      document.getElementById("you").innerHTML=fangwj.angleInfo.bestDipG;
      document.getElementById("da").innerHTML=fangwj.angleInfo.max.toFixed(2);//提取前六位











</script>

</body>
</html>