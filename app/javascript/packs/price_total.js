const initPriceTotal = () => {
  console.log("azekjlazkejlkazjeklajzklaelkj")
    let total = document.getElementById('total')
    if(total){
      let features_fieldset = document.querySelector('.project_features')
      let pages_fieldset = document.querySelector('.project_pages')
      let checkboxs = document.querySelectorAll("fieldset .form-check-input")
      let init_total = parseInt(total.dataset.total, 10)
      console.log(pages_fieldset)
      if(pages_fieldset)
      {
      pages_fieldset.addEventListener("change", (event) => {
      console.log(event)
      var result = init_total
      checkboxs.forEach(checkbox => {
        if (checkbox.checked === true) {
        const price = document.getElementById(checkbox.value).innerText;
        const amount = parseInt(price);
        console.log(amount)

        result = result + amount / 100;
        }
      })
      console.log(document.getElementById('total'))
      total.innerHTML = result;
      });
      }
      if(features_fieldset)
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
      total.innerHTML = result;
      });
      }
  }
};

export { initPriceTotal };
