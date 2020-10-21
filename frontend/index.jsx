import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import * as BookActions from './actions/book_action'
// import {} from './actions/session_action'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    let preloadedState = undefined;

    if(window.currentUser) {
        preloadedState = {
            entities: {
                users: {
                    [window.currentUser.id]: window.currentUser
                }
            },
            session: {
                currentUserId: window.currentUser.id
            }
        }
    };
    const store = configureStore(preloadedState);
    // const store = configureStore();
    window.store = store;
    window.getState = store.getState;
    window.BookActions = BookActions;
    ReactDOM.render(<Root store={store} />, root);
})