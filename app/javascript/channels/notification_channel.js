import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationsContainer = document.getElementById('navbar-notification');
  if (notificationsContainer) {
    const id = notificationsContainer.dataset.userId;
    consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
      received(data) {
        // select the notif bubble
        const notifCounter = document.querySelector('.badge')
        // Add one to the number
        let counter = parseInt(notifCounter.innerText) + 1
        notifCounter.innerText = `${counter}`

        notificationsContainer.insertAdjacentHTML('afterbegin', data) ;
     // notificationsContainer.insertAdjacentHTML('beforeend', data) ; // called when data is broadcast in the cable
      },
    });
  }
}

export { initNotificationCable };
