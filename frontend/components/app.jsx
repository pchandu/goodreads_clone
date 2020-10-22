import React from 'react'
import { Route, Switch } from 'react-router-dom'
import {AuthRoute} from '../utils/route_utils'
import NavbarContainer from './nav_bar/nav_bar_container'
import SignupContainer from './session/signup_container'
import LoginContainer from './session/login_container'
import SplashHomeContainer from './home/splash_home_container'
import Book from './books/book_container'
import BookIndexContainer from './books/book_index_container'
import Footer from './home/footer'

export default () => {
    return (
    <div>
        <Route path="/" component={NavbarContainer} />
        <Switch>
            <AuthRoute path="/signup" component={SignupContainer} />
            <AuthRoute path="/login" component={LoginContainer} />
            <Route path="/books/:bookId" component={Book} />
            <Route exact path="/" component={SplashHomeContainer} />
            <Route exact path="/browse" component={BookIndexContainer} />
            <Route component={SplashHomeContainer} />
            {/* ^^ this could be a 404 page */}
        </Switch>
        <Route path="/" component={Footer} /> 
    </div>
    )
}