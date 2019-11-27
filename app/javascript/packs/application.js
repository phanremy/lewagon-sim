import "bootstrap";
import Typed from 'typed.js';
import { initSortable } from '../plugins/init_sortable';

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
      let increasedWidth = Number.parseInt(stress.dataset.stressDisplay - stress_impact.dataset.stressImpact);
        setInterval(function(){
          if (Number.parseInt(stress.dataset.stressDisplay) > Number.parseInt(stress.style.width)) {
            stress.style.width = increasedWidth + "%";
            increasedWidth ++;
          }
        }, 50 )

    }
};

incrementStress();
incrementScore();
initSortable();
