import {
  RECEIVE_REVIEWS_ERRORS
} from '../actions/book_action';

const reviewsErrorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEWS_ERRORS:
      return action.errors
    default:
      return state;
  }
}

export default reviewsErrorsReducer;