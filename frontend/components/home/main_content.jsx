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

        const joseLiked = Object.entries(books).length > 0 ? 
            Object.values(books).map((book, i) => {
                {
                if(i < 3) 
                    return(<BookIndexItem book={book} key={i}/>)
                }
            })
            : "";

        const joseDiscovered = Object.entries(books).length > 0 ?
            Object.values(books).map((book, i) => {
                {
                    if (i === 4)
                        return (
                            <BookIndexItem book={book} key={i} />
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
                        <div className='discovery-examples'>
                        <div className="jose-example">
                            <div className='jose-liked'>
                                <h3>because Jose liked..</h3>
                                <div className="jose-liked-books">
                                    {joseLiked}
                                </div>
                            </div>
                            
                            <div className='jose-discovery'>
                                <h3>he discovered:</h3>
                                <div className="jose-discovered-books">
                    
                                </div>
                            </div>
                        </div>
                        
                        <div className="brandon-example">
                            <div className='brandon-liked'>
                                <h3>because Brandon liked..</h3>
                            </div>
                            
                            <div className='brandon-discovery'>
                                <h3>he discovered:</h3>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        )
    }
}

export default MainContent