import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import SnippetForm from './SnippetForm'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <SnippetForm />,
    document.getElementById('snippet-form').appendChild(document.createElement('div')),
  )}
)
