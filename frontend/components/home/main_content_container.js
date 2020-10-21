import React from 'react'
import { connect } from 'react-redux'
import {fetchAllBooks, fetchBook} from '../../actions/book_action'
import MainContent from './main_content'


const mSTP = state => ({
    books: state.entities.books
});

const mDTP = dispatch => ({
    fetchAllBooks: () => dispatch(fetchAllBooks()),
    fetchBook: (bookId) => dispatch(fetchBook(bookId))
});

export default connect(mSTP,mDTP)(MainContent)