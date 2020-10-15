import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import {} from './actions/session_action'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    let preloadedState = undefined;

    if(window.currentUser) {
        preloadedState = {
            session: {
                currentUser: window.currentUser
            }
        }
    };
    const store = configureStore(preloadedState);
    // const store = configureStore();
    window.store = store.getState;
    ReactDOM.render(<Root store={store} />, root);
})