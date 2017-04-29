/**
 * Created by acer1 on 2017/4/26.
 */
$(function () {
    var radio = document.getElementsByName("bianya");
    var jiradio = document.getElementsByName("jiradio");
    var zuradio = document.getElementsByName("zuradio");
    function checkdisabled(a,b) {
        for (var i = 0; i < a.length; i++) {
            a[i].setAttribute("disabled");
        }
        for (var i = 0; i < b.length; i++) {
            b[i].removeAttribute("disabled");
        }
    }
    radio[0].onclick =checkdisabled(jiradio,zuradio);
    radio[1].onclick=checkdisabled(zuradio,jiradio);
    var zhen = document.getElementById("zhen");
    var hui = document.getElementById("hui");
    var pei = document.getElementById("pei");
    var zhp = document.getElementsByName("zhp");
    var shu = [zhen, hui, zhp];
    for (var i = 0; i < zhp.length; i++) {
        (function (i) {
            zhp[i].onclick = function () {
                for (var j = 0; j < shu.length; i++) {
                    shu[j].style.display = "none";
                }
                zhp[i].style.display = "block";
            }

        })(i);
    }
})



