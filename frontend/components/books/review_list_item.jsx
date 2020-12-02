import React from 'react';
import ReviewEdit from './edit_review'

class ReviewListItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render(){
        const deleteButton = (this.props.currentUserId === this.props.review.author_id) ? 
            <div className="review-delete-button">
                <button onClick={() => this.props.deleteReview(this.props.review.id)}>Delete</button>
            </div> :
            "";

        const editButton = (this.props.currentUserId === this.props.review.author_id) ? 
            <div className="review-edit-button">
                <ReviewEdit review={this.props.review} updateReview={this.props.updateReview}/> 
            </div> :
            "";
        
        return(
            <ul className={'review-list-item'}>
                <li className="review-list-item-rating">Rating: {this.props.review.rating}</li>
                <li className="review-list-item-body">Comment: {this.props.review.body} - by {this.props.review.author}</li>
                <div className='review-list-item-buttons'>
                    {editButton} {deleteButton} 
                </div>
            </ul>
        )
    }
}

export default ReviewListItem