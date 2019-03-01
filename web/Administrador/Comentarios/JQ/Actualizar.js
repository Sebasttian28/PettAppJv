$(document).ready(function(){
$(".cod");
$(".fec");
$(".cue");
$(".ado");

$(".btn-info").click(function(){
   var btn =$(".btn-info").index(this);
   var cod1 =$(".cod").eq(btn);
   var fec1 =$(".fec").eq(btn);
   var men1 =$(".cue").eq(btn);
   var ado1 =$(".ado").eq(btn);
   
   var cod2=$(cod1).val();
   var fec2=$(fec1).val();
   var men2=$(men1).val();
   var ado2=$(ado1).val();
   
   
   $.ajax({
   url: "../../ServletModificarComentario",
   data: {
    
    cod3:cod2,
    fec3:fec2,
    men3:men2,
    ado3:ado2
    
    },
    success: function( result ) {
    $( "#weather-temp" ).html(result);
    }
});
}); 

});