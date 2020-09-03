const initPriceTotal = () => {
  let form_element = document.querySelector(".edit_project")
  if (form_element) {
    let features_fieldset = form_element.querySelector('.project_features')
    let pages_fieldset = form_element.querySelector('.project_pages')
    let checkboxs = document.querySelectorAll("fieldset .form-check-input")
    let init_total = parseInt(document.getElementById('total').dataset.total, 10)

    if(pages_fieldset)
    {
    pages_fieldset.addEventListener("change", (event) => {
    var result = init_total
    checkboxs.forEach(checkbox => {
      if (checkbox.checked === true) {
      const price = document.getElementById(checkbox.value).innerText;
      const amount = parseInt(price);
      result = result + amount / 100;
      }
    })
    document.getElementById('total').innerHTML = result;
    });
    } else if(features_fieldset)
    {
    features_fieldset.addEventListener("change", (event) => {
    var result = init_total
    checkboxs.forEach(checkbox => {
      if (checkbox.checked === true) {
      const price = document.getElementById(checkbox.value).innerText;
      const amount = parseInt(price);
      result = result + amount / 100;
      }
    })
    document.getElementById('total').innerHTML = result;
    });
  }

  }
};

export { initPriceTotal };
