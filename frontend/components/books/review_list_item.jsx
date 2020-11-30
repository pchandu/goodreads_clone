import React from 'react';

class ReviewListItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render(){
        return(
            <ul className={'review-list-item'}>
                <li className="review-list-item-rating">Rating: {this.props.review.rating}</li>
                <li className="review-list-item-body">Comment: {this.props.review.body} - by {this.props.review.author}</li>
                <div className="delete-button">
                    {/* <i className="fas fa-trash"></i> */}
                    <button onClick={() => this.props.deleteReview(this.props.review.id)}>Delete</button>
                </div>
            </ul>
        )
    }
}

export default ReviewListItem