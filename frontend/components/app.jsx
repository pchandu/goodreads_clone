import React from 'react'
import SignupContainer from './session/signup_container'
import { Route } from 'react-router-dom'
import NavbarContainer from './nav_bar/nav_bar_container'
import LoginContainer from './session/login_container'
import SplashHomeContainer from './home/splash_home_container'
import {AuthRoute} from '../utils/route_utils'

export default () => {
    return (
    <div>
        <Route path="/" component={NavbarContainer} />
        <Route exact path="/" component={SplashHomeContainer} />
        <AuthRoute path="/signup" component={SignupContainer} />
        <AuthRoute path="/login" component={LoginContainer} />
    </div>
    )
}