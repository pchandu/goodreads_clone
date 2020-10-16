import React from 'react'
import {Link} from 'react-router-dom'


// export default ({ errors, currentUser, logout }) => {

class Navbar extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        const display = this.props.currentUser ? (
            <div>
                <p>Hello {this.props.currentUser.username}!</p>
                <button onClick={this.props.logout}>Logout</button>
            </div>
        ) : (
                <div className='signup-and-login-buttons'>
                    <Link className='signupbtn' to="/signup">Sign up</Link>
                    <Link className='loginbtn' to="/login">Log in</Link>
                </div>
            );
        
        return (
        <header className="nav-bar">
            <h1 className="goodreads-logo">HistoryReads</h1>
            <div>
                {display}
            </div>
        </header>
        )
    }
}

export default Navbar

