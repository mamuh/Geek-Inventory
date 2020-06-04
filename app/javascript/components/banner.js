import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Get to know our products", "It's amazing!!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };