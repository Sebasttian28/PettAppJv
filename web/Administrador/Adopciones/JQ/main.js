$(document).ready(function(){
    $(".caja2").hide();
    $(".caja3").hide();
    $(".caja4").hide();
    $(".caja1").click(function(){
        var pos=$(".caja1").index(this);
        var asi=$(".caja2").eq(pos);
        var asisc=$(".caja3").eq(pos);
        asi.slideToggle(1000);
        asisc.slideToggle(1000);
         
});  
$(".caja3").click(function(){
    var posi=$(".caja3").index(this);
    var asis=$(".caja4").eq(posi);
    asis.slideToggle(1000);
 });
});