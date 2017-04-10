 $(function(){
 $("#zi").bind("click", function () {
     if(!$("#zi").attr("checked"))
     {
     zdconfirm('pvsystem','确定自定义气象数据',function(r){  
       if(r) 
       {
      $("#zi").attr("checked",true);
      $("#guoji").attr("checked",false);
    }
  });
   }
    });
  
  $("#guoji").bind("click", function () { 
  if(!$("#guoji").attr("checked"))
  {
     zdconfirm('pvsystem','确定使用国际气象数据库',function(r){  
       if(r)
       { 
       $("#zi").attr("checked",false); 
      $("#guoji").attr("checked",true); 

   }
  });
   }
    });  
    });  
   
     
  
   
  