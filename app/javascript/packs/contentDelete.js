$(function(){
  $(".content-delete-open").on("click", function(){
    $(".content-delete-modal").show();
  });
  $(".content-delete-cancel").on("click", function(){
    $(".content-delete-modal").hide();
  });
  $(".content-delete-modal").on("click", function(){
    $(".content-delete-modal").hide();
  });
});