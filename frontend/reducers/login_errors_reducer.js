import {
  RECEIVE_LOGIN_ERRORS,
  RECEIVE_CURRENT_USER,
  CLEAR_ERRORS
} from '../actions/session_action';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_LOGIN_ERRORS:
      return action.errors;
    case RECEIVE_CURRENT_USER:
      return [];
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};