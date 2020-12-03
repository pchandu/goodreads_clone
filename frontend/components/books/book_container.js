import React from 'react'
import { connect } from 'react-redux'
import Book from './book'
import {fetchBook, deleteReview, updateReview} from '../../actions/book_action'


const mSTP = (state, ownProps) => {
    return {
        books: state.entities.books[ownProps.match.params.bookId],
        bookId: ownProps.match.params.bookId,
        reviews: Object.values(state.entities.reviews).filter(review => review.book_id == ownProps.match.params.bookId), // match allows us to look in the url and extract the wild card
        currentUserId: state.session.currentUserId,
        errors: state.errors.reviews
    }
};

const mDTP = dispatch => 
{
    return {
    fetchBook: (bookId) => dispatch(fetchBook(bookId)),
    deleteReview: (id) => dispatch(deleteReview(id)),
    updateReview: (id) => dispatch(updateReview(id))
}};

export default connect(mSTP,mDTP)(Book)