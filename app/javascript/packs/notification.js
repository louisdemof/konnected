import { csrfToken } from "@rails/ujs";

const markAsRead = () => {
  const bell = document.querySelector('#bell');
    bell.addEventListener('click', (event) => {
  // Callback
     fetch("/notifications/mark_as_read", {
      method: "POST",
      headers: {
        "X-CSRF-Token": csrfToken(),
        "Content-Type": "application/json"
      }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
    });
}
export {markAsRead}
