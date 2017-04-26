<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>低压侧设计</title>
	<script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../statics/css/diya.css">
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
  </div>
</nav>
</div>
<div class="container">
  <h4><input type="radio" name="bianya" >集中式变压器</h4>
<div class="row">
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="集中式逆变器" src="../statics/images/nibianqi.jpg" class="gao" >
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal" data-target="#myModal1" name="jiradio">集中式逆变器</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="直流汇流箱" src="../statics/images/huiliuxiang.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">直流汇流箱</a>
  </div>
</div>
</div>
<div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/100%x180" alt="直流配电柜" src="../statics/images/peidiangui.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">直流配电柜</a>
  </div>
</div>
</div>
 <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="电缆" src="../statics/images/dianlan.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">电缆</a>
  </div>
</div>
</div>
</div>
<hr class="divider">
<!--第一行结束-->
<div class="container">
  <h4><input type="radio" name="bianya" >组串式逆变器</h4>
<div class="row">
  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="组串式逆变器" src="../statics/images/zunibianqi.png" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">组串式逆变器</a>
  </div>
</div>
</div>

  <div class="col-md-3">
    <div class="thumbnail">
      <img data-src="holder.js/300x200" alt="电缆" src="../statics/images/dianlan.jpg" class="gao">
      <div class="caption">
        <a href="#" class="btn btn-primary btn-block " role="button">电缆</a>
  </div>
</div>
</div>
</div>
</div>
  <div class="aa">
<a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
<a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
  </div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->
  <!--第一个模态框-->
  <div class="modal bs-example-modal-lg" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog  modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h2 class="modal-title" id="myModalLabel">集中式逆变器</h2>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-7">
              <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select><!--需要后端加载数据吗-->
              <table  table class="table table-bordered">
                <tr>
                  <td>最大直流输入功率/W</td>
                  <td>最大输入电压/V</td>
                  <td>启动电压/V</td>
                  <td>MPP电压下限/V</td>
                </tr>
                <tr>
                  <td>22</td>
                  <td>22</td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td>MPP电压上限/V</td>
                  <td>最大直流输入电流/A</td>
                  <td>额定交流输出功率/W</td>
                  <td>最大输出功率/W</td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <th>最大交流输出电压/A</th>
                  <th>额定电网电压/V</th>
                  <th>最大效率/%</th>
                </tr>
                <tr>
                  <td>&nbps;</td>
                  <td></td>
                  <td></td>
                </tr>
              </table>
            </div>
            <div class="col-md-5">
              <p>已选变压器:</p>
              <table>
                <tr>
                  <td></td>
                  <td>推荐值</td>
                </tr>
                <tr>
                  <td>环境极限低温</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>环境极限低温</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>每支路串联数</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>每个逆变器分配支路数</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>每个逆变器分配支路数</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>容配比</td>
                  <td><input type="text"/></td>
                </tr>
                <tr>
                  <td>所需逆变器数量</td>
                  <td><input type="text"/></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="modal-footer"style="clear:both">
            <button type="button" class="btn btn-primary" data-dismiss="modal">完成</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          </div>
        </div>
      </div>
    </div>
</body>
</html>