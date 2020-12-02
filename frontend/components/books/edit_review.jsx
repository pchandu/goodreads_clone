import React from 'react';
import StarRatingComponent from 'react-star-rating-component';
import ReactModal from 'react-modal';

class ReviewEdit extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            rating: this.props.review.rating,
            body: this.props.review.body,
            showModal: false
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleOpenModal = this.handleOpenModal.bind(this);
        this.handleCloseModal = this.handleCloseModal.bind(this);
    }


    handleOpenModal() {
        this.setState({ showModal: true });
    }
    
    handleCloseModal() {
        this.setState({ showModal: false });
    }

    handleSubmit(e) {
        e.preventDefault();
        const review = Object.assign(
            {}, 
            {rating: this.state.rating, body: this.state.body}, 
            {book_id: this.props.bookId, author_id: this.props.currentUserId});
        debugger
        this.props.updateReview(this.props.review.id).then(() => 
            this.handleCloseModal());
    }

    update(property) {
        return e => this.setState({ [property]: e.currentTarget.value });
    }

    onStarClick(nextValue, prevValue, name) {
        this.setState({rating: nextValue});
    }

    render() {
        const form = 
        <div>
        <form className='review-edit-form-modal'>
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
                    cols="80"
                    rows="40"
                    value={this.state.body}
                    className="review-form-field"
                    onChange={this.update("body")}
                    placeholder="Enter your review"
                />
                <br />
            </form>
            <button onClick={this.handleSubmit}>Update Review</button>
            <button onClick={this.handleCloseModal}>Cancel</button>
        </div>
        return (
            <div className="review-edit-form">
                <button onClick={this.handleOpenModal}>Edit</button>
                <ReactModal isOpen={this.state.showModal} className="edit-form-modal">
                    {form}
                </ReactModal>
            </div>
        );
    }
}

export default (ReviewEdit);
