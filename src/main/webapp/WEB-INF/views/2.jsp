<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>地理气象</title>
	<script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="js/confirm.js"></script>
  <script src="js/2.js"></script>
  <link rel="stylesheet" type="text/css" href="css/nav.css">
  <link rel="stylesheet" type="text/css" href="css/2.css">
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
<div class="container">
<div class="row">
	<div  class="col-md-3 ">
		<div class="input-group input-group-sm">
  <span class="input-group-addon" >经度：</span>
  <input type="text" class="form-control" id="jing" name="du">
</div>
</div>
<div  class="col-md-3">
		<div class="input-group input-group-sm">
  <span class="input-group-addon">纬度：</span>
  <input type="text" class="form-control" id="wei" name="du">
</div>
</div>
</div><!--row结束-->
<div class="row">
<h4>请选择气象数据库：</h4>
</div>
<div class="row">
<input type="radio" value="" name="weather" checked="checked" id="guoji">国际气象数据库
</div>
<div class="row">
<input type="radio" value="" name="weather" id="zi">用户自定义
</div>
<button type="button" class="btn btn-defult">确认</button>
<button type="button" class="btn btn-defult">返回</button>
</div><!--容器结束-->
<div class="row">
  <div class="col-md-8 col-md-offset-3">
    <div class="table-responsive">
<table class="table table-bordered table-condensed" id="mytable">
  <tr>
    <th>月份</th>
    <th>辐照度(kWh/㎡/day)</th>
    <th>温度(℃)</th>
    <th>湿度(%)</th>
    <th>风速(m/s)</th>
  </tr>
  <tr id="shanchu">
    <th>1月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text"> </td>
    <td name="hu"><input type="text"> </td>
    <td name="feng"><input type="text"> </td>
  </tr>
  <tr>
    <th>2月</th>
    <td name="fu"><input type="text"> </td>
    <td name="te"><input type="text"> </td>
    <td name="hu"><input type="text" ></td>
    <td name="feng" ><input type="text" ></td>
  </tr>
  <tr>
    <th>3月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>4月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>5月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th >6月</th>
    <td name="fu" ><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>7月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>8月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>9月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td  name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>10月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>11月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
  <tr>
    <th>12月</th>
    <td name="fu"><input type="text" ></td>
    <td name="te"><input type="text" ></td>
    <td name="hu"><input type="text" ></td>
    <td name="feng"><input type="text" ></td>
  </tr>
   <tr>
    <th>平均值</th>
    <td id="afu"></td>
    <td id="ate"></td>
    <td id="ahu"></td>
    <td id="afeng"></td>
  </tr>
</table>
</div><!--响应结束-->
</div><!--列结束-->
</div><!--行结束-->
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
<script>
var jingwei={"lng": 121.49,
            "lat": 31.22
          }
          var jweidu=document.getElementsByName("du");
  //document.getElementById("jing").innerHTML=jingwei.lng;
  //document.getElementById("wei").value=jingwei.lat;
    jweidu[0].value=jingwei.lng;
    jweidu[1].value=jingwei.lat;
 var guo=document.getElementById("guoji");
  if(guo.checked==true)
  {

var weather={    
            "monthinfos": [   
                {
                    "humidity": 73.6,  
                    "H": 2.63,         
                    "temperature": 4.84,  
                    "wind": 6.22          
                },
                {
                    "humidity": 73.4,
                    "H": 3.09,
                    "temperature": 5.88,
                    "wind": 6.2
                },
                {
                    "humidity": 74.9,
                    "H": 3.53,
                    "temperature": 9.03,
                    "wind": 5.68
                },
                {
                    "humidity": 76.9,
                    "H": 4.28,
                    "temperature": 14,
                    "wind": 5.42
                },
                {
                    "humidity": 79.7,
                    "H": 4.84,
                    "temperature": 18.4,
                    "wind": 5.01
                },
                {
                    "humidity": 84.5,
                    "H": 4.58,
                    "temperature": 22.4,
                    "wind": 5.2
                },
                {
                    "humidity": 87.1,
                    "H": 5.17,
                    "temperature": 25.8,
                    "wind": 5.37
                },
                {
                    "humidity": 86.5,
                    "H": 4.78,
                    "temperature": 25.7,
                    "wind": 5.24
                },
                {
                    "humidity": 80.7,
                    "H": 4.07,
                    "temperature": 22.6,
                    "wind": 5.51
                },
                {
                    "humidity": 75.1,
                    "H": 3.36,
                    "temperature": 17.8,
                    "wind": 5.44
                },
                {
                    "humidity": 73.9,
                    "H": 2.79,
                    "temperature": 12.7,
                    "wind": 5.83
                },
                {
                    "humidity": 73.4,
                    "H": 2.58,
                    "temperature": 7.27,
                    "wind": 5.94
                }
            ],
            "monthavgs": {   
                "H": "3.81",
                "temperature": "15.54",
                "humidity": "78.31",
                "wind": "5.59"
            }
          }
          var h=document.getElementsByName("fu");
          var j=0;
          for(var i=0;i<h.length;i++)     
          {
            h[i].innerHTML=weather.monthinfos[j].H;
              j++;
          }  
          var  w=document.getElementsByName("te")
          var j=0;
          for(var i=0;i<w.length;i++)     
          {
            w[i].innerHTML=weather.monthinfos[j].temperature;
              j++;
          }
          var hum=document.getElementsByName("hu")
          var j=0;
          for(var i=0;i<hum.length;i++)     
          {
            hum[i].innerHTML=weather.monthinfos[j].humidity;
              j++;
          }

     var win=document.getElementsByName("feng")
          var j=0;
          for(var i=0;i<win.length;i++)     
          {
            win[i].innerHTML=weather.monthinfos[j].wind;
              j++;
          }
        document.getElementById("afu").innerHTML=weather.monthavgs.H;
        document.getElementById("ate").innerHTML=weather.monthavgs.temperature;
        document.getElementById("ahu").innerHTML=weather.monthavgs.humidity;
       document.getElementById("afeng").innerHTML=weather.monthavgs.wind;
}

/*function delectrow(){
  var tr=document.getElementById("shanchu");
  var row=tr.childNodes.length;
 // document.write(row.length);
  for(var i=0;i<row;i++)
  {
    var x=tr.removeChild(tr.childNodes[0]);

  }

}*/
function deleteRow(r)
  {
  var i=r.parentNode.parentNode.rowIndex
  document.getElementById('mytable').deleteRow(i);
  }




</script>
</body>
</html>