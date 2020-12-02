import React from 'react';
import {Link, } from 'react-router-dom';

class Search extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            string: '',
            results: [],
            focus: false
        }

        this.handleInput = this.handleInput.bind(this);
        this.searchBooks = this.searchBooks.bind(this);
        this.handleBlur = this.handleBlur.bind(this);
        this.handleKeyPress = this.handleKeyPress.bind(this);
    }

    handleInput(e){
        this.setState(
        {
            string: e.target.value.toLowerCase(), 
            focus: true,
        }, () => {
        this.searchBooks(this.state.string);
        })
    }

    componentWillUnmount(){
        this.setState({
        string: '',
        results: [],
        focus: false
        })
    }
   
    componentDidMount(){
        this.props.getBooks();
    }

    handleBlur(event){
        if (!event.currentTarget.contains(event.relatedTarget)){ 
        this.setState({focus: false});
        }
    }

    handleKeyPress(e){
        if(e.key === 'Enter'){
            let queryString = this.state.string.replace(" ", "_");
            // this.props.history.push(`/search/${queryString}`);
        }
    }    

    searchBooks(queryString){
        if(!queryString.length) {
            this.setState({results: []})
        } else {
            const results = [];
            Object.values(this.props.books).map((book) => {
                // const currentBook = book;
                const bookTitle = book.title.toLowerCase();
                if(
                queryString.includes(bookTitle) ||
                bookTitle.slice(0, queryString.length) === queryString
                ){
                    results.push(book);
                }
            })
            this.setState({results: results});
        }
    }

    render(){
        const searchResults =this.state.results.map((book, i) => {
            return (
                <Link key={i} to={`/books/${book.id}`} onClick={() => this.setState({focus: false})}>
                    <li>{book.title}</li>
                </Link>
            )
        })
        
        return (
            <div
            className={
            this.state.focus ? "search-container focus" : "search-container"}
            onBlur={this.handleBlur}>
                <input 
                className={this.state.focus ? "search-bar focus" : "search-bar"}
                type="text" 
                placeholder="Search books"
                onFocus={() => {this.props.getBooks(); this.setState({focus: true})}}
                onChange={this.handleInput}
                onKeyPress={this.handleKeyPress}>
                </input>
                <div className={this.state.focus ? "search-results focus" : "search-results"}>
                    <ul className="result-list">
                        {searchResults.length ? searchResults : ''}
                    </ul>
                </div>
            </div>
        )
    }
}

export default Search;