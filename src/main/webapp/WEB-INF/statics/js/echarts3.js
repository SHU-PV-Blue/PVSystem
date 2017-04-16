window.onload=function(){
var mychart1=echarts.init(document.getElementById("iv"));
    mychart1.setOption({
    	title:{
    		text:'i-v图',
        x:'center',//标题居中
        textStyle:{
           fontWeight:'normal'
        }
    	},
        tooltip:{

        	trigger:'axis'
        },
        xAxis:[{
        	type:'category',
            name:'电压/v',
            axisLabel : {  
                show:true,  
                interval: 0//,    // {number}  
                //rotate: 45,  
               // margin: 8  
                 
            },   
        	data:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
        }],
        yAxis:[{
        	type:'value',
        	name:'电流/A',
        	min:'dataMin',
            max:'dataMax'
        }],
        series:[{
                  type:"line",
                  smooth:true,
                  color:["#8F8FBD"],
                  areaStyle:{
                        normal:{
                        color:"#8F8FBD"
                  }
              },
              data:[9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,8.92,8.91,8.47,8.45,8.44,8.44,8.44,8.41,8.39,8.36,8.14,8.12,8.10,8.05,7.48,7.38]  //后端数据
        }]
    });
    //ajax加载代码
   // mychart1.showLoading();

    var mychart2=echarts.init(document.getElementById("pv"));
   mychart2.setOption({
        title:{
            text:'p-v图',
            x:'center',
            textStyle:{
            fontWeight:'normal'
        }
        },

        tooltip:{
            trigger:'axis'
        },
        xAxis:[{
            type:'category',
            name:'电压/v',
            axisLabel : {  
                show:true,  
                interval: 0//,    // {number}  
                //rotate: 45,  
               // margin: 8  
                 
            },   
            data:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
        }]
        ,
        yAxis:[{
            type:'value',
            name:'功率/w',
            min:'dataMin',
            max:'dataMax'
        }],
        series:[{
                  type:"line",
                  smooth:true,
                  color:["#8F8FBD"],
                  areaStyle:{
                        normal:{
                        color:"#8F8FBD"
                  }
              },
               data:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
        }]

    });
   //ajax加载代码

}


//js代码
$(function(){
    if($("#pip").attr("selected"))
    {
        $("#ip").show();
        $("#pv").hide();
    }
    if($("#ppv").attr("selected"))
    {
       $("#ip").hide();
       $("#pv").show();
    }
})


