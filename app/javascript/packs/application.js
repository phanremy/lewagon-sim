import "bootstrap";
import { initSortable } from '../plugins/init_sortable';
import { initTyped } from '../plugins/init_typed';
import { initDisappearingImpact } from '../plugins/init_disappearing_impact';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';
import { initSwipe } from '../plugins/init_swipe';
import { initNextLinksHelper } from '../plugins/init_next_links_helper';
import { typedShow } from '../plugins/init_typed';
import { initGoodStyle } from '../plugins/init_apparition';
import { initGameoverScoreScrollUp } from '../plugins/init_gameover_score_scroll_up.js';
import { music } from '../plugins/init_music';
import { displayMultiply } from '../plugins/init_joker_kebab.js';
import { eatAKebab } from '../plugins/init_joker_kebab.js';

function decrementStress() {
      const stress = document.querySelector("[data-stress-display]");
      const stress_impact = document.querySelector("[data-stress-impact]");
      let increasedWidth = Number.parseInt(stress.dataset.stressDisplay - 20);
      if (stress_impact) {
        const interval = setInterval(function() {
          if (Number.parseInt(stressJoker.dataset.stressJoker) < Number.parseInt(stress.dataset.stressDisplay)) {
            console.log('walah');
            stress.style.width = increasedWidth + "%";
            // increasedWidth --;
            if (Number.parseInt(stressJoker.dataset.stressJoker) - Number.parseInt(stress.style.width) === 0)
              console.log('000');
              clearInterval(interval);
          }
        }, 50 )

  } else {
    stress.style.width = increasedWidth + "%";
  }
    }





  const kebab = document.querySelector(".kebab-joker");
  const stressJoker = document.querySelector("[data-stress-joker]");
  const stress = document.querySelector("[data-stress-display]");
  const stress_impact = document.querySelector("[data-stress-impact]");
  console.log(kebab);
  kebab.addEventListener('click', (event) => {
    decrementStress();
  });




if (document.querySelector(".kebab-joker")) {
  eatAKebab();
}


if (document.querySelector(".kebab-joker")) {
  displayMultiply();
};

if (document.querySelector("#typedShow")) {
  typedShow();
};


if (document.querySelector("#typed")) {
  initTyped();
};


if (document.querySelector('#sortable-img-card')) {
  initSortable();
};

if (document.querySelectorAll('.bounceInDown')) {
  initDisappearingImpact();
};

initSwipe();

if (document.querySelectorAll('.next-link')) {
  initNextLinksHelper();
};

if (document.querySelector('#goodStyle')) {
  initGoodStyle ();
};

if (document.querySelectorAll('.best-score-games')) {
  initGameoverScoreScrollUp();
};

incrementStress();


incrementScore();

if (document.getElementById("music")) {
  music();
}
