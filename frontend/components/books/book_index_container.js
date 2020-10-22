import React from 'react'
import { connect } from 'react-redux'
import { fetchBooks } from '../../utils/book_util';
import BookIndex from './book_index_container'


const mSTP = state => ({
    books: state.entities.books
});

const mDTP = dispatch => ({
    fetchBooks: () => dispatch(fetchBooks())
});

export default connect(mSTP,mDTP)(BookIndex)