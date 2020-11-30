import React from 'react'
import { connect } from 'react-redux'
import Book from './book'
import {fetchBook, deleteReview} from '../../actions/book_action'
// import {} from '../../utils/book_util'


const mSTP = (state, ownProps) => {
    // debugger
    return {
        books: state.entities.books[ownProps.match.params.bookId],
        bookId: ownProps.match.params.bookId,
        reviews: Object.values(state.entities.reviews).filter(review => review.book_id == ownProps.match.params.bookId)
    }
    // match allows us to look in the url and extract the wild card
};

const mDTP = dispatch => 
{
    return {
    fetchBook: (bookId) => dispatch(fetchBook(bookId)),
    deleteReview: (id) => dispatch(deleteReview(id))
}};

export default connect(mSTP,mDTP)(Book)