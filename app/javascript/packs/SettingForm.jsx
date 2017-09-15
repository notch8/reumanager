import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import AutoField from 'uniforms-unstyled/AutoField'
import AutoForm from 'uniforms-unstyled/AutoForm';
import SettingFormSchema from "./schemas/SettingFormSchema"
import SubmitField from 'uniforms-bootstrap4/SubmitField'
import LongTextField from 'uniforms-unstyled/LongTextField'


export default class SettingForm extends React.Component {
  render() {
    return(

      <AutoForm className="row" id="" schema={SettingFormSchema} onSubmit={addPost} >

        <AutoField
          id="app_title" className="span9"
          name="app_title" placeholder="placeholder"
        />

        <AutoField grid="" id="university" className="span9 field" name="university" placeholder="placeholder"/>

        <AutoField id="department" className="span9" name="department" placeholder="placeholder"/>
        <AutoField id="department_postal_address" className="span9" name="department_postal_address" placeholder="placeholder" />
        <AutoField id="application_start" className="span9" name="application_start" placeholder="placeholder"/>
        <AutoField id="application_deadline" className="span9" name="application_deadline" placeholder="placeholder"/>
        <AutoField id="notification_date" className="span9" name="notification_date" placeholder="placeholder"/>
        <AutoField id="program_start_date" className="span9" name="program_start_date" placeholder="placeholder"/>
        <AutoField id="program_end_date" className="span9" name="program_end_date" placeholder="placeholder"/>
        <AutoField id="check_back_date" className="span9" name="check_back_date" placeholder="placeholder"/>
        <AutoField id="mail_from" className="span9" name="mail_from" placeholder="placeholder"/>
        <AutoField id="univeristy_url" className="span9" name="univeristy_url" placeholder="placeholder"/>
        <AutoField id="department_url" className="span9" name="department_url" placeholder="placeholder"/>
        <AutoField id="program_url" className="span9" name="program_url" placeholder="placeholder"/>
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

     let app_title = document.getElementById('app_title').value;
      let university = document.getElementById('university').value;
      let department = document.getElementById('department').value;
      let department_postal_address = document.getElementById('department_postal_address').value;
      let application_start = document.getElementById('application_start').value;
      let application_deadline = document.getElementById('application_deadline').value;
      let notification_date = document.getElementById('notification_date').value;
      let program_start_date = document.getElementById('program_start_date').value;
      let program_end_date = document.getElementById('program_end_date').value;
      let check_back_date = document.getElementById('check_back_date').value;
      let mail_from = document.getElementById('mail_from').value;
      let univeristy_url = document.getElementById('univeristy_url').value;
      let department_url = document.getElementById('department_url').value;
      let program_url = document.getElementById('program_url').value;


      fetch('http://fetch2.lvh.me:3000/snippets', {
        method: 'POST',
        headers: {
          'Accept': 'application/json, text/plain, */*', 'Content-type':'application/json'
        },
        body: JSON.stringify({program_url:program_url, department_url:department_url,univeristy_url:univeristy_url,mail_from:mail_from,check_back_date:check_back_date,program_end_date:program_end_date,program_start_date:program_start_date,notification_date:notification_date,application_deadline:application_deadline,application_start:application_start,department_postal_address:department_postal_address,department:department,university:university,app_title:app_title})

      })
      .then((res) => res.json())
      .then((data) => console.log(data))
    }
