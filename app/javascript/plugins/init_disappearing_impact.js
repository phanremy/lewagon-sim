
const initDisappearingImpact = () => {

  const elements = document.querySelectorAll('.bounceInDown')
  if (elements) {
    elements.forEach((element) => {
      element.classList.add('animated', 'bounceInDown')
      element.addEventListener('animationend', function() {
        element.classList.toggle('animated', 'bounceInDown')
        element.classList.add('animated', 'bounceOutUp', "delay-1s");
      });
    });
  }
};

export { initDisappearingImpact };
