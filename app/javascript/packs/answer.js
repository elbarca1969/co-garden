$(function(){
  let button = $(".content-show-answer-open");
  button.on("click", function(){
    let answer = $(".content-show-answer-modal");
    if(answer.hasClass("open")){
      answer.removeClass("open");
      answer.slideUp(500);
      button.text("答えを見る")
    } else {
      answer.addClass("open");
      answer.slideDown(500);
      button.text("答えを隠す")
    }
  });
});