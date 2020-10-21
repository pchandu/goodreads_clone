import React from 'react'
import { connect } from 'react-redux'
import NavBar from './nav_bar'
import {login, logout, clearErrors} from '../../actions/session_action'

const mSTP = state => ({
    currentUser: state.entities.users[state.session.currentUserId], 
    errors: state.errors.login
});

const mDTP = dispatch => ({
    login: formUser => dispatch(login(formUser)),
    logout: () => dispatch(logout()), 
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mSTP,mDTP)(NavBar)