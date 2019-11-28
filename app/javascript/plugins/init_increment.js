function incrementScore() {
  const score = document.querySelector("[data-score-display]");
  const score_impact = document.querySelector("[data-score-impact]")
    if (score_impact) {
      setInterval(function(){
        if (score.dataset.scoreDisplay - score.innerHTML > 0) {
          score.innerHTML ++;
        }
      }, 10 )
    }
};

function incrementStress() {
  const stress = document.querySelector("[data-stress-display]");
  const stress_impact = document.querySelector("[data-stress-impact]");
    if (stress_impact) {
      if (Number.parseInt(stress.dataset.stressDisplay) === 0) {
        let increasedWidth = 0;
        stress.style.width = increasedWidth + "%";
        increasedWidth ++;
      } else {
        let increasedWidth = Number.parseInt(stress.dataset.stressDisplay - stress_impact.dataset.stressImpact);
        const interval = setInterval(function(){
          if (Number.parseInt(stress.dataset.stressDisplay) > Number.parseInt(stress.style.width)) {
            stress.style.width = increasedWidth + "%";
            increasedWidth ++;
            if (Number.parseInt(stress.dataset.stressDisplay) === Number.parseInt(stress.style.width)) {
              clearInterval(interval);
            }
          }
        }, 50 )
      }
    } else {
      if (document.querySelector("#event-card")) {
        let increasedWidth = Number.parseInt(stress.dataset.stressDisplay);
        stress.style.width = increasedWidth + "%";
    }

      }
};

export { incrementStress };
export { incrementScore };
