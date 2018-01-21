import React from 'react';
import ReactDOM from 'react-dom'
import Form from 'components/shared/Form/Form'

document.addEventListener('DOMContentLoaded', () => {
  const inputs = JSON.parse(document.getElementById('address_form_data').dataset.addressForm)
  ReactDOM.render(
    <Form submitURL='/addresses'>
    { inputs.map((input) => (
      <input
        name={`address[${input.name}]`}
        key={input.name}
        type='text'
        placeholder={input.name}
      />
    ))}
    </Form>,
    document.body.appendChild(document.createElement('div')),
  )
})
