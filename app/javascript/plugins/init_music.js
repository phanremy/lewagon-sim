const music = () => {
  const soundLink = document.getElementById('music').dataset.music;
  const sound = new Audio(soundLink);

    sound.play();
}

export { music }
