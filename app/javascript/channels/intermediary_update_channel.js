import consumer from "./consumer";

const initIntermediaryUpdateCable = () => {
  const commentsContainer = document.getElementById('comments');
  if (commentsContainer) {
    const id = commentsContainer.dataset.intermediaryUpdateId;
    console.log(id);
    console.log(commentsContainer.dataset)
    consumer.subscriptions.create({ channel: "IntermediaryUpdateChannel", id: id }, {
      received(data) {
      commentsContainer.insertAdjacentHTML('beforeend', data) ; // called when data is broadcast in the cable
      },
    });
  }
}

export { initIntermediaryUpdateCable };