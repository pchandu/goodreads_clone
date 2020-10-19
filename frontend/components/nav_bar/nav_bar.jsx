import React from 'react'
import {Link} from 'react-router-dom'


// export default ({ errors, currentUser, logout }) => {

class Navbar extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        }

        this.handleSubmit = this.handleSubmit.bind(this);
    }
    
    handleSubmit(e) {
        e.preventDefault();
        this.props.login(this.state)
            .then(() => this.props.history.push('/'))
    }

    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.currentTarget.value })
        }
    }

    render() {
        const display = this.props.currentUser ? (
            <div>
                <p>Hello {this.props.currentUser.username}!</p>
                <button onClick={this.props.logout}>Logout</button>
            </div>
        ) : (
                <div className='signup-and-login-buttons'>
                    <div className="login-form">
                        <form>
                            <label className="username"> 
                                <input
                                    placeholder="Username"
                                    type="text"
                                    value={this.state.username}
                                    onChange={this.handleInput('username')}
                                />
                            </label>

                            <label className="password"> 
                                <input
                                    placeholder="Password"
                                    type="password"
                                    value={this.state.password}
                                    onChange={this.handleInput('password')}
                                />
                            </label>
                            <button className="sign-in-button" onClick={this.handleSubmit}>Sign In</button>
                        </form>
                    </div>
                    {/* <Link className='signupbtn' to="/signup">Sign up</Link>
                    <Link className='loginbtn' to="/login">Log in</Link> */}
                </div>
            );
        
        return (
        <header className="nav-bar">
            <div className="logo">
                <h1 className="logo-history">History</h1>
                <h2 className="logo-reads">Reads</h2>
            </div>
                {display}
        </header>
        )
    }
}

export default Navbar

