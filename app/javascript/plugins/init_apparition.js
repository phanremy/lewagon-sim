

function initGoodStyle() {

  const style = document.querySelector('#goodStyle')
  const score = document.querySelector("[data-score-display]")
  console.log(typeof(score.dataset.scoreDisplay));
  console.log(style);
  if (Number.parseInt(score.dataset.scoreDisplay) > 1000 && ( Number.parseInt(score.dataset.scoreDisplay) < 1300)) {
    console.log('yo')
    style.classList.toggle("hidden")
    style.classList.toggle("shown")
      setTimeout(function() {
        style.classList.toggle("shown")
        style.classList.toggle("hidden")
        },2000 )
      }
};
export { initGoodStyle };
