import "jquery-bar-rating";
const initStarRating = () => {
  $('#review_score').barrating({
    theme: 'css-stars'
  });
  $('.review-score').barrating({
    theme: 'css-stars',
    readonly: true
  });

};

export { initStarRating };
