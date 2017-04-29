/**
 * Created by acer1 on 2017/4/22.
 */
//glyphicon glyphicon-remove-circle   glyphicon glyphicon-ok-circle  glyphicon glyphicon-info-sign
window.onload = function () {
    var p1 = document.getElementById("p1");
    var p2 = document.getElementById("p2");
    var p3 = document.getElementById("p3");
    var p4 = document.getElementById("p4");
    var blength = 0;//长度
    var re = /[^\w\u4e00-\u9fa5]/g;
    var input = document.getElementsByTagName("input");

    function checklength(str) {
        return str.replace(/[^x00-xff]/, 'YY').length;
    }

    function checkrepeat(psw, u) {
        var temp = 0;
        for (var i = 0; i < psw.length; i++) {
            if (psw.charAt(i) == u)
                temp++;
        }
        return temp;
    }

    input[0].onfocus = function () {
        p1.style.visibility = "visible";
        p1.innerHTML = '<span class="glyphicon glyphicon-info-sign "style="color:green"></span> 5-25个字符，一个汉字为两个字符';
    }
    input[0].onblur = function () {
        var blength = checklength(this.value);
        //含有非法字符
        if (re.test(this.value))
            p1.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span>含有非法字符 ';

        //为空
        else if (this.value == "")
            p1.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名不能为空';

        //不能超过25
        else if (blength > 25)
            p1.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名长度不超过25个字符';
        //不能少于5
        else if (blength < 5)
            p1.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>用户名长度不小于5个字符';
        //不能重复
        else {
            $.ajax({
                url: '/register/checkUser',
                type: 'get',
                data: {'userId': input[1].value},
                dataType: 'json',//解析数据
                success: function (data) {
                    if (data.success == 'true') {
                        p1.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>该用户名已存在';
                    }
                    else
                    //OK
                        p1.innerHTML = '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>';

                },
                error: function () {
                    alert('错误');
                }

            });
        }
    }
    input[1].onfocus = function () {
        p2.style.visibility = "visible";
        p2.innerHTML = '<span class="glyphicon glyphicon-info-sign "style="color:green"></span> 4-25个字符，推荐使用中文';
    }
    input[1].onblur = function () {
        //alert(this.value.length);
        var blength = checklength(this.value);
        alert(this.value.length + ' ' + blength);
        //含有非法字符
        if (re.test(this.value))
            p2.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span>含有非法字符 ';
        //为空
        else if (this.value == "")
            p2.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>昵称不能为空';
        //长度大于25
        else if (blength > 25)
            p2.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>昵称长度不超过25个字符';
        //不能少于4
        else if (blength < 4)
            p2.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>昵称长度不小于4个字符';

        //ok
        else
            p2.innerHTML = '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>';
    }
    input[2].onfocus = function () {
        p3.style.visibility = "visible";
        p3.innerHTML = '<span class="glyphicon glyphicon-info-sign "style="color:green"></span> 6-16位数字加字母的组合';

    }
    input[2].onblur = function () {
        var re_n = /[^\d]/;
        var same = checkrepeat(this.value, this.value[0]);
        if (this.value == "")
            p3.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span>不能为空 ';
        //不能用相同的字符
        else if (same == this.value.length)
            p3.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span>密码不能用相同的字符';
        //长度为6-16
        else if (this.value.length < 6 || this.value.length > 16)
            p3.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span> 密码长度为6-16个字符';
        //不能全为数字
        else if (!re_n.test(this.value))
            p3.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span> 密码不能全为数字';
        else if (!/[^a-zA-Z]/.test(this.value))
            p3.innerHTML = '<span class="glyphicon glyphicon-remove-circle "style="color:red"></span> 密码不能全为字母';
        // ok
        else {
            p3.innerHTML = '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>';
            input[3].removeAttribute('disabled');
            p4.style.visibility="visible";
            p4.innerHTML = '<span class="glyphicon glyphicon-info-sign "style="color:green"></span> 请输入相同的密码';

        }
    }

    input[3].onblur=function () {
        //密码输入不一致
        if(this.value!==input[2].value)
            p4.innerHTML = '<span class="glyphicon glyphicon-remove-circle" style="color:red"></span>密码输入不一致';
        //ok
        else
            p4.innerHTML = '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>';
    }
}
