import React, { Component } from 'react'
import PropTypes from 'prop-types'
import foo from 'helpers/helper'
import { connect } from 'react-redux';

const mapStateToProps = state => ({
  count: state.clickCount
})

class Hello extends Component {
  render() {
    return(
      <div>{foo()} {this.props.name}!</div>
    )
  }
}

Hello.defaultProps = {
  name: 'Daniel'
}

Hello.propTypes = {
  name: PropTypes.string,
  count: PropTypes.number.isRequired
}

export default connect(mapStateToProps)(Hello);
