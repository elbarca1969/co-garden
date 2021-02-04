$(function(){
  $(".user-icon").on('mouseenter', function(){
    $(".user-icon-menu").show();
  });
  $(".user-icon").on('mouseleave', function(){
    $(".user-icon-menu").hide();
  });
});