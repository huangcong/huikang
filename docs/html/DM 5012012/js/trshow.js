// JavaScript Document
$(document).ready(function () {   
  
    $(".table tr").mouseover(function () {   
        $(this).addClass("highlight").mouseout(function () {   
            $(this).removeClass("highlight");   
        });   
    });   
});  