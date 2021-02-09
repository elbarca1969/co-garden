$(function(){
  let profileIcon = $(".user-icon");
  profileIcon.on("click", function(){
    let menu = $(".user-icon-menu");
    if(menu.hasClass("show")){
      menu.removeClass("show");
      menu.hide(50);
      profileIcon.css("color", "black").css("background-color", "rgb(255, 255, 255)")
    } else {
      menu.addClass("show");
      menu.slideDown(50);
      profileIcon.css("color", "rgb(255, 255, 255)").css("background-color", "#333")
    }
  });
});