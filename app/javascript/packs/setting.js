import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import SettingForm from './SettingForm'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <SettingForm />,
    document.getElementById('setting-form').appendChild(document.createElement('div')),
  )}
)
