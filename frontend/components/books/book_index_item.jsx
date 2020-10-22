import React from 'react'

class BookIndexItem extends React.Component {
    constructor(props) {
        super(props)
    }
    
    render() {
        return(
            <div className="book-index-container">
                <a href={`#/books/${this.props.book.id}`}>
                    <img src={this.props.book.coverPhoto} className="book-index-cover-photo" />
                </a>
                <div className="book-index-details">
                    <h1 className="book-index-title"> {this.props.book.title} </h1>
                    <h1 className="book-index-author"> by {this.props.book.author} </h1>
                    <p className="book-index-description"> {this.props.book.description} </p>
                    <p className="book-index-isbn"> ISBN: {this.props.book.isbn} </p>
                </div>
            </div>
        )
    }
}

export default BookIndexItem