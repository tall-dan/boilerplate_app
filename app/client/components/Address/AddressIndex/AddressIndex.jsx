import React from 'react';
import Address from '../Address'

const AddressIndex = ({addresses}) => {
  return addresses.map((address) => (
     <Address
       address={address}
       key={address.id}
     />
    )
  )
}

export default AddressIndex;
