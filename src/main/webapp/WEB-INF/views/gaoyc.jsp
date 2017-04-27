<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>高压侧设计</title>
    <script src="http:\\cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="http:\\cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <link href="http:\\cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../statics/css/gaoyac.css">
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
            <a class="navbar-brand" href="#">光伏软件</a>
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
                <img data-src="holder.js/300x200" alt="低压开关柜" src="../statics/images/低压开关柜.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                       data-target="#Modal1">低压开关柜</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="升压变压器" src="../statics/images/变压器.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                       data-target="#Modal2">升压变压器</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="高压开关柜" src="../statics/images/高压开关柜.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                       data-target="#Modal3">高压开关柜</a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="divider">
<div class="aa">
    <a href="#" class="btn btn-default btn-sm active" role="button">确认</a>
    <a href="#" class="btn btn-default btn-sm active" role="button">返回</a>
</div>
<!--第一个模态框-->
<div class="modal bs-example-modal-lg" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabel">低压开关柜</h2>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-7">
                        <select class="form-control" style
                                ="margin-bottom: 10px">
                        </select><!--需要后端加载数据吗-->
                        <table class="table table-bordered">
                            <tr>
                                <td>类型</td>
                                <td>母线额定电流/A</td>
                                <td>额定电压/V</td>
                                <td>额定频率/HZ</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>防护等级</td>
                                <td>用途</td>
                                <td>结构形式</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-5">
                        <p>低压开关柜数量</p>
                        <div class="col-xs-3"><input type="text" class="form-control"/></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">完成</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--第二个模态框-->
<div class="modal bs-example-modal-lg" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabe2">升压变压器</h2>
            </div>
            <div class="modal-body">
                <input type="radio" name="sheng"/> 一次升压
                <input type="radio" name="sheng"/> 二次升压
                <div class="btn-group  btn-group-lg" role="group" aria-label="...">
                    <button type="button" class="btn btn-default">一次升压</button>
                    <button type="button" class="btn btn-default">二次升压</button>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <h3>一次升压</h3>
                        <select class="form-control" style
                                ="margin-bottom: 10px">
                        </select><!--需要后端加载数据吗-->
                        <table class="table table-bordered">
                            <tr>
                                <td>产品名</td>
                                <td>分类</td>
                                <td>额定容量</td>
                                <td>类型</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>额定电压/V</td>
                                <td>高压分接范围</td>
                                <td>联结组标号</td>
                                <td>空载损耗</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>负载损耗(W)</td>
                                <td>空载电流/A</td>
                                <td>短路阻抗/%</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-5">
                        <table class="table table-bordered">
                            <tr>
                                <td></td>
                                <td>推荐值</td>
                            </tr>
                            <tr>
                                <td>串联逆变器数量</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">完成</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
<!--底部导航条-->

</body>
</html>