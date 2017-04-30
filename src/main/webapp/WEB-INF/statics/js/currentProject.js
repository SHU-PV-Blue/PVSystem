/**
 * Created by zihua on 17-4-30.
 */

$.ajax({
    url: '/project/current',
    type: 'get',
    dataType: 'json',
    success: function (data) {
        $('#current').html('当前项目：' +
            '<label id="pName">' + data.projectName + '</label><label id="pID" hidden>' + data.projectId + '</label>');

    },
    error: function () {
        alert('error');
    }
});