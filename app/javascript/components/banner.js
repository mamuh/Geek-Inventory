import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Geek Inventory"],
    typeSpeed: 100,
    startDelay: 200
  });
}

export { loadDynamicBannerText };
