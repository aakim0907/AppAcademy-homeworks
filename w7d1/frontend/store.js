import { createStore } from 'redux';
import reducer from './reducer';

const store = createStore(reducer);

export default store;

/*
Creating a store

- import createStore from redux
- import our reducer function from frontend/reducer.js

- call createStore, passing in the reducer function. Don't forget to export it!

The entry file requires our store and passes it as a prop to the Widget component. If you refresh the index.html page, you'll see a new webpack error: selectCurrency is undefined in Widgets. Let's fix this by creating an action creator.
*/
