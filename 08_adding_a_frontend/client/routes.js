import React from 'react';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

// Pages
import Layout from 'pages/Layout';
import Main from 'pages/Main';
import Friend from 'pages/Friend';

export default () => {
  return (
    <Router history={hashHistory}>
      <Route path="/" component={Layout}>
        <IndexRoute component={Main}></IndexRoute>
        <Route path="/friends/:id" component={Friend}></Route>
      </Route>
    </Router>
  );
}
