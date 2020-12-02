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
        const reviews = (!this.props.reviews) ? <div className="noReviews"/> :
            Object.values(this.props.reviews).map((review, i) => {
                // debugger
                    return (
                        <ReviewListItem 
                        review={review} 
                        number={i} 
                        key={review.id} 
                        deleteReview={this.props.deleteReview}
                        currentUserId={this.props.currentUserId}
                        updateReview={this.props.updateReview}/>
                    )
                });
        // debugger
        return (
            <div>
                <div className="book-show-container">
                    <img src={this.props.books.coverPhoto} className="book-show-cover-photo"/>
                    <div className="book-show-details">
                        <h1 className="book-show-title"> {this.props.books.title} </h1>
                        <h1 className="book-show-author"> by {this.props.books.author} </h1>
                        <p className="book-show-description"> {this.props.books.description} </p>
                        <p className="book-show-isbn"> ISBN: {this.props.books.isbn} </p>
                    </div>
                </div>
                <hr className="reviews-break" />
                <div className="reviews">
                    <ReviewContainer />
                    <div className="reviews-list">
                        {reviews}
                    </div>
                </div>
            </div>
        )
    }
}

export default Book