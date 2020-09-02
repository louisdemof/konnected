import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Today is the perfect day to launch your new project", "We hope you are having a wonderful day",
    "Why don't you start a new project?", "Believe you can and you're halfway there", "Today is the first day of the rest of your life"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
