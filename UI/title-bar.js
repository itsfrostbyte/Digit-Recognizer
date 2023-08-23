

console.log("electron object:", window.electron);

document.addEventListener('DOMContentLoaded', (event) => {
  document.getElementById('min-btn').addEventListener('click', () => {
    window.electron.minimize();
  });

  document.getElementById('max-btn').addEventListener('click', () => {
    window.electron.maximize();
  });

  document.getElementById('close-btn').addEventListener('click', () => {
    window.electron.close();
  });

  const eyeObject = document.getElementById('eyeSplash');
    
  eyeObject.addEventListener('animationend', () => {
      eyeObject.remove();
  });

  const overlay = document.getElementById('overlay');
  
  overlay.addEventListener('animationend', () => {
      overlay.remove();
  });
});
