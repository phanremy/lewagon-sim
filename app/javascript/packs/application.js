import "bootstrap";
import { initSortable } from '../plugins/init_sortable';
import { initTyped } from '../plugins/init_typed';
import { initDisappearingImpact } from '../plugins/init_disappearing_impact';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';
import { initSwipe } from '../plugins/init_swipe';
import { initNextLinksHelper } from '../plugins/init_next_links_helper';
import { swipeRight } from '../plugins/init_swipe_indicator';
// import { swipeLeft } from '../plugins/init_swipe_indicator';
import { typedShow } from '../plugins/init_typed';
import { initGoodStyle } from '../plugins/init_apparition';
import { initGameoverScoreScrollUp } from '../plugins/init_gameover_score_scroll_up.js';
import { music } from '../plugins/init_music';

if (document.querySelector("#typedShow")) {
  typedShow();
}


if (document.querySelector("#typed")) {
  initTyped();
}


if (document.querySelector('#sortable-img-card')) {
  initSortable();
}

if (document.querySelectorAll('.bounceInDown')) {
  initDisappearingImpact();
}

initSwipe();

if (document.querySelectorAll('.next-link')) {
  initNextLinksHelper();
}



if (document.querySelector('#goodStyle')) {
  initGoodStyle ();
}


incrementStress();


incrementScore();


if (document.querySelectorAll('.best-score-games')) {
  initGameoverScoreScrollUp();
}

if (document.getElementById("music")) {
  music();
}
