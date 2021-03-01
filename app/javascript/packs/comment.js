$(function(){
  let button = $(".content-show-comment-open");
  button.on("click", function(){
    let comment = $(".content-show-comment-container");
    if(comment.hasClass("open")){
      comment.removeClass("open");
      comment.slideUp(100);
      button.text("コメントを見る")
    } else {
      comment.addClass("open");
      comment.slideDown(100);
      button.text("コメントを閉じる")
    }
  });
});