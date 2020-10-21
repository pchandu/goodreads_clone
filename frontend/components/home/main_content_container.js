import React from 'react'
import { connect } from 'react-redux'
import MainContent from './main_content'


const mSTP = state => ({
    books: {}
});

const mDTP = dispatch => ({
    fetchBook: (bookId) => dispatch(fetchBook(bookId))
});

export default connect(mSTP,mDTP)(MainContent)