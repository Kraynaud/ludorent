
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Dynamise tes soirées", "Cherche les jeux les plus prés de chez toi"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
