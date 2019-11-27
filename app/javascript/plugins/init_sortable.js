import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('#card');
    if (list) {
      Sortable.create(list, {
        ghostClass: "ghost",
        animation: 150,
        onStart: function (event) { console.log(`onStart - Card Selected`); console.log(event) },
        onEnd: function (event) { console.log(`onEnd - Card Unselected`); console.log(event) },
      });
    }
};

export { initSortable };
