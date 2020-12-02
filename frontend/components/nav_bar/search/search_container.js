import {connect} from 'react-redux';
import {fetchAllBooks} from '../../../actions/book_action';
import {withRouter} from 'react-router-dom';
import Search from './search'

const mSTP = state => {
    return {
        books: state.entities.books
    }
}

const mDTP = dispatch => {
    return {
        getBooks: () => dispatch(fetchAllBooks())
    }
}

export default withRouter(connect(mSTP, mDTP)(Search));