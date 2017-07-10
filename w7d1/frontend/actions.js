const selectCurrency = (baseCurrency, rates) => {
  return {
    type: "SWITCH_CURRENCY",
    baseCurrency: baseCurrency,
    rates: rates
  };
};

export default selectCurrency;

/*
Creating an Action Creator

We need an action creator that will build the action object we pass to store.dispatch. Look in the Widget component again. You can see in the AJAX's success callback that we're using the selectCurrency function to create the action passed to the store's dispatch call. Time to write that action creator.

frontend/actions.js is where our app's action creators will live. Let's define and export a selectCurrency function that takes as arguments a baseCurrency string and a rates object. It returns an action (i.e. a POJO) with the following keys and values:

type: "SWITCH_CURRENCY"
baseCurrency
rates

Set it temporarily on the window (window.selectCurrency = selectCurrency) and make sure it's working properly in the console before moving on.
*/
