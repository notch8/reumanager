import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import AutoField from 'uniforms-bootstrap4/AutoField'
import AutoForm from 'uniforms-bootstrap4/AutoForm';
import GrantFormSchema from "./schemas/GrantFormSchema"
import SubmitField from 'uniforms-bootstrap4/SubmitField'
import LongTextField from 'uniforms-unstyled/LongTextField'


export default class GrantForm extends React.Component {
  render() {
    return(

      <AutoForm className="row" id="" schema={GrantFormSchema} onSubmit={addPost} >

        
        <AutoField id="grant_name" className="span9" name="grant_name" placeholder="placeholder"/>
        <AutoField id="subdomain" className="span9" name="subdomain" placeholder="placeholder" />
        <AutoField id="contact_email" className="span9" name="contact_email" placeholder="placeholder"/>
        <AutoField id="contact_password" className="span9" name="contact_password" placeholder="placeholder"/>
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

     let grant_name = document.getElementById('grant_name').value;
      let subdomain = document.getElementById('subdomain').value;
      let contact_email = document.getElementById('contact_email').value;
      let contact_password = document.getElementById('contact_password').value;


      fetch('http://fetch2.lvh.me:3000/snippets', {
        method: 'POST',
        headers: {
          'Accept': 'application/json, text/plain, */*', 'Content-type':'application/json'
        },
        body: JSON.stringify({ grant_name:grant_name, subdomain:subdomain, contact_email:contact_email, contact_password:contact_password})

      })
      .then((res) => res.json())
      .then((data) => console.log(data))
    }
