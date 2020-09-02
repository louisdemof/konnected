import { csrfToken } from "@rails/ujs";

const markAsRead = () => {
  const bell = document.querySelector('#bell');
    if(bell){
    bell.addEventListener('click', (event) => {
  // Callback
      const notifCounter = document.querySelector('.badge')
        notifCounter.classList.remove("badge-danger")
        notifCounter.classList.add("badge-light")
      // Add one to the number
      notifCounter.innerText = 0
     setTimeout( () => { 

     fetch("/notifications/mark_as_read", {
      method: "POST",
      headers: {
        "X-CSRF-Token": csrfToken(),
        "Content-Type": "application/json"
      }
    })
      .then(response => response.json())
      .then((data) => {
        document.querySelectorAll('.unread-notification').forEach((notif_dom) =>  notif_dom.classList.add('read-notification'))
      });
    }
    , 2500 )
    });
    }
}
export {markAsRead};

