import Book from '../components/books/book'
import * as BookUtil from '../utils/book_util'

export const RECEIVE_ALL_BOOKS = 'RECEIVE_ALL_BOOKS'
export const RECEIVE_BOOK = 'RECEIVE_BOOK'
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW'
export const DELETE_REVIEW = 'DELETE_REVIEW'
export const UPDATE_REVIEW = 'UPDATE_REVIEW'

export const receiveBook = payload => ({
    type: RECEIVE_BOOK, 
    payload
});

export const fetchBook = bookId => dispatch => BookUtil.fetchBook(bookId)
    .then(book => dispatch(receiveBook(book)));

export const receiveAllBooks = payload => ({
    type: RECEIVE_ALL_BOOKS, 
    payload
});

export const fetchAllBooks = () => dispatch => BookUtil.fetchBooks()
    .then((books) => {
        dispatch(receiveAllBooks(books))
    });

export const receiveReview = payload => ({
  type: RECEIVE_REVIEW,
  payload
});

export const createReview = review => dispatch => (
  BookUtil.createReview(review).then(review => (
    dispatch(receiveReview(review))
  ))
);

// export const removeReview = reviews => ({
//   type: DELETE_REVIEW, 
//   reviews
// })

export const deleteReview = reviewId => dispatch => {
  return (
    BookUtil.deleteReview(reviewId)
    .then((book) => dispatch(receiveBook(book)))
  )
}

export const updateReview = reviewId => dispatch => {
  debugger
  return(
    BookUtil.updateReview(reviewId)
    .then((book) => dispatch(receiveBook(book)))
  )
}
