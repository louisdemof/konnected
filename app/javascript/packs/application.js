// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

//function myFunction() {
  // Get the checkbox
  //var checkBox = document.getElementById("checkbox");
  // Get the output text
  //var text = document.getElementById("text");

  // If the checkbox is checked, display the output text
  //if (checkBox.checked == true){
    //text.style.display = "block";
  //} else {
    //text.style.display = "none";
  //}
//}


const checkboxs = document.querySelectorAll("fieldset .form-check-input")
const checkboxGroup =document.querySelector("fieldset")


checkboxGroup.addEventListener("change", (event) => {
  var result = 0
  checkboxs.forEach(checkbox => {
    if (checkbox.checked == true) {
    const price = document.getElementById(checkbox.value).innerText;
    const amount = parseInt(price);
    result = result + amount;
    }
  })
  document.getElementById('total').innerHTML = result/100;
});
