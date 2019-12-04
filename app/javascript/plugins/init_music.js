const music = () => {
  const soundStop = document.querySelector('#sound-stop')
  const soundLink = document.getElementById('music').dataset.music;
  const sound = new Audio(soundLink);
    soundStop.innerHTML = '<i class="fas fa-volume-mute" style="font-size: 30px;"></i>';
    sound.volume = 0.5;
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
