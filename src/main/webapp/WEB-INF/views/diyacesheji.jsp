<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>低压侧设计</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/diya.css">
    <script src="../statics/js/diya.js"></script>
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
    </div>
</nav>
</div>
<div class="container">
    <h4><input type="radio" name="bianya">集中式变压器</h4>
    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="集中式逆变器" src="../statics/images/nibianqi.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                       data-target="#myModal1" name="jiradio">集中式逆变器</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="直流汇流箱" src="../statics/images/huiliuxiang.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button"  data-toggle="modal"
                       data-target="#myModal2" name="jiradio" >直流汇流箱</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/100%x180" alt="直流配电柜" src="../statics/images/peidiangui.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button"  data-toggle="modal"
                       data-target="#myModal2" name="jiradio">直流配电柜</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="电缆" src="../statics/images/dianlan.jpg" class="gao">
                <div class="caption">
                    <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                       data-target="#myModal4" name="jiradio">电缆</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="divider">
    <!--第一行结束-->
    <div class="container">
        <h4><input type="radio" name="bianya">组串式逆变器</h4>
        <div class="row">
            <div class="col-md-3">
                <div class="thumbnail">
                    <img data-src="holder.js/300x200" alt="组串式逆变器" src="../statics/images/zunibianqi.png" class="gao">
                    <div class="caption">
                        <a href="#" class="btn btn-primary btn-block " role="button"  data-toggle="modal"
                           data-target="#myModal5" name="zuradio">组串式逆变器</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="thumbnail">
                    <img data-src="holder.js/300x200" alt="电缆" src="../statics/images/dianlan.jpg" class="gao">
                    <div class="caption">
                        <a href="#" class="btn btn-primary btn-block " role="button" data-toggle="modal"
                           data-target="#myModal6"name="zuradio" >电缆</a>
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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h2 class="modal-title" id="myModalLabel">集中式逆变器</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-7">
                            <select class="form-control" style
                                    ="margin-bottom: 10px">
                            </select><!--需要后端加载数据吗-->
                            <table class="table table-bordered">
                                <tr>
                                    <td>最大直流输入功率/W</td>
                                    <td>最大输入电压/V</td>
                                    <td>启动电压/V</td>
                                    <td>MPP电压下限/V</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
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
                                    <td>最大交流输出电压/A</td>
                                    <td>额定电网电压/V</td>
                                    <td>最大效率/%</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-5">
                            <p>已选变压器:</p>
                            <table class="table table-bordered">
                                <tr>
                                    <td></td>
                                    <td>推荐值</td>
                                </tr>
                                <tr>
                                    <td>环境极限低温</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>环境极限低温</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>每支路串联数</td>
                                    <td><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>每个逆变器分配支路数</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>每个逆变器分配支路数</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>容配比</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>所需逆变器数量</td>
                                    <td class="col-xs-3"><input type="text" class="form-control"/></td>
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
</div>
</div>
<!--第二个模态框-->
<div class="modal bs-example-modal-lg" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabe2">直流汇流箱</h2>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-7">
                        <select class="form-control" style
                                ="margin-bottom: 10px">
                        </select><!--需要后端加载数据吗-->
                        <table class="table table-bordered">
                            <tr>
                                <td>输入路数/个</td>
                                <td>输入电流上限/A</td>
                                <td>直流断路器</td>
                                <td>防雷失效监控</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>无</td>
                                <td>无</td>
                            </tr>
                            <tr>
                                <td>监控单元</td>
                                <td>辅助电源</td>
                            </tr>
                            <tr>
                                <td>无</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-5">
                        <p>已选汇流箱:</p>
                        <table class="table table-bordered">
                            <tr>
                                <td></td>
                                <td>推荐值</td>
                            </tr>
                            <tr>
                                <td>汇流箱输入路数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>每台逆变器接入汇流箱数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>汇流箱总数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
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
</div>
</div>
<!--第三个模态框-->
<div class="modal bs-example-modal-lg" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabe3">直流配电柜</h2>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-7">
                        <select class="form-control" style
                                ="margin-bottom: 10px">
                        </select><!--需要后端加载数据吗-->
                        <table class="table table-bordered">
                            <tr>
                                <td>接入直流路数/个</td>
                                <td>输入直流功率上限/w</td>
                                <td>输入输出总电流上限/A</td>
                                <td>接入开路电压上限/V</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                        </table>
                    </div>
                    <div class="col-md-5">
                        <p>已选配电柜:</p>
                        <table class="table table-bordered">
                            <tr>
                                <td></td>
                                <td>推荐值</td>
                            </tr>
                            <tr>
                                <td>配电柜输入路数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>每台逆变器接入配电柜数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>配电柜总数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
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
</div>
</div>
<!--第四个模态框-->
<div class="modal bs-example-modal-lg" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h1 class="modal-title" id="myModalLabel4">电缆</h1>
            </div>
            <div class="modal-body">
                <h4><span style="color:red" class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>请按照箭头所指流程填写
                </h4>
                <img src="../statics/images/zhenlie.png" style="width:100px;height:100px">
                <button class="btn btn-default"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>配置
                </button>
                <img src="../statics/images/huiliuxiang.jpg" style="width:100px;height:100px">
                <button class="btn btn-default"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>配置
                </button>
                <img src="../statics/images/peidiangui.jpg" style="width:100px;height:100px">
                <button class="btn btn-default"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>配置
                </button>
                <img src="../statics/images/nibianqi.jpg" style="width:100px;height:100px">
                <div id="zhen">
                    <h3>阵列到汇流箱</h3>
                    <select class="form-control" style
                            ="margin-bottom: 10px;width:70%">
                    </select><!--需要后端加载数据吗-->
                    <table style="width:100%" class="table table-bordered">
                        <tr>
                            <td>允许载流量/A</td>
                            <td>容量/W</td>
                            <td>载流量/mm²</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    <div class="row">
                        <table class="col-md-5" style="text-align:right">
                            <tr>
                                <td>每路最大连续电流</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆长度/m</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>电缆损耗/%</td>
                                <td></td>
                            </tr>
                        </table>
                        <table class="col-md-5" style="text-align: right">
                            <tr>
                                <td>直流单元输出电路</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>线路压降:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆总损耗/%</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="hui">
                    <h3>汇流箱到配电柜</h3>
                    <select class="form-control" style
                            ="margin-bottom: 10px;width:70%">
                    </select><!--需要后端加载数据吗-->
                    <table style="width:100%" class="table table-bordered">
                        <tr>
                            <td>允许载流量/A</td>
                            <td>容量/W</td>
                            <td>截面积/mm²</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    <div class="row">
                        <table class="col-md-5" style="text-align:right">
                            <tr>
                                <td>每路最大连续电流</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆长度/m</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>电缆损耗/%</td>
                                <td></td>
                            </tr>
                        </table>
                        <table class="col-md-5" style="text-align: right">
                            <tr>
                                <td>直流单元输出电路</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>线路压降:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆总损耗/%</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="pei">
                    <h3>配电柜到逆变器</h3>
                    <select class="form-control" style
                            ="margin-bottom: 10px;width:70%">
                    </select><!--需要后端加载数据吗-->
                    <table style="width:100%" class="table table-bordered">
                        <tr>
                            <td>允许载流量/A</td>
                            <td>容量/W</td>
                            <td>截面积/mm²</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    <div class="row">
                        <table class="col-md-5" style="text-align:right">
                            <tr>
                                <td>每路最大连续电流</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆长度/m</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>电缆损耗/%</td>
                                <td></td>
                            </tr>
                        </table>
                        <table class="col-md-5" style="text-align: right">
                            <tr>
                                <td>直流单元输出电路</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>线路压降:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>直流电缆总损耗/%</td>
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
<!--第五个模态框-->
<div class="modal bs-example-modal-lg" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabe5">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h2 class="modal-title" id="myModalLabe5">组串式逆变器</h2>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-7">
                        <select class="form-control" style
                                ="margin-bottom: 10px">
                        </select><!--需要后端加载数据吗-->
                        <table class="table table-bordered">
                            <tr>
                            <tr>
                                <td>最大输入功率/W</td>
                                <td>最大输入电压/V</td>
                                <td>启动电压/V</td>
                                <td>额定输入电压/V</td>
                            </tr>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>MPP电压下限/V</td>
                                <td>MPP电压上限/V</td>
                                <td>MPPT数量/个</td>
                                <td>最大输出功率/W</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>输入端子最大允许电流/A</td>
                                <td>额定输出功率/W</td>
                                <td>最大输出功率/%</td>
                                <td>最大输出电流/A</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-5">
                        <p>已选变压器:</p>
                        <table class="table table-bordered">
                            <tr>
                                <td></td>
                                <td>推荐值</td>
                            </tr>
                            <tr>
                                <td>环境极限低温</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>环境极限高温</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>每支路串联数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>每个逆变器分配支路数</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>容配比</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
                            </tr>
                            <tr>
                                <td>所需逆变器数量</td>
                                <td class="col-xs-3"><input type="text" class="form-control"/></td>
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
</div>
</div>
</div>
<!--第六个模态框-->
<div class="modal bs-example-modal-lg" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabe6">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h1 class="modal-title" id="myModalLabel6">电缆</h1>
            </div>
            <div class="modal-body">
                <div class="row" style="margin-bottom: 10px">
                    <div class="col-md-offset-4">
                    <img src="../statics/images/zhenlie.png" style="width:100px; height:100px"/>
                    <img src="../statics/images/arrow.png" style="width:100px;height:10px"/>
                    <img src="../statics/images/zunibianqi.png"  style="width:100px; height:100px"/>
                    </div>
                </div>
                <select class="form-control" style
                        ="margin-bottom: 10px;width:70%">
                </select><!--需要后端加载数据吗-->
                <table style="width:100%" class="table table-bordered">
                    <tr>
                        <td>允许载流量/A</td>
                        <td>容量/W</td>
                        <td>载流量/mm²</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <div class="row">
                    <table class="col-md-5" style="text-align:right">
                        <tr>
                            <td>每路最大连续电流</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>直流电缆长度/m</td>
                            <td class="col-xs-3"><input type="text" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>电缆损耗/%</td>
                            <td></td>
                        </tr>
                    </table>
                    <table class="col-md-5" style="text-align: right">
                        <tr>
                            <td>直流单元输出电路</td>
                            <td class="col-xs-3"><input type="text" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>线路压降:</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>直流电缆总损耗/%</td>
                        </tr>
                    </table>
                </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">完成</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>

</body>
</html>