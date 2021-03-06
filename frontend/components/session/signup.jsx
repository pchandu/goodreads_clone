import React from 'react'

class Signup extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: ''
        };

        this.handleSubmit = this.handleSubmit.bind(this);
    }
    
    handleInput(type) {
        return (e) => {
            this.setState({[type]: e.currentTarget.value })
        }
    }

     componentDidMount() {
        document.addEventListener("click", this.props.clearErrors())
     }
     
    handleSubmit(e) {
        e.preventDefault();
        this.props.createNewUser(this.state)
        .then( () => this.props.history.push('/')) 
        //update the slash above to the profile show if you want to show that page instead
    }

    renderErrors() {
        if(this.props.errors){

            return (
                <ul className="errors">
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

    render () {

        if(this.props.currentUser){
            return(
                <div>

                </div>
            )
        } else {
        return(
            <div className='sign-up-component'>
                <div className="signup-errors-placeholder">
                    {this.renderErrors()}
                </div>
                <h2 className='signup-form-text'> New here? Create a free account! </h2>
                <form className="signup-form">
                    
                    <ul className='sign-up-form-fields'>
                        <li>
                            <input
                                placeholder="Username" 
                                type="text"
                                value={this.state.username}
                                onChange={this.handleInput('username')}
                            />
                        </li>
                        
                        <li> 
                            <input 
                                placeholder="Email"
                                type="email"
                                value={this.state.email}
                                onChange={this.handleInput('email')}
                            />
                        </li>
                        
                        <li>
                            <input
                                placeholder="Password"
                                type="password"
                                value={this.state.password}
                                onChange={this.handleInput('password')}
                            />
                        </li>
                        <li className='sign-up-button'>
                            <button onClick={this.handleSubmit}>Sign Up</button>
                        </li>
                    </ul>
                </form>
            </div>
        )
        }
    }
}


export default Signup