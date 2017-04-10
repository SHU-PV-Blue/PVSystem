var mychart1=echarts.init(document.getElementById("iv"));
    mychart1.setOption({
    	title:{
    		text:'i-v图'
    	},

        tooltip:{

        	trigger:'axis'
        },
        /*legend:{
        	right:30,
        	data:['最高气温','最低气温','平均气温']
        },*/
        xAxis:[{
        	type:'category',
            name:'电压/v',
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
              data:[]  //后端数据
        }]
    });
    //ajax加载代码
    mychart1.showLoading();


    

    var mychart2=echarts.init(document.getElementById("pv"));
   mychart2.setOption({
        title:{
            text:'p-v图'
        },

        tooltip:{

            trigger:'axis'
        },
        /*legend:{
            right:30,
            data:['最高气温','最低气温','平均气温']
        },*/
        xAxis:[{
            type:'category',
            name:'电压/v',
            data:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
        }],
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
              data:[]  //后端数据

        }]
    });
   //ajax加载代码




//js代码
$(function(){
    if($("#1").attr("selected"))
    {
        $("#ip").show();
        $("#pv").hide();
    }
    if($("#2").attr("selected"))
    {
       $("#ip").hide();
       $("#pv").show();
    }
})


