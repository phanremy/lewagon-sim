import "bootstrap";
import { initSortable } from '../plugins/init_sortable';
import { initTyped } from '../plugins/init_typed';
import { initDisappearingImpact } from '../plugins/init_disappearing_impact';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';
import { initSwipe } from '../plugins/init_swipe';

const arrowLeft = document.querySelector('.no-swipe-arrow-left');
  setTimeout(function() {
    arrowLeft.classList.toggle("no-swipe-arrow-left");
    arrowLeft.classList.toggle("swipe-arrow");
  }, 1000);
  setTimeout(function() {
    arrowLeft.classList.toggle("fadeOutLeft");
  }, 2000);



const arrowRight = document.querySelector('.no-swipe-arrow-right');
  setTimeout(function() {
    arrowRight.classList.toggle("no-swipe-arrow-right");
    arrowRight.classList.toggle("swipe-arrow");

  }, 1000);
  setTimeout(function() {
    arrowRight.classList.toggle("fadeOutRight");
  }, 2000);







initTyped();
incrementStress();
incrementScore();
initSortable();
initDisappearingImpact();
initSwipe();



