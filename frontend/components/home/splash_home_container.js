import React from 'react'
import { connect } from 'react-redux'
import SplashHome from './splash_home'


const mSTP = state => ({
    currentUser: state.entities.users[state.session.currentUserId]
});

const mDTP = dispatch => ({
});

export default connect(mSTP,mDTP)(SplashHome)