import "bootstrap";
import Typed from 'typed.js';
import { initSortable } from '../plugins/init_sortable';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';

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


incrementStress();
incrementScore();
initSortable();
