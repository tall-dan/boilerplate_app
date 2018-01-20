import React from 'react';
import ReactDOM from 'react-dom'
import AddressIndex from 'components/Address/AddressIndex/AddressIndex'

document.addEventListener('DOMContentLoaded', () => {
  const addresses = JSON.parse(document.getElementById('address_data').dataset.addresses)
  ReactDOM.render(
    <AddressIndex addresses={addresses} />,
    document.body.appendChild(document.createElement('div')),
  )
})

