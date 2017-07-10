const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_CURRENCY":
      return {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      };
    default:
      return state;
  }
};

export default reducer;

/*
Creating the reducer

reducer(current state, action) => returns an updated state based on the action type

For our currency widget, our state needs to keep track of two things:
a base currency and a collection of corresponding rates.
We need to pass some initial/default values in the case that state is not passed in.

We currently have defined a dummy reducer which always returns the initialState.
Now let's build it out by adding a switch statement. It's going to start by looking something like this:

Right now, we're returning the same state that is passed in.
What we want to do is see if the action.type matches something we expect (e.g. "SWITCH_CURRENCY")
and return an updated version of the state accordingly.
Add a case statement to check for this action type.
It should return a new object with the correct properties.
We can grab those off the action (i.e. action.rates and action.baseCurrency).

At this point, we have created a Redux store that dispatches actions and responds to dispatched actions.
Let's put the reducer on the window (window.reducer = reducer) and then
test it out in the browser console. Pass a test case to the reducer and
make sure it returns what we're expecting. For example,

let action = {
  type: "SWITCH_CURRENCY",
  baseCurrency: "test",
  rates: {"AUD": 3, "USD": 2, "JPY": 5}
};
reducer(null, action) //=> {baseCurrency: "test", rates: {"AUD": 3, "USD": 2, "JPY": 5}}
Perfect! Make sure to remove the reducer from the window once you're done testing it.

If you refresh the index.html page, you should have a working currency converter!
*/
