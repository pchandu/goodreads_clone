import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import {} from './actions/session_action'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    const store = configureStore();
    window.store = store.getState;
    // const store = createStore();
    ReactDOM.render(<Root store={store} />, root);
})