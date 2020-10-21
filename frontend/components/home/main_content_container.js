import React from 'react'
import { connect } from 'react-redux'
import { fetchBooks } from '../../utils/book_util';
import {fetchAllBooks} from '../../actions/book_action'
import MainContent from './main_content'


const mSTP = state => ({
    books: fetchAllBooks()
});

const mDTP = dispatch => ({
    fetchAllBooks: () => dispatch(fetchAllBooks())
});

export default connect(mSTP,mDTP)(MainContent)