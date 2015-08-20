var kitchen = (function(){
    $(".kitch").on('change',function(){
        $('#kit').toggle();
        $('#light').toggle();
        $('#outlets').toggle();
        $('#sqft').toggle();
    });
});
var handy = (function(){
$(".handy").on('change',function(){
    $('#more').toggle();
  });
});
var bath = (function(){
$(".bath").on('change',function(){
    $('#bath').toggle();
    $('#light').toggle();
    $('#outlets').toggle();
    $('#sqft').toggle();
  });
});
var floor = (function(){
$(".floor").on('change',function(){
    $('#floor').toggle();
    $('#sqft').toggle();
  });
});
var fence = (function(){
  $('.fence').on('change',function (){
    $('#fence').toggle();
    $('#length').toggle();
  });
});
var ac = (function(){
  $('.ac').on('change', function(){
    $("#ac").toggle();
    $("#hsize").toggle();
  });
});
var roof = (function(){
  $('.roof').on('change',function(){
    $('#hsize').toggle();
    $("#more").toggle();
  });
});
var paint = (function(){
  $('.paint').on('change', function(){
    $('#sqft').toggle();
    $('#more').toggle();
  });
});
var landscaping = (function(){
  $('.land').on('change', function(){
    $('#more').toggle();
  });
});
var win = (function(){
  $('.win').on('change', function(){
    $('#window').toggle();
    $('#qty').toggle();
  });
});

$(document).ready(kitchen);
$(document).ready(handy);
$(document).ready(bath);
$(document).ready(floor);
$(document).ready(fence);
$(document).ready(ac);
$(document).ready(roof);
$(document).ready(paint);
$(document).ready(landscaping);
$(document).ready(win);
