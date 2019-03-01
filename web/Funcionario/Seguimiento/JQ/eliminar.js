$(document).ready(function(){
            
        $('.nme');
        $(".eliminar").click(function(){
        
            var x=$('.elimin').index(this);
            var n=$('.nme').eq(x);
                        
            var nb=$(n).val();
            
$.ajax({
    
  url: "ServletActAdm",
  data: {
    nme: nb
    
  },
  
  success: function( result ) {
    $( "#weather-temp" ).html(+ result);
  }
  
});
});
});
