var res;
function myFunction() {
    var x = document.getElementById("num1");
    var num1=parseFloat(x.value);
    var y = document.getElementById("num2");    
    var num2=parseFloat(y.value);
    var op = document.getElementsByName("r1");
    var i;
/////////
    for (i = 0; i < op.length; i++) {
        if (op[i].type == "radio") {
            if(op[i].checked)
            {
            var operation= op[i].value;
            
            break;
            }
        }
    }
    
   
if(operation=="Add")
{
res=num1+num2;

}

else if(operation=="Sub")
{
res=num1-num2;

}

else if(operation=="Mul")
{
res=num1*num2;

}

else if(operation=="Div")
{
res=num1/num2;
if(num1>=num2)
;
else
;
}
else if(operation=="sqrt")
{
if(num1>=0)
{
res=Math.sqrt(num1);
}
else
;
}
else if(operation=="sin")
{
res=Math.sin(num1);

}
else if(operation=="cos")
{
res=Math.cos(num1);
}
    //double num1 = x.value;
   // var res = num1+num2;
    //double num1 = x.value;        
    
    //alert(res);    
    document.getElementById("res").value = res;    
}
function save(){
document.getElementById("num1").value = "";  
document.getElementById("num2").value = "";  
document.getElementById("res").value = "";
}

function recall(){
document.getElementById("num1").value = res;  
}
