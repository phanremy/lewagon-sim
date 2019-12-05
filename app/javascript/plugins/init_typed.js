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
        const arrowLeft = document.querySelector('.fadeOutLeft');
          setTimeout(function() {
            console.log('test');
            arrowLeft.classList.remove("fadeOutLeft");
            arrowLeft.classList.remove("no-swipe-arrow-left");
            arrowLeft.classList.remove("swipe-arrow");
            arrowLeft.classList.toggle("no-swipe-arrow-left");
            setTimeout(function() {
              arrowLeft.classList.toggle("swipe-arrow");
            },3000)
          }, 1000);
          setTimeout(function() {
            arrowLeft.classList.toggle("fadeOutLeft");
          }, 2000);

        const arrowRight = document.querySelector('.fadeOutRight');
        console.log(arrowRight);
          setTimeout(function() {
            arrowRight.classList.remove("fadeOutRight");
            arrowRight.classList.remove("no-swipe-arrow-right");
            arrowRight.classList.remove("swipe-arrow");
            arrowRight.classList.toggle("no-swipe-arrow-right");
            sleep
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
