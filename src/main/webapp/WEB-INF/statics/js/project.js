/**
 * Created by acer1 on 2017/4/30.
 */
var lie = $('#liebiao');
var lieLength = lie.find('button').length;
var di = $("div[name='di']");
var diLength = di.length;
for(var i=1;i<diLength;i++)
    di.eq(i).hide();
for (var i = 0; i < lieLength; i++) {
    (function (i) {
        lie.find('button').eq(i).click(function () {
            for (var j = 0; j < lieLength; j++)
                lie.find('button').eq(j).removeClass('active');
            $(this).addClass('active');
            for (var j = 0; j < diLength; j++)
                di.eq(j).hide();
            di.eq(i).show();
        });
    })(i);
}

