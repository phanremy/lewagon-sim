// import "bootstrap";
// import { initSortable } from '../plugins/init_sortable';


// function incrementScore() {
//   const new_score = document.querySelector("[data-score-display]");
//   setInterval(function(){
//     new_score.innerHTML = new_score.dataset.scoreDisplay;

//   }, 50)
// };

// incrementScore();
// initSortable();


import Typed from 'typed.js';

var options = {
  stringsElement: '#typed-strings',
  typeSpeed: 40,
  loop: true,
  loopCount: Infinity,
};


var typed = new Typed('#typed', options);
