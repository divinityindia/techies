var request; 
function showItem()
{
    document.getElementById("load").style.display='block'; 
    var dp=document.getElementById("itm").value; 
    var url="../SubDSRQuery?cat="+dp;  

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
   var dp=document.getElementById("itm").value;
    if(request.readyState==4)
    {   
        var val=request.responseText;
        var v1=new String(val);
        v1=v1.trim();
        var t=v1.length; 
        if(v1=="Please enter id") 
        {
            v1="<option>  Please Select Category  </option>";
        }
        document.getElementById('dropDown').value="Options for - "+dp.toLowerCase();
        document.getElementById('selectOptions').innerHTML=v1;
    
        document.getElementById("load").style.display='none'; 
    }  
}


function addItem(itemid)
{

     var url="../AddItemQuery?id="+itemid;  

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
        request.onreadystatechange=function()
        {
                 if(request.readyState==4)
                {   
                    var val=request.responseText.split("[%]");
                    var v1=new String(val);
                    v1=v1.trim();
                    var t=v1.length; 
                    if(v1=="Please enter id")
                    {
                        v1="<option>  Please Select Category  </option>";
                    }
                    //document.getElementById('msg').innerHTML=v1;
                    
                    var l=val.length;
                    var show=val[0];
                    var id=val[1];
                    var item=val[2];
                    var unit=val[3];
                    var rate=val[4];
                    
                    var ids=id.split("[--]");
                    var items=item.split("[--]");
                    var units=unit.split("[--]");
                    var rates=rate.split("[--]");
                    
                    var table = document.getElementById("Dtable");
                    
                    var tableRef = document.getElementById('Dtable').getElementsByTagName('tbody')[0];
                    var rowCount = tableRef.rows.length+1; 
                    var row = tableRef.insertRow(tableRef.rows.length); 
                    row.setAttribute("onclick","calDSRPrice()");
                    
                    var n=row.insertCell(0);
                    if(rowCount>1)
                    {
                        var val=0;
                        for(var i=2;i<=rowCount;i++)
                        {
                            var val1=table.rows[i].cells[0].textContent;
                            if(val1!="")
                            {
                                val=val1
                            }
                        }
                        n.innerHTML=++val;
                    }else{
                    n.innerHTML=rowCount;
                    }
                    
                    if (show.trim()=="")
                    {
                        row.insertCell(1).innerHTML='<input type="hidden" name="id" value="'+itemid+'"/>'+item;
                        row.insertCell(2).innerHTML='<input type="hidden" name="idVal" value="'+itemid+'"/><div class="smallInput4"><input type="number" step="0.01" name="qnt" class="QNTY" min="0" max="99999999" required></div>';
//                        row.insertCell(3).innerHTML='<div class="smallInput4"><input type="number" step="0.01" name="ppu" class="PPU" min="0" max="99999999"></div>';
                        row.insertCell(3).innerHTML='<input type="hidden" name="itemRate" value="'+rate+'"/>'+rate;
                        row.insertCell(4).innerHTML=unit;
                        row.insertCell(5).innerHTML='<input type=\"hidden\" value=null name=\"grossTotal\"/>';
                        row.insertCell(6).innerHTML='<input type="button" value="Delete" onclick="deleteRow(this)" style="border: 1px solid red; border-radius: 4px; cursor:pointer;background: #FFECEC;"/>';
                    }
//                    row.insertCell(1).innerHTML='<input type="hidden" name="D" value="'+rowCount+'"/>'+show;
//                    row.insertCell(2).innerHTML='';
                    else
                    {   n.style.borderBottom = 'none';
                        var it=row.insertCell(1);
                            it.innerHTML='<input type="hidden" name="id" value="'+itemid+'"/>'+show; 
                            it.style.borderBottom = 'none';
                        var jt=row.insertCell(2);
                            jt.innerHTML='';jt.style.borderBottom = 'none';
                            row.insertCell(3).style.borderBottom = 'none';
                            row.insertCell(4).style.borderBottom = 'none';
                            row.insertCell(5).style.borderBottom = 'none';
                        var kt=row.insertCell(6)
                            kt.innerHTML='<input type="button" value="Delete" onclick="deleteRow(this)" style="border: 1px solid red; border-radius: 4px; cursor:pointer;background: #FFECEC;"/>';
                            kt.style.borderBottom = 'none';
                        for(var i=1;i<ids.length-1;i++)
                        {
                            var rowCount1 = table.rows.length;
                            var row1 = table.insertRow(rowCount1);
                            row1.setAttribute("onclick","calDSRPrice()");

                            var one=row1.insertCell(0); 
                                one.style.borderTop = 'none';one.style.borderBottom = 'none';
                            var two=row1.insertCell(1);
                                two.innerHTML=""+items[i];
                                two.style.borderTop = 'none';two.style.borderBottom = 'none';
                            var three=row1.insertCell(2);
                                three.innerHTML='<input type="hidden" name="idVal" value="'+itemid+'.'+ids[i]+'"/><div class="smallInput4"><input type="number" step="0.01" name="qnt" class="QNTY" min="0" max="99999999" required></div>'; 
                                three.style.borderTop = 'none';three.style.borderBottom = 'none';
                            var ins= row1.insertCell(3);
//                                ins.innerHTML='<div class="smallInput4"><input type="number" step="0.01" name="ppu" class="PPU" min="0" max="99999999"></div>';
                                ins.innerHTML='<input type="hidden" name="itemRate" value="'+rates[i]+'"/>'+rates[i];
                                ins.style.borderTop = 'none';ins.style.borderBottom='none'; 
                            var five=row1.insertCell(4);
                                five.innerHTML=units[i];
                                five.style.borderTop = 'none';five.style.borderBottom = 'none';
                            var six= row1.insertCell(5);
                                six.innerHTML='<input type=\"hidden\" value=null name=\"grossTotal\"/>';
                                six.style.borderTop = 'none';six.style.borderBottom='none';
                            var four=row1.insertCell(6);
                                four.innerHTML="";
                                four.style.borderTop = 'none';four.style.borderBottom = 'none';
                        }
                            var rowCount12 = table.rows.length;
                            var row12 = table.insertRow(rowCount12);
                            row12.setAttribute("onclick","calDSRPrice()");

                            var one2=row12.insertCell(0);
                            one2.style.borderTop = 'none';
                            var two2=row12.insertCell(1);
                                two2.innerHTML=""+items[ids.length-1];two2.style.borderTop = 'none';
                            var three2=row12.insertCell(2);
                                three2.innerHTML='<input type="hidden" name="idVal" value="'+itemid+'.'+ids[ids.length-1]+'"/><div class="smallInput4"><input type="number" step="0.01" name="qnt" class="QNTY" min="0" max="99999999"  required></div>';
                                three2.style.borderTop = 'none';
                            var ins2= row12.insertCell(3);
//                                ins2.innerHTML='<div class="smallInput4"><input type="number" step="0.01" name="ppu" class="PPU" min="0" max="99999999"></div>';
                                ins2.innerHTML='<input type="hidden" name="itemRate" value="'+rates[ids.length-1]+'"/>'+rates[ids.length-1];
                                ins2.style.borderTop = 'none';
                            var five2=row12.insertCell(4);
                                five2.innerHTML=units[ids.length-1];
                                five2.style.borderTop = 'none';
                            var six2= row12.insertCell(5);
                                six2.innerHTML='<input type=\"hidden\" value=null name=\"grossTotal\"/>';
                                six2.style.borderTop = 'none';
                            var four2=row12.insertCell(6);
                                four2.innerHTML="";four2.style.borderTop = 'none';
                                
                            
                    } 
                    
                    $('#Dtable > tbody').stop().animate({
                      scrollTop: $("#Dtable > tbody")[0].scrollHeight
                    }, 1000);
                    $('#load2').hide();
                
                }
        };
       
        request.open("GET",url,true);  
        request.send();  
    }catch(e){alert("Unable to connect to server");} 
    
  
}


function deleteRow(o)
{
    document.getElementById("msg").innerHTML=null;
    var v=o.parentNode.parentNode.rowIndex;//alert(v);
    var table = document.getElementById("Dtable");
    do
    {
        table.deleteRow(v);
    }while(table.rows.length>1 && table.rows[v].cells[0].textContent=="")
        
         index();
}
function index()
{
    var table = document.getElementById("Dtable");  
//    var rowCount = table.rows.length;
    var tableRef = document.getElementById('Dtable').getElementsByTagName('tbody')[0];
    var rowCount = tableRef.rows.length; 
    var sno=0;
    for(var i=0;i<rowCount;i++)
    {
        if(tableRef.rows[i].cells[0].style.borderTop != 'none')
        {
            tableRef.rows[i].cells[0].innerHTML= ++sno;
        }
    }
    
    calAmountAfterDelete();
}

function calAmountAfterDelete()
{
    var tbl = document.getElementById("Dtable");
    var totalAmount=0.0;
    var totalAmountPrint=0.0;
    if(tbl.rows.length > 2)
    {
        for (var ii = 2; ii < tbl.rows.length; ii++) 
        {
               var tt= tbl.rows[ii].cells[5].textContent;
               if(parseFloat(tt))
               {
               totalAmount += parseFloat(tt);
               totalAmountPrint=totalAmount.toFixed(2);
                }
        }
        document.getElementById("showTotal").innerHTML='<input type="hidden" value="'+totalAmountPrint+'" name="totalAmount">'+totalAmountPrint;
    }
    else{
        document.getElementById("showTotal").innerHTML='<input type="hidden" value="'+totalAmountPrint+'" name="totalAmount">0';
    }
      estimatinLeadCharges();
}

function chk(val)
{
    document.getElementById("msg").innerHTML=null;
    var msg=document.getElementById("warning");
        msg.innerHTML=null;
        
    var ids=document.getElementsByName("id");
    for(var i=0;i<ids.length;i++)
    {
        if(val==ids[i].value )
        {
            $('#load2').hide();
            msg.innerHTML="<b><font color='red'>Item is added already.</font></b>";
            return false;
        }
    }
    return true;
}

function calDSRPrice()
{
    
    var tbl = document.getElementById("Dtable");
        if (tbl != null) 
        {
            for (var i = 0; i < tbl.rows.length; i++) 
            {
                for (var j = 0; j < tbl.rows[i].cells.length; j++)
                { 
                        tbl.rows[i].onkeyup = function () 
                    { 
                            getval(this);

                              var totalAmount=0.0;
                              var totalAmountPrint=0.0;
                              for (var ii = 2; ii < tbl.rows.length; ii++) 
                                {
                                       var tt= tbl.rows[ii].cells[5].textContent;
                                       if(parseFloat(tt))
                                       {
                                       totalAmount += parseFloat(tt);
                                       totalAmountPrint=totalAmount.toFixed(2);
                                        }
                                }
                                document.getElementById("showTotal").innerHTML='<input type="hidden" value="'+totalAmountPrint+'" name="totalAmount">'+totalAmountPrint;
                                estimatinLeadCharges();
                    };

                    tbl.rows[i].onclick = function () 
                    {
                            getval(this);

                              var totalAmount=0.0;
                              var totalAmountPrint=0.0;
                              for (var ii = 2; ii < tbl.rows.length; ii++) 
                                {
                                       var tt= tbl.rows[ii].cells[5].textContent;
                                       if(parseFloat(tt))
                                       {
                                       totalAmount += parseFloat(tt);
                                       totalAmountPrint=totalAmount.toFixed(2);
                                        }
                                }
                                document.getElementById("showTotal").innerHTML='<input type="hidden" value="'+totalAmountPrint+'" name="totalAmount">'+totalAmountPrint;
                                estimatinLeadCharges();
                    };
                }
            }
            
        }

        function getval(row) {
        var qnt=row.getElementsByClassName("QNTY");
        
        var p=row.cells[3].textContent;  
        var q=qnt[0].value;
        var grossTotal= p*q;
        grossTotal=grossTotal.toFixed(2);
        row.cells[5].innerHTML='<input type="hidden" value="'+grossTotal+'" name="grossTotal">'+grossTotal;
         }


}

function estimatinLeadCharges()
{
    var total=document.getElementsByName("totalAmount")[0].value; 
    var percent=document.getElementsByName("leadCharges");
    if(percent[0].checked)
    {
        percent=0.05;
    }
    else if(percent[1].checked)
    {
        percent=0.10;
    } 
    var percentAmount=percent*total;
    document.getElementById("percent").innerHTML='<input type="hidden" value="'+percentAmount.toFixed(2)+'" name="perLead">'+percentAmount.toFixed(2);
    var newTotal=Number(percentAmount)+Number(total);
    newTotal=newTotal.toFixed(2);
    document.getElementById("totalWithLead").innerHTML='<input type="hidden" value="'+newTotal+'" name="totalWithLead">'+newTotal;
    document.getElementById("EstAmt").value=newTotal;
}