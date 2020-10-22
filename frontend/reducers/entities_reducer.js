import { combineReducers } from 'redux';
import booksReducer from './books_reducer'
import reviewsReducer from './reviews_reducer';
import usersReducer from './users_reducer'

const entitiesReducer = combineReducers({
    users: usersReducer,
    reviews: reviewsReducer,
    books: booksReducer
})


export default entitiesReducer