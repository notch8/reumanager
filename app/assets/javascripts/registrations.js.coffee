jQuery ->

  $("[data-behaviour~='datepicker']").datepicker({ "format": "yyyy-mm-dd" });

  myInput = "<div id='disability_container' class='input-append'><input id='applicant_disability_text' name='applicant[disability]' size='30' type='text' /><span class='add-on'>If you answered yes, please provide a brief description of your disability</span><button id='disability_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
  mySelect = '<select id="applicant_disability" name="applicant[disability]"><option value="">Prefer to not respond</option><option value="No">No</option><option value="Yes">Yes</option></select>'

  observe_select = (id) ->
    $(id).change( ->
      if ( $(this).val() == 'Yes' )
        $(this).after(myInput);
        $(this).remove();
        observe_input('#disability_cancel');
    )

  observe_input = (id) ->
    $(id).click( ->
      $('#disability_container').before(mySelect);
      $('#disability_container').remove();
      observe_select('#applicant_disability');
    );

  observe_select('#applicant_disability');
  observe_input('#disability_cancel');
