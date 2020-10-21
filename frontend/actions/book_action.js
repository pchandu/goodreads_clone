import * as BookUtil from '../utils/book_util'

export const RECEIVE_ALL_BOOKS = 'RECEIVE_ALL_BOOKS'
export const RECEIVE_BOOK = 'RECEIVE_BOOK'

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

export const fetchAllBooks = books => dispatch => BookUtil.fetchBooks(books)
    .then(books => dispatch(receiveAllBooks(books)));