import {
  RECEIVE_BOOK,
  RECEIVE_REVIEW,
} from '../actions/book_action';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEW:
      return Object.assign({}, state, action.payload);
    case RECEIVE_BOOK:
      return action.payload.reviews;
      // return Object.assign({}, state, action.payload.reviews);
    default:
      return state;
  }
}

export default reviewsReducer;