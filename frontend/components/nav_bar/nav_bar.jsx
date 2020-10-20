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
        this.handleDemo = this.handleDemo.bind(this);
        this.renderErrors = this.renderErrors.bind(this);
    }
    
    componentDidMount() {
        this.props.clearErrors();
    }

    handleDemo(e) {
        e.preventDefault();
        this.props.login({username: "test1", password: "password"})
            .then(() => this.props.history.push('/'))
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
    
    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`} className="login-errors">
                        {error}
                    </li>
                ))}
            </ul>
        )
    };

    render() {
        const display = this.props.currentUser ? (
            <div>
                <p>Hello {this.props.currentUser.username}!</p>
                <button onClick={this.props.logout}>Logout</button>
            </div>
        ) : (
                <div className='signup-and-login-buttons'>
                    <div>
                        <form className="login-form">
                            {this.renderErrors()}
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
                            <button className="demo-button" onClick={this.handleDemo}>Demo</button>
                        </form>
                    </div>

                    {/* <Link className='signupbtn' to="/signup">Sign up</Link>
                    <Link className='loginbtn' to="/login">Log in</Link> */}
                </div>
            );
        
        return (
        <header className="nav-bar">
            <Link to="/" className="logo">
                <h1 className="logo-history">History</h1>
                <h2 className="logo-reads">Reads</h2>
            </Link>
                {display}
        </header>
        )
    }
}

export default Navbar

