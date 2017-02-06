$(document).ready(function(){
    $('.chk').click(function(){

        if($(this).prop("checked") == true){

        	$(this).prop('value',true);

        }

        else if($(this).prop("checked") == false){

        	$(this).prop('value',false);

        }

    });
});	
