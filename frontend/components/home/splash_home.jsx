import React from 'react'
import Signup from '../session/signup_container'
import MainContentContainer from './main_content_container'

export default ({ currentUser}) => {

    return (
        <div>
            <div className="home-splash">
                <Signup />
                <div className="home-splash-text">
                    <h1> Review the roots of our world and cultures </h1>
                </div>   
            </div>
            <div className="splash-break"></div>
            <MainContentContainer />
        </div>
    );
};

