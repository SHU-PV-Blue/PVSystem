window.onload=function(){
	var heng=document.getElementById("heng");
	var shu=document.getElementById("shu");
	var fang=document.getElementsByName("pai");
	if(fang[0].checked==true){
		heng.className="show";
		shu.className="hide";
	}
	if(fang[1].checked==true){
		shu.className="show";
		heng.className="hide";
	}
}