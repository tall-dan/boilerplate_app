import React from 'react';

const Address = (address) => {
  return Object.keys(address).map((prop) => (
    <input value={address[prop]} disabled/>
  ))
}

export default Address;
