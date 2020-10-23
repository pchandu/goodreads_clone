import React from 'react'
import ReviewContainer from './review_container'
import ReviewListItem from './review_list_item'
import { ProtectedRoute } from '../../utils/route_utils';
import { ReviewLink } from '../../utils/link_util';

class Book extends React.Component {

    constructor(props) {
        super(props)
    }
    
    componentDidMount(){
        this.props.fetchBook(this.props.bookId);
    }

    render() {
        if (!this.props.books) return null
        debugger
        const reviews = (!this.props.books) ? <div className="noReviews"/> :
            Object.values(this.props.books).map((book, i) => {
                    return (
                        <ReviewListItem review={book.reviews[i+1]} key={i} />
                    )
                });
        // debugger
        return (
            <div className="book-show-container">
                    <img src={this.props.books.coverPhoto} className="book-show-cover-photo"/>
                    <div className="book-show-details">
                        <h1 className="book-show-title"> {this.props.books.title} </h1>
                        <h1 className="book-show-author"> by {this.props.books.author} </h1>
                        <p className="book-show-description"> {this.props.books.description} </p>
                        <p className="book-show-isbn"> ISBN: {this.props.books.isbn} </p>
                    </div>
                <div className="reviews">
                    <ReviewContainer />
                    <div className="bookIndex">
                        {reviews}
                    </div>
                </div>
            </div>
        )
    }
}

export default Book