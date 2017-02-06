/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var request; 
function showItem()
{
    
    document.getElementById("load").style.display='block'; 
    var dp=document.getElementById("itm").value; 
    var url="../ShowDropDownStudent?studentname="+dp;  

    if(window.XMLHttpRequest)
    {  
        request=new XMLHttpRequest();  
    }  
    else if(window.ActiveXObject)
    {  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
    }  

    try
    {  
        request.onreadystatechange=resultOfshowItem;  
        request.open("GET",url,true);  
        request.send();  
    }catch(e){alert("Unable to connect to server");}  
}

function resultOfshowItem()
{   
  //  alert(11);
   var dp=document.getElementById("itm").value;
    if(request.readyState==4)
    {   
        var val=request.responseText;
        var v1=new String(val);
        v1=v1.trim();
        //alert(v1);
        var t=v1.length; 
        if(v1=="Please enter id") 
        {
            v1="<option>  Please Select Category  </option>";
        }
       // document.getElementById('dropDown').value="Options for - "+dp.toLowerCase();
        document.getElementById('branchname').innerHTML=v1; 
    
        document.getElementById("load").style.display='none'; 
    }  
}
