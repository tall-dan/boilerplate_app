import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Authenticity from 'react-on-rails'

class Form extends Component {
  render() {
    return(
      <form action={this.props.submitURL} method={this.props.action}>
      <input type='hidden' name='authenticity_token' value={Authenticity.authenticityToken() || ''} />
      { this.props.children }
      <input type='submit' />
      </form>
    )
  }
}

Form.defaultProps = {
  action: 'POST'
}

export default Form;
