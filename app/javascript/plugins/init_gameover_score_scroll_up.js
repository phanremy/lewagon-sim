import $ from 'jquery';

function initGameoverScoreScrollUp() {

  $.fn.infiniteScrollUp=function(){
    var self=this,kids=self.children()
    kids.slice(5).hide()
    setInterval(function(){
      kids.filter(':hidden').eq(0).fadeIn()
      kids.eq(0).fadeOut(function(){
        $(this).appendTo(self)
        kids=self.children()
      })
    },2000)
    return this
  }

  $(function(){
    setTimeout(function() {
      $('.best-score-games').infiniteScrollUp()
    },3000)
  })
};

export { initGameoverScoreScrollUp };
