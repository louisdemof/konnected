
const insertPages = () => {
  let form_element = document.querySelector(".edit_project")
  if (form_element) {
    let features_fieldset = form_element.querySelector('.project_features')
    let pages_fieldset = form_element.querySelector('.project_pages')
    let checkboxs = document.querySelectorAll("fieldset .form-check-input")
    let init_total = parseInt(document.getElementById('total').dataset.total, 10)

    if(pages_fieldset)
    {
      pages_fieldset.addEventListener("change", (event) => {
      console.log(event);
      /* var result = init_total */
        var checkout = document.getElementById('cart2')
        checkout.innerHTML = ""

        checkboxs.forEach(checkbox => {
          if (checkbox.checked === true) {
          const dom_title = document.getElementById(checkbox.value)
          const price = dom_title.innerText;
          const name = dom_title.dataset.name
          checkout.insertAdjacentHTML('beforeend', `<li> ${name} - ${price/100} euro </li>` );

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
          checkout.insertAdjacentHTML('beforeend', `<li> ${name} - ${price/100} euro </li>` );
      }
    })
    });
  }

  }
};

export { insertPages };
