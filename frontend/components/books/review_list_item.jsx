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
            <div className={`review${this.props.key}`}>
                <ul>
                    <li>Rating: {this.props.review.rating}</li>
                    <li>{this.props.review.body} - by {this.props.review.author.username}</li>
                </ul>
            </div>
        )
    }
}

export default ReviewListItem