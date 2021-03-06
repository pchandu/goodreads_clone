import React from 'react'
import {Link, withRouter} from 'react-router-dom'
import SearchContainer from './search/search_container'

class Navbar extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        }

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleDemo = this.handleDemo.bind(this);
        this.handleBrowse = this.handleBrowse.bind(this);
        this.renderErrors = this.renderErrors.bind(this);
    }
    
    componentDidMount() {
        this.props.clearErrors();
    }

    handleDemo(e) {
        e.preventDefault();
        this.props.login({username: "Guest", password: "password"})
            .then(() => this.props.history.push('/browse'))
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.login(this.state)
            .then(() => this.props.history.push('/browse'))
    }

    handleBrowse(e) {
        e.preventDefault(); 
        this.props.history.push("/browse")
    }

    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.currentTarget.value })
        }
    }
    
    renderErrors() {
        if(this.props.errors){
            return (
                <ul className="login-errors">
                    {this.props.errors.map((error, i) => (
                        <li key={`error-${i}`}>
                            {error}
                        </li>
                    ))}
                </ul>
            )
        } else {
            return(
                <ul className="errors-placeholder"></ul>
            )
        }
    };

    render() {
        const display = this.props.currentUser ? (
            <div className="logged-in-navbar">
                <p>Hello {this.props.currentUser.username}!</p>
                <button onClick={this.props.logout} className="logout-button">Logout</button>
            </div>
        ) : (
                <div className='signup-and-login-buttons'>
                    <div className="login-form-container">
                        {this.renderErrors()} 
                        <form className="login-form">
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
                <button onClick={this.handleBrowse} className="browse-button">Browse</button>
            </Link>
                <SearchContainer />
                {display}
        </header>
        )
    }
}

export default withRouter(Navbar)

