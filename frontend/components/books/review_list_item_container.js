import { fetchBook } from '../../utils/book_util';
import ReviewListItem from './review_list_item'

const mapStateToProps = state => {
    return {
        reviews: state.entities.reviews
    };
};


export default connect(mapStateToProps)(Review);