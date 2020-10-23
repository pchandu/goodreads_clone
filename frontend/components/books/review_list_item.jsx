import React from 'react';

// const Review = ({ review, author }) => {
//     const { rating, body } = review

//     // componentDidMount
//     // as i loop through reviews, conditional 

//     return (
        
//     );
// };

class ReviewListItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render(){
        return(
            <ul className={`review${this.props.number}`}>
                <li className="review-list-item-rating">Rating: {this.props.review.rating}</li>
                <li className="review-list-item-body">Comment: {this.props.review.body}</li>
                {/* - by {this.props.review.author} */}
            </ul>
        )
    }
}

export default ReviewListItem