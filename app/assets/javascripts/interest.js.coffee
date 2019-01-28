jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).parent('.add-container').before($(this).data('fields').replace(regexp, time))
    $("[data-behaviour~='datepicker']").datepicker({ "format": "yyyy-mm-dd" });
    event.preventDefault()

  $("[data-behaviour~='datepicker']").datepicker({ "format": "yyyy-mm-dd" });

  reuInput = "<div id='reu_container' class='input-append'><input id='applicant_interest_attributes_reu_experience_content' name='applicant[interest_attributes][reu_experience]' size='30' type='text' /><span class='add-on'>If Yes, please specify when and where.</span><button id='reu_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
  reuSelect = '<select id="applicant_interest_attributes_reu_experience" name="applicant[interest_attributes][reu_experience]"><option value="No">No</option><option value="Yes">Yes</option></select>'

  reu_select = (id) ->
    $(id).change( ->
      if ( $(this).val() == 'Yes' )
        $(this).after(reuInput);
        $(this).remove();
        reu_input('#reu_cancel');
    )

  reu_input = (id) ->
    $(id).click( ->
      $('#reu_container').before(reuSelect);
      $('#reu_container').remove();
      reu_select('#applicant_interest_attributes_reu_experience');
    );

  reu_select('#applicant_interest_attributes_reu_experience');
  reu_input('#reu_cancel');
