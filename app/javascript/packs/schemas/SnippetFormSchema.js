import React from 'react';
import ReactDOM from 'react-dom';
import SimpleSchema2 from 'simpl-schema';



export default new SimpleSchema2({
    general_description: {
        type: String,
        max: 50,
        optional: true
    },

    highlights: {
      type: String,
      optional: true

    },

    eligibility_requirements: {
        type: String,
        max: 100,
        optional: true

    },

    application_information: {
        type: String,
        optional: true

    },

    acknowledgment_of_funding_soruces: {
        type: String,
        optional: true

    },

    grant_id: {
      type: Number
    }

})
