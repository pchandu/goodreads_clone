import React from 'react'
import SignupContainer from './session/signup_container'
import { Route } from 'react-router-dom'
import NavbarContainer from './nav_bar/nav_bar_container'
import {AuthRoute} from '../utils/route_utils'

export default () => {
    return (
    <div>
        <Route path="/" component={NavbarContainer} />
        {/* <Route exact path="/" component={Home} /> */}
        <AuthRoute path="/signup" component={SignupContainer} />
        {/* <Route path="/login" component={SignupContainer} /> */}
    </div>
    )
}