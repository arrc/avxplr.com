$(document).ready(function(){
  setTimeout(function(){
    $('.av_flash_messages').fadeOut("slow", function(){
      $(this).remove();
    })
  }, 1000);
});
