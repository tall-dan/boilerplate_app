// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore } from 'redux';
import Hello from 'components/Hello'
import clickCounter from 'reducers/clickCounter';

document.addEventListener('DOMContentLoaded', () => {
  const store = createStore(clickCounter);
  ReactDOM.render(
    <Provider store={store}>
      <Hello name="React" />
    </Provider>,
    document.body.appendChild(document.createElement('div')),
  )
})
