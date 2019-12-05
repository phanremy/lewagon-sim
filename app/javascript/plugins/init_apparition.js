

function initGoodStyle() {

  const style = document.querySelector('#goodStyle')
  const score = document.querySelector("[data-score-display]")
  if (((Number.parseInt(score.dataset.scoreDisplay) > 1000) && ( Number.parseInt(score.dataset.scoreDisplay) < 1500)) || ((Number.parseInt(score.dataset.scoreDisplay) > 5000) && ( Number.parseInt(score.dataset.scoreDisplay) < 5500))) {
    style.classList.toggle("hidden")
    style.classList.toggle("shown")
      setTimeout(function() {
        style.classList.toggle("shown")
        style.classList.toggle("hidden")
        },2000 )
      }
};
export { initGoodStyle };
