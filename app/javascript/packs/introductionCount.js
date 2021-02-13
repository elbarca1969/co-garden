$(function(){
  let count = $("#introduction-input").text().length;
  if (count > 150) {
    $("#text-alert").slideDown(150);
    $("#introduction-input").css("color", "red");
  } else {
    $("#text-alert").slideUp(100);
    $("#introduction-input").css("color", "black");

  }
  $("#introduction-input").on("keyup", function(){
    let count = $(this).val().length;

    if (count > 150){
      $("#text-alert").slideDown(150);
      $("#introduction-input").css("color", "red");
    } else {
      $("#text-alert").slideUp(100);
      $("#introduction-input").css("color", "black");
    }
  });
});