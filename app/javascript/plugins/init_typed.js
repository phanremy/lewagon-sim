import Typed from 'typed.js';


const initTyped = () => {
  const typedInHome = document.querySelector("#typed");

  if (typedInHome) {
    var options = {
      stringsElement: '#typed-strings',
      typeSpeed: 40,
      loop: true,
      loopCount: Infinity,
    };


    var typed = new Typed('#typed', options);
  }
};

const typedShow = () => {
  const typedInShow = document.querySelector("#typedShow");

  if (typedInShow) {
    var options = {
      stringsElement: '#typed-strings-show',
      typeSpeed: 20,
      loop: false,
      loopCount: Infinity,
      onComplete: (self) => {
        const arrowLeft = document.querySelector('.no-swipe-arrow-left');
          setTimeout(function() {
            arrowLeft.classList.toggle("no-swipe-arrow-left");
            arrowLeft.classList.toggle("swipe-arrow");
          }, 1000);
          setTimeout(function() {
            arrowLeft.classList.toggle("fadeOutLeft");
          }, 2000);

        const arrowRight = document.querySelector('.no-swipe-arrow-right');
          setTimeout(function() {
            arrowRight.classList.toggle("no-swipe-arrow-right");
            arrowRight.classList.toggle("swipe-arrow");

          }, 1000);
          setTimeout(function() {
            arrowRight.classList.toggle("fadeOutRight");
          }, 2000);
      },
    };


    var typed = new Typed('#typedShow', options);
  }
};

export { initTyped };
export { typedShow };
