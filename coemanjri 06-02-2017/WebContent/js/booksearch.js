function BookSearch(type)
{ 
   // alert("message");
    var val;
    document.getElementById("serchTable").innerHTML="";
        
    if(type=='TEXT'){val=document.getElementById("search").value;}
    else if(type=='NO'){val=document.getElementById("searchByNo").value;}
    var url="../SearchedBook?val="+val+"&type="+type;  
    var isText=val.replace(/ /g,'');
    if(isText!="")
    {
        if(window.XMLHttpRequest)
        {  request=new XMLHttpRequest();  }  
        else if(window.ActiveXObject)
        {  request=new ActiveXObject("Microsoft.XMLHTTP");  }  

        try
        {  
            request.onreadystatechange=resultOfBookSearch;  
            request.open("GET",url,true);  
            request.send();  
        }catch(e){//alert(e.message);
            alert("Unable to connect to server");}
    }
}


function resultOfBookSearch()
{

     if(request.readyState==4)
     {
        
        var table = document.getElementById("serchTable");
        table.innerHTML = "";
        var val=request.responseText;
        var v1=new String(val);
        v1=v1.trim();
        //alert(v1);
        if(v1=="{}")
        {
            table.insertRow(0).insertCell(0).innerHTML='<font color="red">No Items For This Criteria.</font>';
        }
        else
        {
           // alert("yes!searched");
             v1 = v1.replace('{','');
             v1 = v1.replace('}','');
            var res = v1.split(",");
            for(var i=0;i<res.length;i++)
            { var vls = res[i].split("=");
                
                var row = table.insertRow(i);
                var cell1 = row.insertCell(0);
               // var cell2 = row.insertCell(1);
               // var cell3 = row.insertCell(2);
                
                cell1.innerHTML = '<span class="label label-success">'+vls[1]+'</span>';
                //cell2.innerHTML = '<a href="?id='+vls[0]+'"><span class="label label-success">Task Details</span></a>';
               // cell3.innerHTML ='<a href="?id='+vls[0]+'"><span class="label label-success">Project Files</span></a>';
               
            }
            
        }
        

    }  
    
}


function ToggleFocus( val)
{
   if(val=="TEXT"){document.getElementById("searchByNo").value='';}
   else if(val=="NO"){document.getElementById("search").value='';}
}