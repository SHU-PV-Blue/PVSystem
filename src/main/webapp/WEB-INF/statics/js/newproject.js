/**
 * Created by acer1 on 2017/4/29.
 */
/*$("#projectName").blur(function()
 if(this.value=="")
     alert("项目名不能为空");
     checkName.html('<span class="glyphicon glyphicon-remove-" style="color:red"></span>项目名不能为空');

 )*/
$("#new1").click(function () {
        var projectName = $('#projectName').val();
        var checkName = $('#check');
        alert(projectName);
        if (projectName == "") {
            checkName.html('<span class="glyphicon glyphicon-remove-" style="color:red"></span>项目名不能为空');
        }
        else {
            $.ajax({
                url: '/project/createProject',
                data: {'projectName': projectName},
                type: 'get',
                dataType: 'json',
                success: function (data) {
                    if (data.success == true) {
                       window .location.href = '/home/newProject?projectName=' + projectName;//js重定向
                        checkName.css('', 'hidden');
                    }
                    else
                        checkName.html('<span class="glyphicon glyphicon-remove-" style="color:red"></span>该项目名已存在');
                },
                error: function () {
                    alert('error');
                }
            });
        }

    }
)



