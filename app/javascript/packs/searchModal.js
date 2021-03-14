$(function(){
  $(".search-icon").on('mouseenter', function(){
    $(".search-modal").show();
  });
  $(".search-icon").on('mouseleave', function(){
    $(".search-modal").hide();
  });
});