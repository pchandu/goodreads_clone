import {
  RECEIVE_BOOK,
  RECEIVE_REVIEW,
} from '../actions/book_action';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BOOK:
      return Object.assign({}, state, action.reviews);
    case RECEIVE_REVIEW:
      const { review } = action;
      return Object.assign({}, state, { [review.id]: review });
    default:
      return state;
  }
}

export default reviewsReducer;