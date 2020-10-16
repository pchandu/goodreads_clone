import React from 'react'
import {Link} from 'react-router-dom'

export default ({ currentUser, logout }) => {
    const display = currentUser ? (
        <div>
            <p>Hello {currentUser.username}!</p>
            <button onClick={logout}>Logout</button>
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
    );
};

