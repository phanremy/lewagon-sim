import "bootstrap";
import { initSortable } from '../plugins/init_sortable';
import { initTyped } from '../plugins/init_typed';
import { initDisappearingImpact } from '../plugins/init_disappearing_impact';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';
import { initSwipe } from '../plugins/init_swipe';

if (document.querySelector("#typed")) {
  initTyped();
}

if (document.querySelector("[data-stress-impact]")) {
  incrementStress();
}

if (document.querySelector("[data-score-display]")) {
  incrementScore();
}

if (document.querySelector('#sortable-img-card')) {
  initSortable();
}

if (document.querySelectorAll('.bounceInDown')) {
  initDisappearingImpact();
}

initSwipe();

