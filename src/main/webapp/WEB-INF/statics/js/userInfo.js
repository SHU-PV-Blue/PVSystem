/**
 * Created by zihua on 17-4-29.
 */
$.ajax({
    url: '/ajax/userInfo',
    type: 'get',
    dataType: 'json',
    success: function (data) {
        $('#userId').html('<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;' + data.nickname);
    },
    error: function () {
        alert('error');
    }
})