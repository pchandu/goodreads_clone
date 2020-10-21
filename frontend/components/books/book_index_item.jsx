import React from 'react'

class BookIndexItem extends React.Component {
    

    
    render() {
        return(
            <div>
                <a href={`#/books/${this.props.book.id}`}><img src={this.props.book.coverPhoto}></img></a>
            </div>
        )
    }
}

export default BookIndexItem