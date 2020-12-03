import { connect } from 'react-redux';
import {withRouter} from 'react-router-dom'
import { createReview } from '../../actions/book_action';
import Review from './create_review';

const mSTP = (state, ownProps) => ({
    bookId: ownProps.match.params.bookId,
    currentUserId: state.session.currentUserId,
    errors: state.errors.reviews 
});

const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review))
});

export default withRouter(connect(mSTP, mapDispatchToProps)(Review));