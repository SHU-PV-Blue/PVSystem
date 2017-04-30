/**
 * Created by acer1 on 2017/4/29.
 */
/*$("#projectName").blur(function()
 if(this.value=="")


 )*/
$("#new1").click(function () {
        var proName = $('#projectName').val();
        alert(proName);
        $.ajax({
            url: '/project/createProject',
            data: {'projectName': proName},
            type: 'get',
            dataType: 'json',
            success: function (data) {
                if (data.status == true) {
                    location.href = '/home/newProject?projectName='+proName;//js重定向
                }
            },
            error: function () {
                alert('error');
            }
        });

    }
)



