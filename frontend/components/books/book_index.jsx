import React from 'react'
import BookIndexItem from '../books/book_index_item'


class BookIndex extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchAllBooks();
    }

    render() {
        // if (!this.props.books) return null
        if (!this.props.books) return <div />
        const {books} = this.props;

        return (
            <div className="browse-container">
                {Object.values(books).map((book, i) => {
                    return (
                        <div className="book-index-item-container" key={i}>
                            <BookIndexItem book={book} />
                        </div>
                        )
                })}
            </div>
        )
    }
}

export default BookIndex