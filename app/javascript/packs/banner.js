import Typed  from 'typed.js';

const loadDynamicBannerText = () => {
  let doc =  document.querySelector('#banner-typed-text')
  if(doc){
  new Typed('#banner-typed-text', {
    strings: ["Today is the perfect day to launch your new project", "We hope you are having a wonderful day",
    "Why don't you start a new project?", "Believe you can and you're halfway there", "Today is the first day of the rest of your life",
    "Find the perfect freelance services for your business", "Get work done faster, with confidence",
    "Finally get started with the project of your dream", "Why should you wait to start your business",
    "If Internet Explorer is brave enough to ask to be your default browser, You are brave enough to ask that girl out"],
    typeSpeed: 50,
    loop: true
  });
  }
}

export { loadDynamicBannerText };
