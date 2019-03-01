$(document).ready(function(){
$(".razax").keyup(function(){
   var raz=$(".razax").val();
   
   $.ajax({
    
    url: "../../ServletFiltro",
    data: {
      nme: raz

    },

    success: function( result ) {
      $( ".tabla" ).html(+ result);
    }
  
    });
   
});

    $(".caja2").hide();
    $(".caja1").click(function(){
        var pos=$(".caja1").index(this);
        var asi=$(".caja2").eq(pos);
        asi.slideToggle(1000);
        });


});