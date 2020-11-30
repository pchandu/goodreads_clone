import {
    RECEIVE_ALL_BOOKS, 
    RECEIVE_BOOK,
    DELETE_REVIEW
} from '../actions/book_action'

export default (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_BOOK:
            return action.payload.books;
        case RECEIVE_ALL_BOOKS:
            return action.payload;
        case DELETE_REVIEW:
            return action.payload;
        default:
            return state;
    }
};