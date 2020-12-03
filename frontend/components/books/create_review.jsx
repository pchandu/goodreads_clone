import React from 'react';
import { withRouter } from 'react-router-dom';
import StarRatingComponent from 'react-star-rating-component';
// import StarRating from './star_rating'

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            rating: 0,
            body: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }


    handleSubmit(e) {
        e.preventDefault();
        const review = Object.assign(
            {}, 
            this.state, 
            {book_id: this.props.bookId, author_id: this.props.currentUserId}
        );

        this.props.createReview(review).then((res) => {
            debugger
            this.setState({rating: 0, body: ''})});
    }
    
    renderErrors() {
        return (
            <ul className="errors">
                {Object.values(this.props.errors).map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        )
    }

    update(property) {
        return e => this.setState({ [property]: e.currentTarget.value });
    }

    onStarClick(nextValue, prevValue, name) {
        this.setState({rating: nextValue});
    }
    render() {
        return (
            <div className="review-form">
                <form>
                    <div className='rating-container'>
                        <label>Rating:</label>
                        <StarRatingComponent 
                        className="star-rating" 
                        starCount={5}
                        value={this.state.rating}
                        onStarClick={this.onStarClick.bind(this)}
                        />
                    </div>
                    <label>Comment:</label>
                    <br />

                    <textarea
                        cols="30"
                        rows="10"
                        value={this.state.body}
                        className="review-form-field"
                        onChange={this.update("body")}
                        placeholder="Enter your review"
                    />
                    <br />
                </form>
                <button onClick={this.handleSubmit}>Submit Review</button>
            </div>
        );
    }
}

export default withRouter(Review);
