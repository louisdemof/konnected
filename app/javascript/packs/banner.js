import Typed  from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Today is the perfect day to launch your new project", "We hope you are having a wonderful day",
    "Why don't you start a new project?", "Believe you can and you're halfway there", "Today is the first day of the rest of your life",
    "Find the perfect freelance services for your business", "Get work done faster, with confidence", "Great web design without functionality is like a sports car with no engine.", "A designer knows he has achieved perfection not when there is nothing left to add, but when there is nothing left to take away"
    ,"Great web design without functionality is like a sports car with no engine."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
