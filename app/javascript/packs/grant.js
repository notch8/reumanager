import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import GrantForm from './GrantForm'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <GrantForm />,
    document.getElementById('grant-form').appendChild(document.createElement('div')),
  )}
)
