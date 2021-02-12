$(function(){
  let profileIcon = $(".user-icon");
  profileIcon.on("click", function(){
    let menu = $(".user-icon-menu");
    if(menu.hasClass("show")){
      menu.removeClass("show");
      menu.hide(50);
      profileIcon.css("color", "black").css("background-color", "#FFFFFF")
    } else {
      menu.addClass("show");
      menu.slideDown(50);
      profileIcon.css("color", "#FFFFFF").css("background-color", "#333")
    }
  });
});