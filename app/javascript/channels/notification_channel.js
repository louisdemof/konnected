import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationsContainer = document.getElementById('navbar-notification');
  if (notificationsContainer) {
    const id = notificationsContainer.dataset.userId;
    consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
      received(data) {
        console.log(data)
        notificationsContainer.insertAdjacentHTML('afterbegin', data) ;
     // notificationsContainer.insertAdjacentHTML('beforeend', data) ; // called when data is broadcast in the cable
      },
    });
  }
}

export { initNotificationCable };