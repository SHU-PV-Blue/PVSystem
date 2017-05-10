/**
 * Created by acer1 on 2017/5/6.
 */
var jizhong=document.getElementsByName('jiradio')[0];
jizhong.onclick=function () {
    $.ajax({
        url:'/component/queryComponent',
        type: 'get',
        dataType: 'json',
        success:function(data){
           for(var i=0;i<data.length-1;i++){
               $("#jiselect").append("<option value="+i+">"+data[i].manufacturersName+"&nbsp;&nbsp;&nbsp;&nbsp;"+data[i].model+"</option>");
           }
        },
        error: function () {
            alert('error');
        }
    })

}
$('#jiselect').blur(function () {
    var value=this.value;
    var table=$()


})