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

  myInput = "<div id='disability_container' class='input-append'><input id='applicant_disability_text' name='applicant[disability]' size='30' type='text' /><span class='add-on'>Please specify</span><button id='disability_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
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

  mentor1Input = "<div id='mentor1_container' class='input-append'><input id='applicant_mentor1_text' name='applicant[mentor1]' size='30' type='text' /><span class='add-on'> Please specify </span><button id='mentor1_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
  mentor1Select = '<select id="applicant_mentor1" name="applicant[mentor1]" class="form-control"><option value="Jeff Bowman">Jeff Bowman</option><option value="Dimitri Deheyn">Dimitri Deheyn</option><option value="Falk Feddersen">Falk Feddersen</option><option value="Sarah Gille">Sarah Gille</option><option value="Vicki Grassian">Vicki Grassian</option><option value="Jennifer Haase">Jennifer Haase</option><option value="Paul Jensen">Paul Jensen</option><option value="Lisa Levin">Lisa Levin</option><option value="Dan Lubin">Dan Lubin</option><option value="Richard Norris">Richard Norris</option><option value="Brian Palenik">Brian Palenik</option><option value="Lynn Russell">Lynn Russell</option><option value="Brice Semmens">Brice Semmens</option><option value="Ana Sirovic">Ana Sirovic</option><option value="Dave Stegman">Dave Stegman</option><option value="Lynne Talley">Lynne Talley</option><option value="Lisa Tauxe">Lisa Tauxe</option><option value="Jennifer Taylor">Jennifer Taylor</option><option value="Jane Willenbring">Jane Willenbring</option><option value="Other">Other</option></select>'

  mentor2Input = "<div id='mentor2_container' class='input-append'><input id='applicant_mentor2_text' name='applicant[mentor2]' size='30' type='text' /><span class='add-on'> Please specify </span><button id='mentor2_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
  mentor2Select = '<select id="applicant_mentor2" name="applicant[mentor2]" class="form-control"><option value="Jeff Bowman">Jeff Bowman</option><option value="Dimitri Deheyn">Dimitri Deheyn</option><option value="Falk Feddersen">Falk Feddersen</option><option value="Sarah Gille">Sarah Gille</option><option value="Vicki Grassian">Vicki Grassian</option><option value="Jennifer Haase">Jennifer Haase</option><option value="Paul Jensen">Paul Jensen</option><option value="Lisa Levin">Lisa Levin</option><option value="Dan Lubin">Dan Lubin</option><option value="Richard Norris">Richard Norris</option><option value="Brian Palenik">Brian Palenik</option><option value="Lynn Russell">Lynn Russell</option><option value="Brice Semmens">Brice Semmens</option><option value="Ana Sirovic">Ana Sirovic</option><option value="Dave Stegman">Dave Stegman</option><option value="Lynne Talley">Lynne Talley</option><option value="Lisa Tauxe">Lisa Tauxe</option><option value="Jennifer Taylor">Jennifer Taylor</option><option value="Jane Willenbring">Jane Willenbring</option><option value="Other">Other</option></select>'

  mentor3Input = "<div id='mentor3_container' class='input-append'><input id='applicant_mentor3_text' name='applicant[mentor3]' size='30' type='text' /><span class='add-on'> Please specify </span><button id='mentor3_cancel' class='btn btn-danger' type='button'>Cancel</button></div>"
  mentor3Select = '<select id="applicant_mentor3" name="applicant[mentor3]" class="form-control"><option value="Jeff Bowman">Jeff Bowman</option><option value="Dimitri Deheyn">Dimitri Deheyn</option><option value="Falk Feddersen">Falk Feddersen</option><option value="Sarah Gille">Sarah Gille</option><option value="Vicki Grassian">Vicki Grassian</option><option value="Jennifer Haase">Jennifer Haase</option><option value="Paul Jensen">Paul Jensen</option><option value="Lisa Levin">Lisa Levin</option><option value="Dan Lubin">Dan Lubin</option><option value="Richard Norris">Richard Norris</option><option value="Brian Palenik">Brian Palenik</option><option value="Lynn Russell">Lynn Russell</option><option value="Brice Semmens">Brice Semmens</option><option value="Ana Sirovic">Ana Sirovic</option><option value="Dave Stegman">Dave Stegman</option><option value="Lynne Talley">Lynne Talley</option><option value="Lisa Tauxe">Lisa Tauxe</option><option value="Jennifer Taylor">Jennifer Taylor</option><option value="Jane Willenbring">Jane Willenbring</option><option value="Other">Other</option></select>'

  mentor_select = (id, input, cancel) ->
    $(id).change( ->
      if ( $(this).val() == 'Other' )
        $(this).after(input);
        $(this).remove();
        mentor_input(cancel);
      );

  mentor_input = (id, container, select_text, mentor) ->
    $(id).click( ->
      $(container).before(select_text);
      $(container).remove();
      mentor_select(mentor);
    );

  mentor_select('#applicant_mentor1', mentor1Input, '#mentor1_cancel');
  mentor_input('#mentor1_cancel', '#mentor1_container', mentor1Select, '#applicant_mentor1');

  mentor_select('#applicant_mentor2', mentor2Input, '#mentor2_cancel');
  mentor_input('#mentor2_cancel', '#mentor2_container', mentor2Select, '#applicant_mentor2');

  mentor_select('#applicant_mentor3', mentor3Input, '#mentor3_cancel');
  mentor_input('#mentor3_cancel', '#mentor3_container', mentor3Select, '#applicant_mentor3');
