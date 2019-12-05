// function displayMultiply() {
//   const kebab = document.querySelector('.kebab-joker');
//   const multiply = document.querySelector('.score-multiply')
//   kebab.addEventListener('click', (event) => {
//     multiply.classList.toggle('score-multiply')
//     multiply.classList.toggle('display-multiply');
//     kebab.classList.add('kebab-joker-used');
//   });
// };

function eatAKebab() {
  const eatAKebab = document.querySelector('.opacity');
  const stressLvl = document.querySelector("[data-stress-display]")
  // console.log(stressLvl.dataset.stressDisplay);
  if (eatAKebab) {
    if (Number.parseInt(stressLvl.dataset.stressDisplay) >= 66) {
      const interval = setInterval(function() {
        eatAKebab.classList.toggle('opacity');
        eatAKebab.classList.toggle('no-opacity');
      }, 700);

    }
  }
}



// export { displayMultiply };
// export { eatAKebab };
