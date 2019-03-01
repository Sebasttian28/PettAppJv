$(document).ready(function(){
$(".cod");
$(".fec");
$(".lug");
$(".dur");
$(".des");

$(".btn-info").click(function(){
   var btn =$(".btn-info").index(this);
   var cod1 =$(".cod").eq(btn);
   var fec1 =$(".fec").eq(btn);
   var lug1 =$(".lug").eq(btn);
   var dur1 =$(".dur").eq(btn);
   var des1 =$(".des").eq(btn);
   
   var cod2=$(cod1).val();
   var fec2=$(fec1).val();
   var lug2=$(lug1).val();
   var dur2=$(dur1).val();
   var des2=$(des1).val();
   
   
   $.ajax({
   url: "../../ServletModificarEvento",
   data: {
    
    cod3:cod2,
    fec3:fec2,
    lug3:lug2,
    dur3:dur2,
    des3:des2
    
    },
    success: function( result ) {
    $( "#weather-temp" ).html(result);
    }
});
}); 

});