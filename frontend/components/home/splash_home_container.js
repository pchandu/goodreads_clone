import React from 'react'
import { connect } from 'react-redux'
import SplashHome from './splash_home'


const mSTP = state => ({
    currentUser: state.session.currentUser,
});

const mDTP = dispatch => ({
    logout: () => dispatch(logout())
});

export default connect(mSTP,mDTP)(SplashHome)