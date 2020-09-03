import Typed  from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Today is the perfect day to launch your new project", "We hope you are having a wonderful day",
    "Why don't you start a new project?", "Believe you can and you're halfway there", "Today is the first day of the rest of your life",
    "Find the perfect freelance services for your business", "Get work done faster, with confidence", "Great web design without functionality is like a sports car with no engine.", "A designer knows he has achieved perfection not when there is nothing left to add, but when there is nothing left to take away"
    ,"Great web design without functionality is like a sports car with no engine.","A user interface is like a joke. If you have to explain it, it’s not that good",
    "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.","Learning HTML and CSS is a lot more challenging than it used to be. Responsive web design adds more layers of complexity to design and develop websites."
    "If Internet Explorer is brave enough to ask to be your default browser, You are brave enough to ask that girl out",]
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
