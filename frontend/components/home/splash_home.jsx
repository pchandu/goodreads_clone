import React from 'react'
import { Link } from 'react-router-dom'
import Signup from '../session/signup_container'
import MainContent from './main_content'
import Footer from './footer'

export default ({ currentUser}) => {

    return (
        <div>
            <div className="home-splash">
                <Signup />
                <div className="home-splash-text">
                    <h1> Learn the roots of our world and cultures </h1>
                </div>   
            </div>
            <div className="splash-break"></div>
            <MainContent />
            <Footer />
        </div>
    );
};

