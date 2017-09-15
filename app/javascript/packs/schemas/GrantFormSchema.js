import React from 'react';
import ReactDOM from 'react-dom';
import SimpleSchema3 from 'simpl-schema';



export default new SimpleSchema3({
    grant_name: {
        type: String,
        max: 50,
        optional: true
    },

    subdomain: {
        type: String,
        max: 100,
        optional: true

    },

    contact_email: {
        type: String,
        optional: true

    },

    contact_password: {
        type: String,
        optional: true

    }



})
