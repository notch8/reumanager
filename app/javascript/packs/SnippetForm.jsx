import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import AutoField from 'uniforms-unstyled/AutoField'
import AutoForm from 'uniforms-unstyled/AutoForm';
import SnippetFormSchema from "./schemas/SnippetFormSchema"
import SubmitField from 'uniforms-bootstrap4/SubmitField'
import LongTextField from 'uniforms-unstyled/LongTextField'


export default class SnippetForm extends React.Component {
  render() {
    return(

      <AutoForm className="row" id="" schema={SnippetFormSchema} onSubmit={addPost} >

        <AutoField
          id="general_description" className="span9"
          name="general_description" placeholder="placeholder"
        />

        <LongTextField  grid="" id="highlights" className="span9 field" name="highlights" placeholder="placeholder"/>

        <AutoField id="eligibility_requirements" className="span9" name="eligibility_requirements" placeholder="placeholder"/>
        <AutoField id="application_information" className="span9" name="application_information" placeholder="placeholder" />
        <AutoField id="acknowledgment_of_funding_soruces" className="span9" name="acknowledgment_of_funding_soruces" placeholder="placeholder"/>
        <AutoField id="grant_id" className="span9" name="grant_id" placeholder="placeholder"/>
        <div className="span9">
          <div className="">

            <SubmitField inputClassName="btn btn-success" />
          </div>
        </div>

      </AutoForm>

    )
  }
};


function addPost(e){

     let description = document.getElementById('general_description').value;
      let highlights = document.getElementById('highlights').value;
      let requirements = document.getElementById('eligibility_requirements').value;
      let info = document.getElementById('application_information').value;
      let fund = document.getElementById('acknowledgment_of_funding_soruces').value;
      let grant = document.getElementById('grant_id').value;


      fetch('http://fetch2.lvh.me:3000/snippets', {
        method: 'POST',
        headers: {
          'Accept': 'application/json, text/plain, */*', 'Content-type':'application/json'
        },
        body: JSON.stringify({general_description:description, highlights:highlights, eligibility_requirements:requirements, application_information:info, acknowledgment_of_funding_soruces:fund, grant_id:grant})

      })
      .then((res) => res.json())
      .then((data) => console.log(data))
    }
