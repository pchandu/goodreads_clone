import { connect } from 'react-redux';
import {withRouter} from 'react-router-dom'
import { createReview } from '../../actions/book_action';
import Review from './review';

const mSTP = (state, ownProps) => {
    return {bookId: ownProps.match.params.bookId}
};

const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review))
});

export default withRouter(connect(mSTP, mapDispatchToProps)(Review));