
    var heng = document.getElementById("heng");
    var shu = document.getElementById("shu");
    var fang = document.getElementsByName("pai");

    function displayPai(a, b) {
        a.style.display = "block";
        b.style.display = "none";
    }

    fang[0].addEventListener('click', displayPai(heng, shu), false);
    fang[1].addEventListener('click', displayPai(shu, heng), false);

