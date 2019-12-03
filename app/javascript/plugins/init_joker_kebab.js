function displayMultiply() {
  const kebab = document.querySelector('.kebab-joker');
  const multiply = document.querySelector('.score-multiply')
  kebab.addEventListener('click', (event) => {
    multiply.classList.toggle('score-multiply')
    multiply.classList.toggle('display-multiply');
  });
};

export { displayMultiply };
