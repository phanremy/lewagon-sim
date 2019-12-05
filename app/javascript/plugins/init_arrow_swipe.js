const swipeLeftArrow = () => {
  const arrowLeft = document.querySelector('.no-swipe-arrow-left');
  if (arrowLeft) {
    setTimeout(function() {
      arrowLeft.classList.toggle("no-swipe-arrow-left");
      arrowLeft.classList.toggle("swipe-arrow");
      arrowLeft.classList.toggle("slow");
    }, 1000);

    setTimeout(function() {
      arrowLeft.classList.toggle("fadeOutLeft");
    }, 2000);

  }
};


const swipeRightArrow = () => {
  const arrowRight = document.querySelector('.no-swipe-arrow-right');
  if (arrowRight) {
    setTimeout(function() {
      arrowRight.classList.toggle("no-swipe-arrow-right");
      arrowRight.classList.toggle("swipe-arrow");
      arrowRight.classList.toggle("slow");
    }, 1000);

    setTimeout(function() {
    arrowRight.classList.toggle("fadeOutRight");
    }, 2000);
  }
};


export { swipeRightArrow };
export { swipeLeftArrow };
