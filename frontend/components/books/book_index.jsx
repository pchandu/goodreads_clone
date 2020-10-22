import React from 'react'
import BookContainer from './book_container'


class BookIndex extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchBooks();
    }

    render() {
        if (!this.props.books) return null
        
        return (
            <div className="bookIndex">
            </div>
        )
    }
}

export default BookIndex