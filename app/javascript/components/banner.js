import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Geek Inventory", "Check out our items!"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
