import { connect } from 'react-redux'
import { fetchAllBooks } from '../../actions/book_action';
import BookIndex from './book_index'


const mSTP = state => ({
    books: state.entities.books
});

const mDTP = dispatch => ({
    fetchAllBooks: () => dispatch(fetchAllBooks())
});

export default connect(mSTP,mDTP)(BookIndex)