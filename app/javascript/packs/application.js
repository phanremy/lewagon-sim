import "bootstrap";

function incrementScore() {
  const new_score = document.querySelector("[data-score-display]");
  setInterval(function(){
    new_score.innerHTML = new_score.dataset.scoreDisplay;

  }, 50)
};

incrementScore();


