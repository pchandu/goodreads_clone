import React from 'react'


class Book extends React.Component {

    constructor(props) {
        super(props)
    }
    
    componentDidMount(){
        this.props.fetchBook(this.props.bookId);
    }

    render() {
        if (!this.props.books) return null
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
            </div>
        )
    }
}

export default Book