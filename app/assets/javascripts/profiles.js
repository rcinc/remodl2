


var vendor = (function(){
  $('.vendor').on('change',function(){
    $('#company').toggle();
    $('#phone').toggle();
    $('#address').toggle();
    $('#lict').toggle();
    $('#licn').toggle();
  });
});


$(document).ready(vendor);
