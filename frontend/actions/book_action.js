import * as BookUtil from '../utils/book_util'

export const RECEIVE_ALL_BOOKS = 'RECEIVE_ALL_BOOKS'
export const RECEIVE_BOOK = 'RECEIVE_BOOK'
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW'
export const DELETE_REVIEW = 'DELETE_REVIEW'
export const UPDATE_REVIEW = 'UPDATE_REVIEW'
export const RECEIVE_REVIEWS_ERRORS = 'RECEIVE_REVIEWS_ERRORS';


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

export const receiveReviewErrors = errors => ({
  type: RECEIVE_REVIEWS_ERRORS,
  errors
});

export const createReview = review => dispatch => (
  BookUtil.createReview(review)
  .then(
    reviewObj => dispatch(receiveReview(reviewObj)), 
    err => dispatch(receiveReviewErrors(err.responseJSON))
  )
);

export const deleteReview = reviewId => dispatch => {
  return (
    BookUtil.deleteReview(reviewId)
    .then((book) => dispatch(receiveBook(book)))
  )
}

export const updateReview = reviewId => dispatch => {
  return(
    BookUtil.updateReview(reviewId)
    .then((book) => dispatch(receiveBook(book)))
  )
}