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
      let increasedWidth = (100 - Number.parseInt(stress.dataset.stressDisplay)) + Number.parseInt(stress_impact.dataset.stressImpact);
      const firstInterval = setInterval(function() {
        if (Number.parseInt(100 - (stress.dataset.stressDisplay)) < Number.parseInt(stress.style.width) ) {
          console.log(stress_impact);
          console.log('premier if');
          stress.style.width = increasedWidth + "%";
          increasedWidth --;
          if (Number.parseInt(stress.style.width) === 100 - Number.parseInt(stress.dataset.stressDisplay)) {
            console.log('if egality');
            clearInterval(firstInterval);
          }
        }
      }, 50 )
        // const interval = setInterval(function(){
        //   if ( 101 > Number.parseInt(stress.style.width)) {
        //     stress.style.width = increasedWidth + "%";
        //     increasedWidth --;
        //     if (Number.parseInt(stress.style.width) === 101 - Number.parseInt(stress.dataset.stressDisplay)) {
        //       clearInterval(interval);
        //     }
        //   }
        // }, 50 )
    } else {
      if (document.querySelector("#score-display")) {
        let increasedWidth = Number.parseInt(100 - stress.dataset.stressDisplay);
        stress.style.width = increasedWidth + "%";
      }
    }
};


function addKebabEnergy() {
  const energyAfterKebab = document.querySelector('[data-stress-joker]');
  if (energyAfterKebab) {
    const kebab = document.querySelector('.kebab-joker');
    console.log(energyAfterKebab.dataset.stressJoker);
    console.log(kebab);
    const stress = document.querySelector("[data-stress-display]");
    let newWidth = energyAfterKebab.dataset.stressJoker;
    kebab.addEventListener('click', (event) => {
      stress.style.width = newWidth + "%";
    })

  }
}

export { incrementStress };
export { incrementScore };
export { addKebabEnergy };
