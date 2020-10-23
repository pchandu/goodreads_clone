import React from 'react';
import { withRouter } from 'react-router-dom';

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            rating: 5,
            body: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        // this.navigateToBookShow = this.navigateToBookShow.bind(this);
    }

    // navigateToBookShow() {
    //     const url = `/books/${this.props.match.params.bookId}`
    //     this.props.history.push(url);
    // }

    handleSubmit(e) {
        e.preventDefault();
        const review = Object.assign({}, this.state, {
            book_id: this.props.bookId
        });
        this.props.createReview(review).then(() => 
            this.setState({rating: 5, body: ''}));
    }

    update(property) {
        return e => this.setState({ [property]: e.currentTarget.value });
    }

    render() {
        return (
            <div className="review-form">
                <form>
                    <label>Rating</label>
                    <br />
                    <input
                        type="number"
                        value={this.state.rating}
                        onChange={this.update("rating")}
                    />
                    <br />

                    <label>Comment</label>
                    <br />

                    <textarea
                        cols="30"
                        rows="10"
                        value={this.state.body}
                        onChange={this.update("body")}
                    />
                    <br />
                </form>
                <button onClick={this.handleSubmit}>Submit</button>
            </div>
        );
    }
}

export default withRouter(Review);
