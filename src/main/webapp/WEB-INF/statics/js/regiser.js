/**
 * Created by acer1 on 2017/4/22.
 */
window.onload = function () {
    //var
    var input = document.getElementsByTagName("input");
    input[1].onblur = function(){
        $.ajax({
            url:'/register/checkUser',
            type:'get',
            data:{'userId':input[1].value},
            dataType:'json',//解析数据
            success:function (data) {
                if(data.success=='true')
                {
                    alert("用户名已存在");
                }
                else
                    alert("成功");
            },
            error:function () {
                alert('错误');
            }

        });

    }
}