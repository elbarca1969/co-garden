$(function(){
  $(".friends-icon").on('mouseenter', function(){
    $(".friends-modal").show();
  });
  $(".friends-icon").on('mouseleave', function(){
    $(".friends-modal").hide();
  });
});