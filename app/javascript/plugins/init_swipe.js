import $ from 'jquery';

const initSwipe = () => {
  $(document).ready(function() {

    var animating = false;
    var cardsCounter = 0;
    var numOfCards = 6;
    var decisionVal = 80;
    var pullDeltaX = 0;
    var deg = 0;
    var $card, $cardChoice1ToLeft, $cardChoice2ToRight;

    function pullChange() {
      animating = true;
      deg = pullDeltaX / 10;
      $card.css("transform", "translateX("+ pullDeltaX +"px) rotate("+ deg +"deg)");

      var opacity = pullDeltaX / 100;
      var leftOpacity = (opacity >= 0) ? 0 : Math.abs(opacity);
      var rightOpacity = (opacity <= 0) ? 0 : opacity;
      $cardChoice1ToLeft.css("opacity", leftOpacity);
      $cardChoice2ToRight.css("opacity", rightOpacity);
    };

    function release() {
      if (pullDeltaX >= decisionVal) {
        $card.addClass("to-right");
        document.querySelector("[data-choice='choiceright']").click();
      } else if (pullDeltaX <= -decisionVal) {
        $card.addClass("to-left");
        document.querySelector("[data-choice='choiceleft']").click();
      }

      if (Math.abs(pullDeltaX) >= decisionVal) {
        $card.addClass("inactive");

        setTimeout(function() {
          $card.addClass("below").removeClass("inactive to-left to-right");
          cardsCounter++;
          if (cardsCounter === numOfCards) {
            cardsCounter = 0;
            $(".demo__card").removeClass("below");
          }
        }, 300);
      }

      if (Math.abs(pullDeltaX) < decisionVal) {
        $card.addClass("reset");
      }

      setTimeout(function() {
        $card.attr("style", "").removeClass("reset")
          .find(".demo__card__choice").attr("style", "");

        pullDeltaX = 0;
        animating = false;
      }, 300);
    };

    $(document).on("mousedown touchstart", ".demo__card:not(.inactive)", function(e) {
      if (animating) return;

      $card = $(this);
      $cardChoice1ToLeft = $(".demo__card__choice.m--left", $card);
      $cardChoice2ToRight = $(".demo__card__choice.m--right", $card);
      var startX =  e.pageX || e.originalEvent.touches[0].pageX;

      $(document).on("mousemove touchmove", function(e) {
        var x = e.pageX || e.originalEvent.touches[0].pageX;
        pullDeltaX = (x - startX);
        if (!pullDeltaX) return;
        pullChange();
      });

      $(document).on("mouseup touchend", function() {
        $(document).off("mousemove touchmove mouseup touchend");
        if (!pullDeltaX) return; // prevents from rapid click events
        release();
      });
    });

  });
};

export { initSwipe };
