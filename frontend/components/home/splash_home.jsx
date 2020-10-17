import React from 'react'
import { Link } from 'react-router-dom'
import Signup from '../session/signup_container'

export default ({ currentUser}) => {

    return (
        <div className="home-splash">
            <Signup />
            <h1 className="home-splash-text">
                Join a community of readers exploring history to learn the 
                roots of our world and culture
            </h1>    
        </div>
    );
};

