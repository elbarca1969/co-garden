$(function(){
  $(".home-icon").on('mouseenter', function(){
    $(".home-modal").show();
  });
  $(".home-icon").on('mouseleave', function(){
    $(".home-modal").hide();
  });
});