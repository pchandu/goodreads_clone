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
                    <img src={this.props.books.coverPhoto} />
                    <h1> {this.props.books.title} </h1>
                    <h1> {this.props.books.author} </h1>
                    <p> {this.props.books.description} </p>
                    <p> {this.props.books.isbn} </p>
            </div>
        )
    }
}

export default Book