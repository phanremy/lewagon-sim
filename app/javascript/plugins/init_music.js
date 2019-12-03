const music = () => {
  const soundLink = document.getElementById('music').dataset.music;
  const sound = new Audio(soundLink);

    sound.volume = 0.5;
    sound.play();
  const soundStop = document.querySelector('#sound-stop')
  soundStop.addEventListener('click', (event) => {
    if (sound.paused) {
      sound.play();
      soundStop.innerHTML = "";
      soundStop.innerHTML = '<i class="fas fa-volume-up" style="font-size: 30px;"></i>';
      sound.volume = 0.5;
    } else {
      sound.pause();
      soundStop.innerHTML = "";
      soundStop.innerHTML = '<i class="fas fa-volume-mute" style="font-size: 30px;"></i>';
    }
  });
}

export { music }
