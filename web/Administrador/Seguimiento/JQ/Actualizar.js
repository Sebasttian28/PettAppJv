$(document).ready(function(){
$(".usu");
$(".clave");

$(".btn-info").click(function(){
   var btn =$(".btn-info").index(this);
   var no =$(".usu").eq(btn);
   var cl =$(".clave").eq(btn);
   
   var nomb=$(no).val();
   var clav=$(cl).val();
   
   $.ajax({
   url: "../../ServletModificarAdmin",
   data: {
    
    nom1:nomb,
    cla1:clav
    
    },
    success: function( result ) {
    $( "#weather-temp" ).html(result);
    }
});
}); 

});