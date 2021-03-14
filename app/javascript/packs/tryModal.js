$(function(){
  $(".thumbtack-icon").on('mouseenter', function(){
    $(".try-modal").show();
  });
  $(".thumbtack-icon").on('mouseleave', function(){
    $(".try-modal").hide();
  });
});