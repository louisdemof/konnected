
const insertPages = () => {
    let features_fieldset = document.querySelector('.project_features')
    let pages_fieldset = document.querySelector('.project_pages')
    let checkboxs = document.querySelectorAll("fieldset .form-check-input")
    
    if(pages_fieldset)
    {
      pages_fieldset.addEventListener("change", (event) => {
      console.log(event);
      /* var result = init_total */
        var checkout = document.getElementById('cart2')
      console.log(checkout);

        checkout.innerHTML = ""
        checkboxs.forEach(checkbox => {
          if (checkbox.checked === true) {
          const dom_title = document.getElementById(checkbox.value)
          const price = dom_title.innerText;
          const name = dom_title.dataset.name
          checkout.insertAdjacentHTML('beforeend', `<li style="list-style: none;"> ${name} - ${price/100} euro </li>` );
          }
        })
      });
    } else if(features_fieldset)
    {
    features_fieldset.addEventListener("change", (event) => {
    var checkout = document.getElementById('feature-list')
    checkout.innerHTML = ""
    checkboxs.forEach(checkbox => {
      if (checkbox.checked === true) {
          const dom_title = document.getElementById(checkbox.value)
          const price = dom_title.innerText;
          const name = dom_title.dataset.name
          checkout.insertAdjacentHTML('beforeend', `<li style="list-style: none;"> ${name} - ${price/100} euro </li>` );
          }
        })
      });
    }

};

export { insertPages };
