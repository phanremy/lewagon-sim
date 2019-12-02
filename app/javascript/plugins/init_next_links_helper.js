
function initNextLinksHelper() {
  const nextLinks = document.querySelectorAll('.next-link');
  nextLinks.forEach((link) => {
    setTimeout(function() {
      link.classList.toggle("active");
    }, 2500)
  });
};

export { initNextLinksHelper };
