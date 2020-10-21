// we want username and email in the user slice of state

import { RECEIVE_CURRENT_USER } from '../actions/session_action';
// we just currentUserId here

export default (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.user
      return Object.assign({}, state, {[currentUser.id]: currentUser});
    default:
      return state;
  }
};