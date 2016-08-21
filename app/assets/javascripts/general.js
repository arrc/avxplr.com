$(document).ready(function() {
  $("input[type=checkbox]:checked").click(function(){
    $(".checkbox > label").toggleClass('av_checkbox--simple_form');
    console.log('checked');
  });
});
