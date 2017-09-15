import React from 'react';
import ReactDOM from 'react-dom';
import SimpleSchema from 'simpl-schema';



export default new SimpleSchema({
    app_title: {
        type: String,
        max: 50,
        optional: true
    },

    university: {
      type: String,
      optional: true

    },

    department: {
        type: String,
        max: 100,
        optional: true

    },

    department_postal_address: {
        type: String,
        optional: true

    },

    application_start: {
        type: Date,
        optional: true

    },

    application_deadline: {
      type: Date
    },

    notification_date: {
      type: Date
    },

    program_start_date: {
      type: Date
    },

    program_end_date: {
      type: Date
    },

    check_back_date: {
      type: Date
    },

    mail_from: {
      type: String
    },

    univeristy_url: {
      type: String
    },

    department_url: {
      type: String
    },

    program_url: {
      type: String
    }

})
