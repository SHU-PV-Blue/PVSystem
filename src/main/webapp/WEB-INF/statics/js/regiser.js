/**
 * Created by acer1 on 2017/4/22.
 */
//glyphicon glyphicon-remove-circle   glyphicon glyphicon-ok-circle  glyphicon glyphicon-info-sign
window.onload = function () {
    var p1=document.getElementById("p1");
    var p2=document.getElementById("p2");
    var p3=document.getElementById("p3");
    var p4=document.getElementById("p4");
    var blength=0;//长度
    var re=/[^\w\u4e00-\u9fa5]/g;
    var input = document.getElementsByTagName("input");
    function checklength(str){
         return str.replace(/[^x00-ff]/,'xx').length;
    }
    function checkrepaeat(psw,u){
        var temp;
        for(var i=0;i<psw.length;i++){
            if(psw.charAt(i)==u)
                temp++;
        }
        return temp;
    }
    input[0].onfocus=function(){
        p1.style.visibility="visible";
        p1.innerHTML='<span class="glyphicon glyphicon-info-sign "style="color:green"></span> 5-25个字符，一个汉字为两个字符';
    }
    input[0].onblur=function () {
        var blength=checklength(this.value);
        //含有非法字符
        if(re.test(this.value))
            p1.innerHTML='<span class="glyphicon glyphicon-remove-circle "style="color:red"></span>含有非法字符 ';

       //为空
      else if(this.value=="")
            p1.innerHTML='<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名不能为空';

        //不能超过25
        else if(blength>25)
            p1.innerHTML='<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名长度不超过25个字符';
        //不能少于5
        else if(blength<5)
            p1.innerHTML='<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名长度不小于5个字符';
        //不能重复
        else {
            $.ajax({
                url:'/register/checkUser',
                type:'get',
                data:{'userId':input[1].value},
                dataType:'json',//解析数据
                success:function (data) {
                    if(data.success=='true')
                    {
                        p1.innerHTML='<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>该用户名已存在';
                    }
                    else
                        //OK
                        p1.innerHTML='<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>';

                },
                error:function () {
                    alert('错误');
                }

            });
        }
    }
    input[1].onfous=function () {
        p2.innerHTML=

    }
    input[1].onblur = function(){
        //不能为空
        //

    }
}