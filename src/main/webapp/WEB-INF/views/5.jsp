<%@ contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>组件布局</title>
	<script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/5.css">
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
  <div class="col-md-10 col-md-offset-1">
    <div class="pull-left" id="heng">  <!--做处理-->
      <img src="images/heng1.png">
      <img src="images/heng2.png">
      </div>
      <div class="pull-right" >
      <span>阵列排列方式：&nbsp;&nbsp;&nbsp;</span><input type="radio"  id="horizontal" checked="checked"/>横排&nbsp;&nbsp;&nbsp;
      <input type="radio" value="" name="pai"/>竖排<br/>
      <table>
        <tr>
       <th>m数:</th>
       <td><input type="text" size="2" id="m"/></td>
       <th>n数:</th>
       <td><input type="text" size="2" id="n"/></td>
       </tr>
       <tr>
       <th>前后间距(D(m)):</th>
       <td><input type="text" size="2" id="qianhou"/></td>
       <td>推荐间距:</td>
       <td id="tui"></td>
       </tr>
       </table>
      </div>
    </div>
  </div><!--第一行结束-->
  <div class="row">
  <div class="col-md-4 col-md-offset-1 pull-left">
      <div class="panel panel-default ">
  <div class="panel-heading">
    <input type="radio" name="ze">自定义安装容量(KW)
  </div>
  <div class="panel-body ">
  <div class="input-group">
  <span class="input-group-addon">容量</span>
  <input type="text" class="form-control" id="rongliang">
  <span class="input-group-addon">KW</span>
</div>
<div class="input-group">
  <span class="input-group-addon">组件总数</span>
  <input type="text" class="form-control" id="zujian">
  <span class="input-group-addon">个</span>
</div>
 
  </div>
</div>
  </div>
  <div class="col-md-5 pull-left ">
    <div class="panel panel-default">
  <div class="panel-heading">
 <input type="radio"  name="ze">自定义面积
  </div>
  <div class="panel-body">
    <table  class="biao">
      <tr>
        <th>区域长L(m):</th>
        <td><input type="text" size="2"/></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <th>区域宽W(m):</th>
        <td><input type="text" size="2"/></td>
      </tr>
      <tr>
         <th>左右间距d(m):</th>
        <td><input type="text" size="2"/></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <th>左右剩余间距(m):</th>
        <td>0.00</td>
      </tr>
      <tr>
         <th>区域长可放置阵列数：</th>
        <td>0</td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <th>前后剩余间距(m):</th>
        <td>0.00</td>
      </tr>
      <tr>
         <th>区域宽可放置阵列数：</th>
        <td>0</td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <th>总占地面积(m2):</th>
        <td>0</td>
      </tr>
       <tr>
         <th>总组件数(个):</th>
        <td>0</td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <th>总容量(KW):</th>
        <td>0</td>
      </tr>
    </table>
  </div>
</div>
</div>
  </div><!--第二行结束-->
  <div class="aa">
<a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
<a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
  </div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
<script type="text/javascript">
     
   var user= {"userDesignInfo": {  //组件布局
            "componentDirection": "horizontal",   //阵列排列方式
            "designType": "area",  //设计类型，自定义安装容量还是面积，'area'表示自定义安装容量,'capacity'表示自定义安装容量
            "rowsPerFixture": 1, //m数
            "colsPerFixture": 1,  //n数
            "fbspace": 1,   //前后间距
            "lrspace": 0,   //左右间距
            "area": {
                "length": "34",  //区域长
                "width": "67",   //区域宽
                "numPerRow": 20,  //区域长可放置阵列数
                "rowsNum": 67,    //区域宽可放置阵列行数
                "fbRestSpace": "0.00",  //前后剩余间距
                "lrRestSpace": "1.00",   //左右剩余间距
                "componentsNum": 1340,   //总组件数
                "totalArea": 2278,       //总面积
                "totalCapacity": 388.6   //总容量
            },
            "capacity": {
                "totalCapacity": 0,
                "componentsNum": 0
            }
        }
      } 
      <!--横排竖排不知道怎么弄-->
      document.getElementById("m").value=user.userDesignInfo.rowsPerFixture;
      document.getElementById("n").value=user.userDesignInfo.colsPerFixture;
      document.getElementById("qianhou").value=user.userDesignInfo.fbspace;
      document.getElementById("")<!--推荐间距呢-->
      document.getElementById("rongliang").value=user.userDesignInfo.














</script>
</body>
</html>