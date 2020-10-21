import React from 'react'
import { connect } from 'react-redux'
import BookIndex from './book_index'


const mSTP = state => ({
    books: {}
});

const mDTP = dispatch => ({
    fetchBooks: () => dispatch(fetchBook())
});

export default connect(mSTP,mDTP)(BookIndex)