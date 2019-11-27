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

export { initTyped };
