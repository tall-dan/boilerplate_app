import React from 'react';
import Address from '../Address'

const AddressIndex = ({addresses}) => {
  return addresses.map((address) => (
     <Address { ...address }/>)
  )
}

export default AddressIndex;
