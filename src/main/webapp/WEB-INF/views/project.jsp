<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>自定义设备</title>
    <script src="../statics/js/jquery.min.js"></script>
    <script src="../statics/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../statics/css/project.css">
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
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
                <li class="active"><a href="">自定义设备</a></li>
                <li><a href="#">我的项目</a></li>
                <li><a data-toggle="modal" data-target="#myModal">新建项目</a></li>
                <li><a href="#">当前项目：test</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" id="userId"></a></li>
                <li><a href="/login/loginOut"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;注销</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="liebiao">
                <button type="button" class="list-group-item">光伏组件</button>
                <button type="button" class="list-group-item">集中式逆变器</button>
                <button type="button" class="list-group-item">直流汇流箱</button>
                <button type="button" class="list-group-item">直流配电柜</button>
                <button type="button" class="list-group-item">组串式逆变器</button>
                <button type="button" class="list-group-item">电缆</button>
                <button type="button" class="list-group-item">开关柜</button>
                <button type="button" class="list-group-item">升压变压器</button>
            </div>
        </div><!--列表版结束-->
        <div class="col-md-9" >
            <div class="panel panel-default" name="di"><!--第一个-->
                <div class="panel-heading">
                    <h3 class="panel-title left">光伏组件</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel1"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>公司</th>
                            <th>类型</th>
                            <th>系列</th>
                            <th>型号</th>
                            <th>峰值功率</th>
                            <th>转换效率</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div><!--第一个结束-->
            <!--第二个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">集中式逆变器</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel2"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>公司</th>
                            <th>型号</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div><!--第二个结束-->
            <!--第三个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">直流汇流箱</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel3"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>厂家</th>
                            <th>型号</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
            <!--第四个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">直流配电柜</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel4"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>公司</th>
                            <th>型号</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
            <!--第五个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">组串式逆变器</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel5"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>厂家</th>
                            <th>型号</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
            <!--第六个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">电缆</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel6"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>名称</th>
                            <th>型号</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
            <!--第七个-->
            <div class="panel panel-default " name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">开关柜</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel7"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>品牌</th>
                            <th>型号</th>
                            <th>类型</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
            <!--第八个-->
            <div class="panel panel-default" name="di">
                <div class="panel-heading">
                    <h3 class="panel-title left">升压变压器</h3>
                    <button type="button" class="btn btn-success btn-sm right " data-toggle="modal"
                            data-target="#myselfmodel8"><!--每个不一样要修改-->
                        <span class="glyphicon glyphicon-plus"></span> 添加
                    </button>
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <th>产品名</th>
                            <th>类型</th>
                            <th>额定容量</th>
                            <th>操作</th>
                        </tr>
                    </table>
                </div><!--面板正文-->
            </div>
        </div><!--col-md-9结束-->
    </div><!--行结束-->
</div>
<!--模态框-->
<div class="modal" id="myselfmodel1" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabel1" aria-hidden="true">
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabel1">光伏组件 </h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>公司</th>
                            <th>类型</th>
                            <th>系列</th>
                            <th>型号</th>
                            <th>峰值功率/w</th>
                            <th>转换效率/%</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>开路电压/V</th>
                            <th>最大功率点电压/V</th>
                            <th>最大功率点电流/A</th>
                            <th>短路电流/A</th>
                            <th>开路电压温度系数(%/℃)</th>
                            <th>最大功率温度系数(%/℃)</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>

                        </tr>
                        <tr>
                            <th>短路电流温度系数(%/℃)</th>
                            <th>长度/mm</th>
                            <th>宽度/mm</th>
                            <th>重量/kg</th>
                            <th>工作温度下限/℃</th>
                            <th>工作温度上限/℃</th>

                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第二个模态框-->
<div class="modal" id="myselfmodel2" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe2" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe2">集中式逆变器 </h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>厂家</th>
                            <th>型号</th>
                            <th>最大直流输入功率/w</th>
                            <th>最大输入电压/V</th>
                            <th>启动电压/V</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>MPP电压下限/V</th>
                            <th>MPP电压上限/V</th>
                            <th>最大直流输入电流/A</th>
                            <th>额定交流输出功率/W</th>
                            <th>最大输出功率/W</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>最大输出交流电流/A</th>
                            <th>额定电网电压/A</th>
                            <th>最大效率/%</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第三个模态框-->
<div class="modal" id="myselfmodel3" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe3" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe3">直流汇流箱</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>厂家</th>
                            <th>型号</th>
                            <th>输入路数/个</th>
                            <th>输入电流上限/A</th>
                            <th>直流断路器</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>防雷失效监控</th>
                            <th>监控单元</th>
                            <th>辅助电源</th>


                        </tr>
                        <tr>
                            <td><select style="width:104px;height:26px">
                                <option>有</option>
                                <option>无</option>
                            </select></td>
                            <td><select style="width:104px;height:26px">
                                <option>有</option>
                                <option>无</option>
                            </select></td>
                            <td><select style="width:104px;height:26px">
                                <option>有</option>
                                <option>无</option>
                            </select></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第四个模态框-->
<div class="modal" id="mysefmodel4" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe4" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe4">直流配电柜</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>公司</th>
                            <th>型号</th>
                            <th>接入直流路数/个</th>
                            <th>输入直流功率上限/W</th>
                            <th>输入输出总电流上限/A</th>
                            <th>接入开路电流上限/V</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第五个-->
<div class="modal" id="myselfmodel5" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe5" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe5">组串式逆变器</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>公司</th>
                            <th>型号</th>
                            <th>接入直流路数/个</th>
                            <th>输入直流功率上限/W</th>
                            <th>输入输出总电流上限/A</th>
                            <th>接入开路电流上限/V</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                    </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第6个-->
<div class="modal" id="myselfmodel6" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabel" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabel">电缆</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>名称</th>
                            <th>型号</th>
                            <th>允许载流量/A</th>
                            <th>容量/W</th>
                            <th>截面积/mm²</th>

                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第七个-->
<div class="modal" id="myselfmodel7" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe7" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe7">开关柜</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>品牌</th>
                            <th>型号</th>
                            <th>类型</th>
                            <th>母线额定电流/A</th>
                            <th>额定电压/V</th>

                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><select style="width:104px;height:26px">
                                <option>低压</option>
                                <option>高压</option>
                            </select></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>额定频率/Hz</th>
                            <th>防护等级</th>
                            <th>用途</th>
                            <th>结构形式</th>
                        </tr>
                        <td><input type="text"/></td>
                        <td><input type="text"/></td>
                        <td><input type="text"/></td>
                        <td><input type="text"/></td>
                    </table>
                    </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--第8个-->
<div class="modal" id="myselfmodel8" tabindex="-1" role="dialog" aria-labelledby="myselfModalLabe8" aria-hidden="true">
    <!--模态框-->
    <div class="modal-dialog  modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myselfModalLabe8">升压变压器</h4>
            </div>
            <div class="modal-body">
                <form><!--注意这里是表单-->
                    <table class="table table-bordered">
                        <tr>
                            <th>产品名</th>
                            <th>类型</th>
                            <th>分类</th>
                            <th>额定容量</th>
                            <th>负载损耗/W</th>
                            <th>空载电流/A</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><select style="width:104px;height:26px">
                                <option>10kv变压器</option>
                                <option>35kv变压器(0.4-35kv)</option>
                            </select></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <th>短路阻抗/Ω</th>
                            <th>额定电压/V</th>
                            <th>高压分接范围</th>
                            <th>联结组标号</th>
                            <th>空载损耗/W</th>
                        </tr>
                        <tr>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                            <td><input type="text"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--新建项目的模态框-->
<div class="modal" id="project" tabindex="-1" role="dialog" aria-labelledby="myprojectModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myprojectModalLabel">添加新项目</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2" for="projectName">项目名称</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="projectName">
                        </div>
                        <div class="col-sm-4"><span class="glyphicon glyphicon-remove-" style="color:red"></span></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="new1">确定</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <p class="juzhong">Copyright &copy; 2016 上海宝钢节能环保技术有限公司. All Rights Reserved</p>
</nav>
</body>
</html>
<script src="../statics/js/userInfo.js"></script>
<script src="../statics/js/project.js"></script>