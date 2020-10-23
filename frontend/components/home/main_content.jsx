import React from 'react'
import Book from '../books/book';
import BookIndexItem from '../books/book_index_item'

class MainContent extends React.Component {
    
    componentDidMount(){
        // debugger
        // this.props.fetchBook(1);
        // this.props.fetchBook(2);
        // this.props.fetchBook(3);
        // this.props.fetchBook(4);
        this.props.fetchAllBooks();
    }

    render(){
        const {books} = this.props
        var joseDiscovered;
        const splashBooks = Object.entries(books).length > 0 ? 
            Object.values(books).map((book, i) => {
                {
                    while(i > 5)
                    return (
                        <div className="book-index-item" key={i}>
                            <a href={`#/books/${book.id}`}>
                            <img src={book.coverPhoto} />
                            </a>
                        </div>
                    )
                }
            })
            : "";

        return (
            <div className='main-content'>
                <div className='main-content-head'>
                    
                    <div className='main-content-head-1'>
                        <h2>Deciding what to read next?</h2>
                            <p>You’re in the right place. Tell us what titles or genres you’ve enjoyed in the past, and we’ll give you surprisingly insightful recommendations.</p>
                    </div>
                    
                    <div className ='main-content-head-2'>
                        <h2>What are your friends reading?</h2>
                            <p>Chances are your friends are discussing their favorite (and least favorite) books on Goodreads.</p>
                    </div>
            </div>

            <div className="discovery-box">
                <h2>What will you discover?</h2>
                <div className="splash-book-covers">
                    {splashBooks}
                </div>
            </div>

            </div>
        )
    }
}

export default MainContent