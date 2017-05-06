
    var heng = document.getElementById("heng");
    var shu = document.getElementById("shu");
    var fang = document.getElementsByName("pai");

    function displayPai(a, b) {
        a.style.display = "block";
        b.style.display = "none";
    }

    fang[0].onclick=function () {
        displayPai(heng,shu);

    };
    fang[0].onclick=function () {
        displayPai(shu,heng);

    }

