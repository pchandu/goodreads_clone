import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from '../actions/session_action';
// we just currentUserId here
const _nullSession = {
  currentUserId: null
};

export default (state = _nullSession, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.user
      return {currentUserId: currentUser.id };
    case LOGOUT_CURRENT_USER:
      return _nullSession;
    default:
      return state;
  }
};