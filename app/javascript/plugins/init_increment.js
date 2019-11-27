function incrementScore() {
  const score = document.querySelector("[data-score-display]");
  const score_impact = document.querySelector("[data-score-impact]")
    if (score_impact) {
      setInterval(function(){
        if (score.dataset.scoreDisplay - score.innerHTML > 0) {
          score.innerHTML ++;
        }
      }, 100 )
    }
};

function incrementStress() {
  const stress = document.querySelector("[data-stress-display]");
  const stress_impact = document.querySelector("[data-stress-impact]");
    if (stress_impact) {
      if (Number.parseInt(stress.dataset.stressDisplay) === 0) {
        let increasedWidth = 0;
        setInterval(function(){
          if (Number.parseInt(stress.dataset.stressDisplay) !== 0) {
            let increasedWidth = Number.parseInt(stress.dataset.stressDisplay - stress_impact.dataset.stressImpact);
            console.log(increasedWidth);
            stress.style.width = increasedWidth + "%";
            increasedWidth ++;
          } else {
            stress.style.width = 0;
          };
        }, 50 )
      } else {
        let increasedWidth = Number.parseInt(stress.dataset.stressDisplay - stress_impact.dataset.stressImpact);
          setInterval(function(){
            console.log(increasedWidth + "pas ok")
            if (Number.parseInt(stress.dataset.stressDisplay) >= Number.parseInt(stress.style.width)) {
                console.log(increasedWidth + "ok");
                stress.style.width = increasedWidth + "%";
                increasedWidth ++;
              }
            }, 50 )
        }
    }
};

export { incrementStress };
export { incrementScore };
